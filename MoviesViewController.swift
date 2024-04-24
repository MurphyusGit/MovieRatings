
import UIKit

class MoviesViewController: UITableViewController, UISearchResultsUpdating, UISearchBarDelegate {
  
    var moviesDataSource = MoviesDataSource()
    var showsDataSource = ShowsDataSource()
    var movies: [Movie] = []
		var moviesandshows: [Movie] = []
    var importedMovies: [String] = []
		var searchController: UISearchController!
		var searchResults: [Movie] = []

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        // set defaults
        MemoryDataSource().updateMemoryFor(keys: ["filter", "search", "edit", "quote", "filtermode",
                                             "sortmode", "actorlist", "plot", "pressedmovie", "statlisttype"])
        moviesDataSource.modify(tableView: tableView)
        movies = moviesDataSource.movies
        moviesandshows = ((moviesDataSource.movies + showsDataSource.shows).sorted { $0.addedDate > $1.addedDate })
        
    }
	
		override func viewDidLoad() {
        self.tableView.rowHeight = 50
				self.title = "Movies (\(moviesDataSource.numberOfMovies()))"
				// set up searchbar
				searchController = UISearchController(searchResultsController: nil)
				tableView.tableHeaderView = searchController.searchBar
				searchController.searchResultsUpdater = self
				searchController.obscuresBackgroundDuringPresentation = false
				searchController.searchBar.placeholder = "Search movie, show, name, genre or word"
				searchController.hidesNavigationBarDuringPresentation = true
				searchController.searchBar.tintColor = UIColor.green
    }
  
    override func tableView(_ tableView: UITableView,
														numberOfRowsInSection section: Int) -> Int {
				if searchController.isActive {  // search active
						UserDefaults.standard.set(true, forKey: "search")
						return searchResults.count  // number of search results dictates number of table rows
				} else {  // search inactive
						return moviesDataSource.numberOfMovies()  // number of movies in list dictates number of table rows
				}
    }

    override func tableView(_ tableView: UITableView,
														cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell",
          for: indexPath)  as! MovieCell
				let movie = (searchController.isActive) ? searchResults[
					(indexPath as NSIndexPath).row] : moviesDataSource.movie(at: indexPath)  // fill table with search results or movie list
        cell.movie = movie
        return cell
    }
  
    override func tableView(_ tableView: UITableView,
      commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {  // delete gesture
            moviesDataSource.remove(at: indexPath, from: tableView)  // delete movie in list and remove table row
            moviesDataSource.modify(tableView: tableView)
        }
    }
	
		override func tableView(_ tableView: UITableView,
														canEditRowAt indexPath: IndexPath) -> Bool {
				if searchController.isActive || UserDefaults.standard.bool(forKey: "filter") {  // search or filter active
						return false  // prevent deletion of movies
				} else {
						return true
				}
		}
	
		func filterContentForSearchText(_ searchText: String) {  // filter movies for searched name, actors, genre or release year attributes
        searchResults = (!searchText.isEmpty) ? moviesandshows.filter({ (movie:Movie) -> Bool in
            let titleMatch = movie.title.range(of: searchText, options: NSString.CompareOptions.caseInsensitive)
            let detitleMatch = movie.detitle.range(of: searchText, options: NSString.CompareOptions.caseInsensitive)
            let actorMatch = movie.actors.range(of: searchText, options: NSString.CompareOptions.caseInsensitive)
            let directorMatch = movie.director.range(of: searchText, options: NSString.CompareOptions.caseInsensitive)
            let genreMatch = movie.genre.range(of: searchText, options: NSString.CompareOptions.caseInsensitive)
            let yearMatch = movie.releaseYear.range(of: searchText, options: NSString.CompareOptions.caseInsensitive)
            let oscarMatch = movie.oscars.range(of: searchText, options: NSString.CompareOptions.caseInsensitive)
            let addedMatch = movie.addedDate.range(of: searchText + " ", options: NSString.CompareOptions.caseInsensitive)
            let plotMatch = movie.plot.range(of: " " + searchText + " ", options: NSString.CompareOptions.caseInsensitive)
            let quoteMatch = movie.quotes.range(of: " " + searchText + " ", options: NSString.CompareOptions.caseInsensitive)
            let tagMatch = movie.tags.range(of: searchText)
            return titleMatch != nil || detitleMatch != nil || actorMatch != nil || directorMatch != nil || genreMatch != nil || yearMatch != nil || oscarMatch != nil || addedMatch != nil || plotMatch != nil || quoteMatch != nil || tagMatch != nil}
        ) : []
		}
		
		func updateSearchResults(for searchController: UISearchController) {
				if let searchText = searchController.searchBar.text {  // input text in searchbar
            filterContentForSearchText(searchText)  // execute search filter
            tableView.reloadData()  // refresh table to reflect search
            if searchController.isActive {
                MoviesDataSource().saver(source: searchResults, destination: "searchresults")  // save updated search results
            }
				}
		}
  
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        MemoryDataSource().updateMemoryFor(keys: ["statlisttype", "statlistitemindex", "pressedmovie"])
        UserDefaults.standard.set(getSelectedRowIndex(), forKey: "index")
        var selectedItem: Movie = Movie(title: "", detitle: "", actors: "", director: "",
                                        releaseYear: "", myrating: 0, webrating: 0.0, explicit: "",
                                        length: 0, oscars: "", genre: "",
                                        continuation: "", plot: "",  quotes: "", tags: "", viewcount: 0,
                                        addedDate: "")
        if searchController.isActive {
            selectedItem = searchResults[getSelectedRowIndex()]
        } else {
          selectedItem = MoviesDataSource().loader(source: "movies")[getSelectedRowIndex()]
          MemoryDataSource().updateMemoryFor(keys: ["search", "searchquote"])
        }
      let movieorshowid = (selectedItem.title.contains("(")) ? "ShowDetails" : "MovieDetails"
            self.performSegue(withIdentifier: movieorshowid, sender: MoviesViewController())
    }
  
    func getSelectedRowIndex() -> Int {
        let indexPath : IndexPath = self.tableView.indexPathForSelectedRow!
        return indexPath.row
    }
}

