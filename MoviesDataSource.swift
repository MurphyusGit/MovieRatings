
import UIKit

class MoviesDataSource: NSObject {

    var movies: [Movie]
    var mostoscarmovies: [Movie]
    var mostwatchedmovies: [Movie]

    override init() {
				movies = []
        mostoscarmovies = []
        mostwatchedmovies = []
				// load unmodified movie list
				if let data = UserDefaults.standard.data(forKey: "movies") {
						do {
								let decoder = JSONDecoder()
								let addedMovies = try decoder.decode([Movie].self, from: data)
								movies = addedMovies
						} catch {
								print("MDSline18Unable to Decode (\(error))")
						}
				}
        // load oscarmovie list
        if let data = UserDefaults.standard.data(forKey: "mostoscarmoviestatlist") {
            do {
                let decoder = JSONDecoder()
                let mostoscarmovielist = try decoder.decode([Movie].self, from: data)
                mostoscarmovies = mostoscarmovielist
            } catch {
                print("MDSline18Unable to Decode (\(error))")
            }
        }
        // load mostwatchedmovie list
        if let data = UserDefaults.standard.data(forKey: "mostwatchedmoviestatlist") {
            do {
                let decoder = JSONDecoder()
                let mostwatchedmovielist = try decoder.decode([Movie].self, from: data)
                mostwatchedmovies = mostwatchedmovielist
            } catch {
                print("MDSline18Unable to Decode (\(error))")
            }
        }
    }
	
    func numberOfMovies() -> Int {
        movies.count
    }
  
    func numberOfMostoscarmovies() -> Int {
        mostoscarmovies.count
    }
  
    func numberOfMostwatchedmovies() -> Int {
        mostwatchedmovies.count
    }
	
    func edit(movie: Movie, tableView: UITableView) {
        movies = loader(source: "oldmovies")
        for (i, m) in movies.enumerated() {
            if m.addedDate == movie.addedDate {
                movies[i] = movie  // overwrite movie in list
                break
            }
        }
				saver(source: movies, destination: "movies")  // save edited movie list
				saver(source: movies, destination: "oldmovies")  // use edited movie list as backup
				tableView.reloadData()  // refresh table to reflect change
		}

    func append(movie: Movie, to tableView: UITableView) {
        saver(source: movies, destination: "oldmovies2")
        saver(source: loader(source: "shows"), destination: "oldshows2")
        movies.insert(movie, at: 0)  // add new movie at first position in list
        movies = movies.sorted { $0.addedDate > $1.addedDate }
        saver(source: movies, destination: "movies")  // save extended movie list
        tableView.insertRows(at: [IndexPath(row: 0, section: 0)], with: .automatic)  // add table row to show new movie
				saver(source: movies, destination: "oldmovies")  // use extended movie list as backup
        tableView.scrollToRow(at: IndexPath(row: 0, section: 0), at: .top, animated: true)  // go back to top
    }
    
    func remove(at indexPath: IndexPath, from tableView: UITableView) {
        movies.remove(at: indexPath.row)  // delete movie at given position in list
        saver(source: movies, destination: "movies")  // save shortened movie list
				saver(source: movies, destination: "oldmovies")  // use shortened movie list as backup
        tableView.deleteRows(at: [indexPath], with: .fade)  // remove table row of deleted movie
    }
  