extension MoviesViewController {
	
		@IBAction func unwind(_ segue: UIStoryboardSegue) {  // from Options, MovieAdder
        MemoryDataSource().updateMemoryFor(keys: ["edit", "actorlist", "plot", "quotes"])
		}
  
    @IBAction func ReturnFromPhotoName(_ segue: UIStoryboardSegue) {

    }

    @IBAction func saveMovieDetail(_ segue: UIStoryboardSegue) {
      print("movie savedetail")
				if let movieAdderViewController = segue.source as? MovieAdderViewController,
					 let movie = movieAdderViewController.movie {
						if UserDefaults.standard.bool(forKey: "edit") {  // EDIT
								moviesDataSource.edit(movie: movie, tableView: tableView)
								moviesDataSource.modify(tableView: tableView)
								UserDefaults.standard.set(false, forKey: "edit")
						} else {  // ADD
								moviesDataSource.append(movie: movie, to: tableView)
								moviesDataSource.modify(tableView: tableView)
								self.title = "Movies (\(moviesDataSource.numberOfMovies()))"
						}
            MemoryDataSource().updateMemoryFor(keys: ["movieadded", "actorlist", "plot", "quotes"])
				}
    }
  
    @IBAction func saveOptions(_ segue: UIStoryboardSegue) {
				moviesDataSource.modify(tableView: tableView)
				self.title = "Movies (\(moviesDataSource.numberOfMovies()))"
    }

		@IBAction func addImportedMovies(_ segue: UIStoryboardSegue) {
        if let importViewController = segue.source as? ImportViewController,
           let importedMovielist = importViewController.movies {
            importedMovies = importedMovielist.reversed()
            if importedMovies != [] {
                self.moviesDataSource.modify(tableView: tableView)
                self.parent?.dismiss(animated: true, completion: nil)
                let alertView = UIAlertController(title: "Please wait", message: "Data is being processed...", preferredStyle: .alert)
                let progressView = UIProgressView(progressViewStyle: .default)
                alertView.view.addSubview(progressView)
                present(alertView, animated: true, completion: { [self] in
                    DispatchQueue.main.async { [self] in
                        progressView.progress = 0.0
                        for (i, movie) in importedMovies.enumerated() {
                            progressView.progress = Float(i+1)/Float(importedMovies.count)
                            print(progressView.progress)
                            let details = movie.components(separatedBy: "/")
                          print(details[0])
                          let movie = Movie(title: details[0], detitle: details[1], actors: details[2], director: details[3],
                                            releaseYear: details[4], myrating: Int(details[5])!, webrating: Float(details[6]) ?? 0.0, explicit: details[7], length: Int(details [8])!, oscars: details[9], genre: details[10],
                                            continuation: details[11], plot: details[12],  quotes: details[13], tags: details[14],
                                            viewcount: Int(details[15])!, addedDate: details[16])
                            moviesDataSource.append(movie: movie, to: tableView)
                        }
                        self.moviesDataSource.modify(tableView: tableView)
                        title = "Movies (\(moviesDataSource.numberOfMovies()))"
                        alertView.dismiss(animated: true, completion: nil)
                        UserDefaults.standard.set(true, forKey: "movieadded")
                        importedMovies = []
                    }
                })
            }
        }
		}
	
		@IBAction func resetData() {
        let defaults = UserDefaults.standard
        defaults.dictionaryRepresentation().keys.forEach(defaults.removeObject(forKey:))
        let moviesDataSource = MoviesDataSource()
        moviesDataSource.modify(tableView: tableView)
        self.title = "Movies (\(moviesDataSource.numberOfMovies()))"
		}
}