		func modify(tableView: UITableView) {
				var filteredMovies: [Movie] = []
				let filter = UserDefaults.standard.bool(forKey: "filter")
				if filter == true {  // filter toggle active
          if let filterModes = UserDefaults.standard.string(forKey: "filtermodes") {  // get filter modes
            movies = loader(source: "oldmovies")  // overwrite movie list with unmodified list
            for option in filterModes.split(separator: ", ") {
              var oscaroption = "_"
              var staroption = "0"
              var ageoption = "A"
              var watchedoption = "0"
              if option == "Oscar" { // oscar filter
                oscaroption = " "
              } else if option.contains(" ") { // rating filter
                staroption = (String(option.prefix(1)) != "S") ? String(option.prefix(1)) : "6"
              } else if option == "Children" { // age filter
                ageoption = "PEK"
              } else if option == "Parents" { // age filter
                ageoption = "PE"
              } else if option == "Couples" { // age filter
                ageoption = "P"
              } else if option == "Rewatched" {
                watchedoption = "1"
              }
              filteredMovies = movies.filter({ (movie:Movie) -> Bool in
                let oscarMatch = movie.oscars.range(of: oscaroption, options: NSString.CompareOptions.caseInsensitive)
                let starMatch = String(movie.myrating).range(of: staroption, options: NSString.CompareOptions.caseInsensitive)
                let ageMatch = movie.explicit.range(of: ageoption, options: NSString.CompareOptions.caseInsensitive)
                let genreMatch = movie.genre.range(of: option, options: NSString.CompareOptions.caseInsensitive)
                let watchedMatch = String(movie.viewcount).range(of: watchedoption, options: NSString.CompareOptions.literal)
                return oscarMatch != nil || starMatch != nil || ageMatch != nil || genreMatch != nil || watchedMatch == nil}
              )
              movies = filteredMovies
            }
          }
				} else {  // filter toggle inactive
						movies = loader(source: "oldmovies")  // overwrite movie list with unmodified list
				}
				if let sortMode = UserDefaults.standard.string(forKey: "sortmode") {  // get sort mode
					switch sortMode {
						case "First added":
							let dates: [String] = movies.map { $0.addedDate }  // create list of added dates
							filteredMovies = sorter(array: dates, option: .numeric, direction: -1)  // sort movies ascending by added date
						case "Last added":
							let dates: [String] = movies.map { $0.addedDate }  // create list of added dates
							filteredMovies = sorter(array: dates, option: .numeric, direction: 1)  // sort movies descending by added date
						case "First released":
							let dates: [String] = movies.map { $0.releaseYear }  // create list of release dates
							filteredMovies = sorter(array: dates, option: .numeric, direction: -1)  // sort movies ascending by release date
						case "Last released":
							let dates: [String] = movies.map { $0.releaseYear }  // create list of release dates
							filteredMovies = sorter(array: dates, option: .numeric, direction: 1)  // sort movies descending by release date
						case "My rating descending":
							let ratings: [String] = movies.map { String($0.myrating) }  // create list of ratings
							filteredMovies = sorter(array: ratings, option: .numeric, direction: 1)  // sort movies descending by rating
						case "My rating ascending":
							let ratings: [String] = movies.map { String($0.myrating) }  // create list of ratings
							filteredMovies = sorter(array: ratings, option: .numeric, direction: -1)  // sort movies ascending by rating
            case "Webrating descending":
              let ratings: [String] = movies.map { String($0.webrating) }  // create list of ratings
              filteredMovies = sorter(array: ratings, option: .numeric, direction: 1)  // sort movies descending by rating
            case "Webrating ascending":
              let ratings: [String] = movies.map { String($0.webrating) }  // create list of ratings
              filteredMovies = sorter(array: ratings, option: .numeric, direction: -1)  // sort movies ascending by rating
						case "Alphabetical titles":
							let titles: [String] = movies.map { $0.title }  // create list of titles
							filteredMovies = sorter(array: titles, option: .caseInsensitive, direction: -1)  // sort movies ascending by title
						case "Length descending":
							let lengths: [String] = movies.map { String($0.length) }  // create list of titles
							filteredMovies = sorter(array: lengths, option: .numeric, direction: 1)  // sort movies descending by length
						case "Length ascending":
							let lengths: [String] = movies.map { String($0.length) }  // create list of titles
							filteredMovies = sorter(array: lengths, option: .numeric, direction: -1)  // sort movies ascending by length
            case "Most watched":
              let viewcounts: [String] = movies.map { String($0.viewcount) }  // create list of viewcounts
              filteredMovies = sorter(array: viewcounts, option: .numeric, direction: 1)  // sort movies descending by viewcount
            default:
							break
					}
					movies = filteredMovies  // overwrite movie list with modified list
				}
				saver(source: movies, destination: "movies") // save modified movie list
				tableView.reloadData()  // refresh table to reflect modification
        //MoviesViewController().movies = movies
        /*if movies != [] {  // table not empty
            tableView.scrollToRow(at: IndexPath(row: 0, section: 0), at: .top, animated: true)  // go back to top
        }*/
		}
	
		func saver(source: [Movie], destination: String) {  // helper method to save movie list in UserDefaults
				do {
						let encoder = JSONEncoder()
						let data = try encoder.encode(source)
						UserDefaults.standard.set(data, forKey: destination)
				} catch {
						print("Unable to Encode (\(error))")
				}
		}
	
		func loader(source: String) -> [Movie] {  // helper method to load movie list from UserDefaults
				var array: [Movie] = []
				if let data = UserDefaults.standard.data(forKey: source) {
						do {
								let decoder = JSONDecoder()
								array = try decoder.decode([Movie].self, from: data)
						} catch {
								print("Unable to Decode (\(error))")
						}
				}
				return array
		}
		
		func sorter(array: [String], option: NSString.CompareOptions, direction: Int) -> [Movie] {  // helper method to sort movie attributes
				let tuples = zip(array, movies)  // create list of tuples containing movie and corresponding attribute
				return tuples.sorted {$0.0.compare($1.0, options: option).rawValue == direction}.map {$0.1}  // sort tuples by attribute list and create sorted movie list
		}

    func movie(at indexPath: IndexPath) -> Movie {  // helper method to access movie with given index from list
        movies[indexPath.row]
    }
}
