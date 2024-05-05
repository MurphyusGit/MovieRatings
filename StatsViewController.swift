
import UIKit

class StatsViewController: UITableViewController {
	
  var movies: [Movie] = []
  var moviesandshows: [Movie] = []
  var percentageLabels: [UILabel] = []
  var actorDict: [String: Actor] = [:]
  var mostactorDict: [String: Actor] = [:]
  var bestactorDict: [String: Actor] = [:]
  var vipactorDict: [String: Actor] = [:]
  var deviatingactorDict: [String: Actor] = [:]
  var directorDict: [String: Director] = [:]
  var mostdirectorDict: [String: Director] = [:]
  var bestdirectorDict: [String: Director] = [:]
  var deviatingdirectorDict: [String: Director] = [:]
  var genreDict: [String: Genre] = [:]
  var mostgenreDict: [String: Genre] = [:]
  var bestgenreDict: [String: Genre] = [:]
  var deviatinggenreDict: [String: Genre] = [:]
  var oscarmovieDict: [String: Movie] = [:]
  var mostoscarmovieDict: [String: Movie] = [:]
  var mostwatchedmovieDict: [String: Movie] = [:]
  var mostmovieDict: [String: Movie] = [:]
	
  @IBOutlet weak var mostWatchedActor1Label: UILabel!
	@IBOutlet weak var mostWatchedActor1XLabel: UILabel!
	@IBOutlet weak var mostWatchedActor2Label: UILabel!
	@IBOutlet weak var mostWatchedActor2XLabel: UILabel!
	@IBOutlet weak var mostWatchedActor3Label: UILabel!
	@IBOutlet weak var mostWatchedActor3XLabel: UILabel!
	@IBOutlet weak var mostWatchedActor1Image: UIImageView!
  @IBOutlet weak var mostWatchedActor1Tap: UITapGestureRecognizer!
	@IBOutlet weak var mostWatchedActor2Image: UIImageView!
  @IBOutlet weak var mostWatchedActor2Tap: UITapGestureRecognizer!
	@IBOutlet weak var mostWatchedActor3Image: UIImageView!
  @IBOutlet weak var mostWatchedActor3Tap: UITapGestureRecognizer!
	@IBOutlet weak var bestActor1Label: UILabel!
	@IBOutlet weak var bestActor1XLabel: UILabel!
	@IBOutlet weak var bestActor2Label: UILabel!
	@IBOutlet weak var bestActor2XLabel: UILabel!
	@IBOutlet weak var bestActor3Label: UILabel!
	@IBOutlet weak var bestActor3XLabel: UILabel!
	@IBOutlet weak var bestActor1Image: UIImageView!
  @IBOutlet weak var bestActor1Tap: UITapGestureRecognizer!
	@IBOutlet weak var bestActor2Image: UIImageView!
  @IBOutlet weak var bestActor2Tap: UITapGestureRecognizer!
	@IBOutlet weak var bestActor3Image: UIImageView!
  @IBOutlet weak var bestActor3Tap: UITapGestureRecognizer!
  @IBOutlet weak var vipActor1Label: UILabel!
  @IBOutlet weak var vipActor1XLabel: UILabel!
  @IBOutlet weak var vipActor2Label: UILabel!
  @IBOutlet weak var vipActor2XLabel: UILabel!
  @IBOutlet weak var vipActor3Label: UILabel!
  @IBOutlet weak var vipActor3XLabel: UILabel!
  @IBOutlet weak var vipActor1Image: UIImageView!
  @IBOutlet weak var vipActor1Tap: UITapGestureRecognizer!
  @IBOutlet weak var vipActor2Image: UIImageView!
  @IBOutlet weak var vipActor2Tap: UITapGestureRecognizer!
  @IBOutlet weak var vipActor3Image: UIImageView!
  @IBOutlet weak var vipActor3Tap: UITapGestureRecognizer!
  @IBOutlet weak var devActor1Label: UILabel!
  @IBOutlet weak var devActor1XLabel: UILabel!
  @IBOutlet weak var devActor2Label: UILabel!
  @IBOutlet weak var devActor2XLabel: UILabel!
  @IBOutlet weak var devActor3Label: UILabel!
  @IBOutlet weak var devActor3XLabel: UILabel!
  @IBOutlet weak var devActor1Image: UIImageView!
  @IBOutlet weak var devActor1Tap: UITapGestureRecognizer!
  @IBOutlet weak var devActor2Image: UIImageView!
  @IBOutlet weak var devActor2Tap: UITapGestureRecognizer!
  @IBOutlet weak var devActor3Image: UIImageView!
  @IBOutlet weak var devActor3Tap: UITapGestureRecognizer!
	@IBOutlet weak var mostWatchedDirector1Label: UILabel!
  @IBOutlet weak var mostWatchedDirector2Label: UILabel!
  @IBOutlet weak var mostWatchedDirector3Label: UILabel!
	@IBOutlet weak var bestDirector1Label: UILabel!
  @IBOutlet weak var bestDirector2Label: UILabel!
  @IBOutlet weak var bestDirector3Label: UILabel!
  @IBOutlet weak var devDirector1Label: UILabel!
  @IBOutlet weak var devDirector2Label: UILabel!
  @IBOutlet weak var devDirector3Label: UILabel!
	@IBOutlet weak var mostWatchedGenre1Label: UILabel!
	@IBOutlet weak var mostWatchedGenre2Label: UILabel!
	@IBOutlet weak var mostWatchedGenre3Label: UILabel!
	@IBOutlet weak var bestGenre1Label: UILabel!
	@IBOutlet weak var bestGenre2Label: UILabel!
	@IBOutlet weak var bestGenre3Label: UILabel!
  @IBOutlet weak var deviatingGenre1Label: UILabel!
  @IBOutlet weak var deviatingGenre2Label: UILabel!
  @IBOutlet weak var deviatingGenre3Label: UILabel!
  @IBOutlet weak var oscar1Label: UILabel!
  @IBOutlet weak var oscar2Label: UILabel!
  @IBOutlet weak var oscar3Label: UILabel!
  @IBOutlet weak var mostWatchedMovie1Label: UILabel!
  @IBOutlet weak var mostWatchedMovie2Label: UILabel!
  @IBOutlet weak var mostWatchedMovie3Label: UILabel!
	@IBOutlet weak var pLabel1: UILabel!
	@IBOutlet weak var pLabel2: UILabel!
	@IBOutlet weak var pLabel3: UILabel!
	@IBOutlet weak var pLabel4: UILabel!
	@IBOutlet weak var pLabel5: UILabel!
	@IBOutlet weak var pLabel6: UILabel!
	@IBOutlet weak var pLabel7: UILabel!
	@IBOutlet weak var pLabel8: UILabel!
	@IBOutlet weak var pLabel9: UILabel!
	@IBOutlet weak var pLabel10: UILabel!
	@IBOutlet weak var pLabel11: UILabel!
	@IBOutlet weak var pLabel12: UILabel!
	@IBOutlet weak var pLabel13: UILabel!
	@IBOutlet weak var pLabel14: UILabel!
	@IBOutlet weak var pLabel15: UILabel!
	@IBOutlet weak var pLabel16: UILabel!
	@IBOutlet weak var pLabel17: UILabel!
	@IBOutlet weak var pLabel18: UILabel!
	@IBOutlet weak var pLabel19: UILabel!
	@IBOutlet weak var pLabel20: UILabel!
	@IBOutlet weak var pLabel21: UILabel!
	@IBOutlet weak var pLabel22: UILabel!
	@IBOutlet weak var pLabel23: UILabel!
	@IBOutlet weak var pLabel24: UILabel!
	@IBOutlet weak var pLabel25: UILabel!
	@IBOutlet weak var pLabel26: UILabel!
	@IBOutlet weak var pLabel27: UILabel!
	@IBOutlet weak var pLabel28: UILabel!
	@IBOutlet weak var pLabel29: UILabel!
	@IBOutlet weak var pLabel30: UILabel!
	@IBOutlet weak var pLabel31: UILabel!
	@IBOutlet weak var pLabel32: UILabel!
	@IBOutlet weak var pLabel33: UILabel!
	@IBOutlet weak var pLabel34: UILabel!
	@IBOutlet weak var pLabel35: UILabel!
	@IBOutlet weak var pLabel36: UILabel!
	@IBOutlet weak var pLabel37: UILabel!
	@IBOutlet weak var pLabel38: UILabel!
	@IBOutlet weak var pLabel39: UILabel!
	@IBOutlet weak var pLabel40: UILabel!
	@IBOutlet weak var pLabel41: UILabel!
	@IBOutlet weak var pLabel42: UILabel!
	@IBOutlet weak var pLabel43: UILabel!
	@IBOutlet weak var pLabel44: UILabel!
	@IBOutlet weak var pLabel45: UILabel!
	@IBOutlet weak var pLabel46: UILabel!
	@IBOutlet weak var pLabel47: UILabel!
	@IBOutlet weak var pLabel48: UILabel!
	@IBOutlet weak var pLabel49: UILabel!
	@IBOutlet weak var pLabel50: UILabel!
	@IBOutlet weak var pLabel51: UILabel!
	@IBOutlet weak var pLabel52: UILabel!
	@IBOutlet weak var pLabel53: UILabel!
	@IBOutlet weak var pLabel54: UILabel!
	@IBOutlet weak var pLabel55: UILabel!
	@IBOutlet weak var pLabel56: UILabel!
	@IBOutlet weak var pLabel57: UILabel!
	@IBOutlet weak var pLabel58: UILabel!
	@IBOutlet weak var pLabel59: UILabel!
	@IBOutlet weak var pLabel60: UILabel!
	@IBOutlet weak var pLabel61: UILabel!
	@IBOutlet weak var pLabel62: UILabel!
	@IBOutlet weak var pLabel63: UILabel!
	@IBOutlet weak var pLabel64: UILabel!
	@IBOutlet weak var pLabel65: UILabel!
	@IBOutlet weak var pLabel66: UILabel!
	@IBOutlet weak var pLabel67: UILabel!
	@IBOutlet weak var pLabel68: UILabel!
	@IBOutlet weak var pLabel69: UILabel!
	@IBOutlet weak var pLabel70: UILabel!
	@IBOutlet weak var pLabel71: UILabel!
	@IBOutlet weak var pLabel72: UILabel!
	@IBOutlet weak var pLabel73: UILabel!
	@IBOutlet weak var pLabel74: UILabel!
	@IBOutlet weak var pLabel75: UILabel!
	@IBOutlet weak var pLabel76: UILabel!
	@IBOutlet weak var pLabel77: UILabel!
	@IBOutlet weak var pLabel78: UILabel!
	@IBOutlet weak var pLabel79: UILabel!
	@IBOutlet weak var pLabel80: UILabel!
	@IBOutlet weak var pLabel81: UILabel!
	@IBOutlet weak var pLabel82: UILabel!
	@IBOutlet weak var pLabel83: UILabel!
	@IBOutlet weak var pLabel84: UILabel!
	@IBOutlet weak var pLabel85: UILabel!
	@IBOutlet weak var pLabel86: UILabel!
	@IBOutlet weak var pLabel87: UILabel!
	@IBOutlet weak var pLabel88: UILabel!
	@IBOutlet weak var pLabel89: UILabel!
	@IBOutlet weak var pLabel90: UILabel!
	@IBOutlet weak var pLabel91: UILabel!
	@IBOutlet weak var pLabel92: UILabel!
	@IBOutlet weak var pLabel93: UILabel!
	@IBOutlet weak var pLabel94: UILabel!
	@IBOutlet weak var pLabel95: UILabel!
	@IBOutlet weak var pLabel96: UILabel!
	@IBOutlet weak var pLabel97: UILabel!
	@IBOutlet weak var pLabel98: UILabel!
	@IBOutlet weak var pLabel99: UILabel!
	@IBOutlet weak var pLabel100: UILabel!
	@IBOutlet weak var oneStarPLabel: UILabel!
	@IBOutlet weak var twoStarPLabel: UILabel!
	@IBOutlet weak var threeStarPLabel: UILabel!
	@IBOutlet weak var fourStarPLabel: UILabel!
	@IBOutlet weak var fiveStarPLabel: UILabel!
  @IBOutlet weak var oneStarDurationLabel: UILabel!
  @IBOutlet weak var twoStarDurationLabel: UILabel!
  @IBOutlet weak var threeStarDurationLabel: UILabel!
  @IBOutlet weak var fourStarDurationLabel: UILabel!
  @IBOutlet weak var fiveStarDurationLabel: UILabel!
  @IBOutlet weak var oneStarYearLabel: UILabel!
  @IBOutlet weak var twoStarYearLabel: UILabel!
  @IBOutlet weak var threeStarYearLabel: UILabel!
  @IBOutlet weak var fourStarYearLabel: UILabel!
  @IBOutlet weak var fiveStarYearLabel: UILabel!
  @IBOutlet weak var fiftiesRatingLabel: UILabel!
  @IBOutlet weak var sixtiesRatingLabel: UILabel!
  @IBOutlet weak var seventiesRatingLabel: UILabel!
  @IBOutlet weak var eightiesRatingLabel: UILabel!
  @IBOutlet weak var ninetiesRatingLabel: UILabel!
  @IBOutlet weak var zeroesRatingLabel: UILabel!
  @IBOutlet weak var tensRatingLabel: UILabel!
  @IBOutlet weak var twentiesRatingLabel: UILabel!
	
  override func viewDidLoad()  {
      tableView.sectionHeaderHeight = 0
      self.navigationController?.isNavigationBarHidden = true
      refreshStatData()
      //refreshStatDisplay()
  }
  
  override func viewWillAppear(_ animated: Bool)  {
      super.viewWillAppear(animated)
      self.navigationController?.isNavigationBarHidden = true
  }
  
  override func viewWillDisappear(_ animated: Bool)  {
      super.viewWillDisappear(animated)
      self.navigationController?.isNavigationBarHidden = false
  }
  
  func refreshStatData() {
      if UserDefaults.standard.bool(forKey: "movieadded") && !UserDefaults.standard.bool(forKey: "filter") {
          UserDefaults.standard.set(UserDefaults.standard.string(forKey: "oldmostactor1"), forKey: "mostactor1")
          UserDefaults.standard.set(UserDefaults.standard.string(forKey: "oldmostactor2"), forKey: "mostactor2")
          UserDefaults.standard.set(UserDefaults.standard.string(forKey: "oldmostactor3"), forKey: "mostactor3")
          UserDefaults.standard.set(UserDefaults.standard.string(forKey: "oldbestactor1"), forKey: "bestactor1")
          UserDefaults.standard.set(UserDefaults.standard.string(forKey: "oldbestactor2"), forKey: "bestactor2")
          UserDefaults.standard.set(UserDefaults.standard.string(forKey: "oldbestactor3"), forKey: "bestactor3")
          UserDefaults.standard.set(UserDefaults.standard.string(forKey: "oldvipactor1"), forKey: "vipactor1")
          UserDefaults.standard.set(UserDefaults.standard.string(forKey: "oldvipactor2"), forKey: "vipactor2")
          UserDefaults.standard.set(UserDefaults.standard.string(forKey: "oldvipactor3"), forKey: "vipactor3")
          UserDefaults.standard.set(UserDefaults.standard.string(forKey: "olddevactor1"), forKey: "devactor1")
          UserDefaults.standard.set(UserDefaults.standard.string(forKey: "olddevactor2"), forKey: "devactor2")
          UserDefaults.standard.set(UserDefaults.standard.string(forKey: "olddevactor3"), forKey: "devactor3")
          UserDefaults.standard.set(UserDefaults.standard.string(forKey: "oldmostdirector1"), forKey: "mostdirector1")
          UserDefaults.standard.set(UserDefaults.standard.string(forKey: "oldmostdirector2"), forKey: "mostdirector2")
          UserDefaults.standard.set(UserDefaults.standard.string(forKey: "oldmostdirector3"), forKey: "mostdirector3")
          UserDefaults.standard.set(UserDefaults.standard.string(forKey: "oldbestdirector1"), forKey: "bestdirector1")
          UserDefaults.standard.set(UserDefaults.standard.string(forKey: "oldbestdirector2"), forKey: "bestdirector2")
          UserDefaults.standard.set(UserDefaults.standard.string(forKey: "oldbestdirector3"), forKey: "bestdirector3")
          UserDefaults.standard.set(UserDefaults.standard.string(forKey: "olddevdirector1"), forKey: "devdirector1")
          UserDefaults.standard.set(UserDefaults.standard.string(forKey: "olddevdirector2"), forKey: "devdirector2")
          UserDefaults.standard.set(UserDefaults.standard.string(forKey: "olddevdirector3"), forKey: "devdirector3")
          UserDefaults.standard.set(UserDefaults.standard.string(forKey: "oldbestgenre1"), forKey: "bestgenre1")
          UserDefaults.standard.set(UserDefaults.standard.string(forKey: "oldbestgenre2"), forKey: "bestgenre2")
          UserDefaults.standard.set(UserDefaults.standard.string(forKey: "oldbestgenre3"), forKey: "bestgenre3")
          UserDefaults.standard.set(UserDefaults.standard.string(forKey: "oldmostgenre1"), forKey: "mostgenre1")
          UserDefaults.standard.set(UserDefaults.standard.string(forKey: "oldmostgenre2"), forKey: "mostgenre2")
          UserDefaults.standard.set(UserDefaults.standard.string(forKey: "oldmostgenre3"), forKey: "mostgenre3")
          UserDefaults.standard.set(UserDefaults.standard.string(forKey: "olddeviatinggenre1"), forKey: "deviatinggenre1")
          UserDefaults.standard.set(UserDefaults.standard.string(forKey: "olddeviatinggenre2"), forKey: "deviatinggenre2")
          UserDefaults.standard.set(UserDefaults.standard.string(forKey: "olddeviatinggenre3"), forKey: "deviatinggenre3")
      }
      movies = MoviesDataSource().movies
      moviesandshows = ((MoviesDataSource().movies + ShowsDataSource().shows).sorted { $0.addedDate > $1.addedDate }).reversed()
      for movie in moviesandshows {
          if !(movie.oscars == "") && !oscarmovieDict.keys.contains(String(movie.title)) {
              oscarmovieDict[String(movie.title)] = movie
          }
          if movie.viewcount > 1 && !mostwatchedmovieDict.keys.contains(String(movie.title)) {
              mostwatchedmovieDict[String(movie.title)] = movie
          }
          for actor in movie.actors.split(separator: ", ") {
              if !actorDict.keys.contains(String(actor)) {
                actorDict[String(actor)] = Actor(name: String(actor), movies: [movie], uniquemovies: [movie], totalmystars: (movie.myrating != 6) ? movie.myrating : 5, myrating: Float((movie.myrating != 6) ? movie.myrating : 5), totalwebstars: movie.webrating, webrating: movie.webrating, deviation: Float((movie.myrating != 6) ? (Float(movie.myrating) - movie.webrating) : (5.0 - movie.webrating)), uniquetotalroleposition: movie.actors.prefix(movie.actors.distance(from: movie.actors.startIndex, to: movie.actors.range(of: actor)!.lowerBound)).components(separatedBy: ",").count, uniqueroleposition: Float(movie.actors.prefix(movie.actors.distance(from: movie.actors.startIndex, to: movie.actors.range(of: actor)!.lowerBound)).components(separatedBy: ",").count))
              } else {
                  if movie.continuation == "single" || (movie.continuation == "continuation" && !personwasinpreviousparts(
                    person: String(actor), isActor: true, movie: movie, list: actorDict[String(actor)]!.movies)) {
                        actorDict[String(actor)]!.uniquemovies += [movie]
                        actorDict[String(actor)]!.uniquetotalroleposition += movie.actors.prefix(movie.actors.distance(from: movie.actors.startIndex, to: movie.actors.range(of: actor)!.lowerBound)).components(separatedBy: ",").count
                        actorDict[String(actor)]!.uniqueroleposition = Float(actorDict[String(actor)]!.uniquetotalroleposition) / Float(actorDict[String(actor)]!.uniquemovies.count)
                  }
                  actorDict[String(actor)]!.movies += [movie]
                  actorDict[String(actor)]!.totalmystars += (movie.myrating != 6) ? movie.myrating : 5
                  actorDict[String(actor)]!.totalwebstars += movie.webrating
                  actorDict[String(actor)]!.myrating = Float(actorDict[String(actor)]!.totalmystars) / Float(actorDict[String(actor)]!.movies.count)
                  actorDict[String(actor)]!.webrating = Float(actorDict[String(actor)]!.totalwebstars) / Float(actorDict[String(actor)]!.movies.count)
                  actorDict[String(actor)]!.deviation += (Float(((movie.myrating != 6) ? movie.myrating : 5)) - movie.webrating)
              }
          }
          for director in movie.director.split(separator: ", ") {
              if !directorDict.keys.contains(String(director)) {
                directorDict[String(director)] = Director(name: String(director), movies: [movie], uniquemovies: [movie], totalmystars: (movie.myrating != 6) ? movie.myrating : 5, myrating: Float((movie.myrating != 6) ? movie.myrating : 5), totalwebstars: movie.webrating, webrating: movie.webrating, deviation: Float((movie.myrating != 6) ? (Float(movie.myrating) - movie.webrating) : (5.0 - movie.webrating)))
              } else {
                  if movie.continuation == "single" || (movie.continuation == "continuation" && !personwasinpreviousparts(
                    person: String(director), isActor: false, movie: movie, list: directorDict[String(director)]!.movies)) {
                        directorDict[String(director)]!.uniquemovies += [movie]
                    }
                    directorDict[String(director)]!.movies += [movie]
                    directorDict[String(director)]!.totalmystars += (movie.myrating != 6) ? movie.myrating : 5
                    directorDict[String(director)]!.totalwebstars += movie.webrating
                    directorDict[String(director)]!.myrating = Float(directorDict[String(director)]!.totalmystars) / Float(directorDict[String(director)]!.movies.count)
                    directorDict[String(director)]!.webrating = Float(directorDict[String(director)]!.totalwebstars) / Float(directorDict[String(director)]!.movies.count)
                    directorDict[String(director)]!.deviation += (Float(((movie.myrating != 6) ? movie.myrating : 5)) - movie.webrating)
                  }
          }
          for genre in movie.genre.split(separator: ", ") {
              if !genreDict.keys.contains(String(genre)) {
                genreDict[String(genre)] = Genre(name: String(genre), movies: [movie], totalmystars: (movie.myrating != 6) ? movie.myrating : 5, myrating: Float((movie.myrating != 6) ? movie.myrating : 5), totalwebstars: movie.webrating, webrating: movie.webrating, deviation: Float((movie.myrating != 6) ? (Float(movie.myrating) - movie.webrating) : (5.0 - movie.webrating)))
              } else {
                  genreDict[String(genre)]!.movies += [movie]
                  genreDict[String(genre)]!.totalmystars += movie.myrating
                  genreDict[String(genre)]!.totalwebstars += movie.webrating
                  genreDict[String(genre)]!.myrating = Float(genreDict[String(genre)]!.totalmystars) / Float(genreDict[String(genre)]!.movies.count)
                  genreDict[String(genre)]!.webrating = Float(genreDict[String(genre)]!.totalwebstars) / Float(genreDict[String(genre)]!.movies.count)
                  genreDict[String(genre)]!.deviation += (Float(((movie.myrating != 6) ? movie.myrating : 5)) - movie.webrating)
              }
          }
      }
      mostoscarmovieDict = oscarmovieDict.sorted(by: { $0.1.oscars.split(separator: ", ").count > $1.1.oscars.split(separator: ", ").count || $0.1.oscars.split(separator: ", ").count == $1.1.oscars.split(separator: ", ").count && $0.1.releaseYear > $1.1.releaseYear } )
      mostwatchedmovieDict = mostmovieDict.sorted(by: { $0.1.viewcount > $1.1.viewcount || $0.1.viewcount == $1.1.viewcount && ($0.1.myrating > $1.1.myrating || $0.1.myrating == $1.1.myrating && $0.1.webrating > $1.1.webrating) } )
      mostactorDict = actorDict.sorted(by: { $0.1.movies.count > $1.1.movies.count || $0.1.movies.count == $1.1.movies.count && $0.1.movies[0].addedDate < $1.1.movies[0].addedDate } )
      let establishedactorDict = actorDict.filter({$0.1.uniquemovies.count > 4})
      bestactorDict = establishedactorDict.sorted(by: { $0.1.myrating > $1.1.myrating || ($0.1.myrating == $1.1.myrating && ($0.1.movies.count > $1.1.movies.count || $0.1.movies.count == $1.1.movies.count && $0.1.uniqueroleposition < $1.1.uniqueroleposition || $0.1.movies.count == $1.1.movies.count && $0.1.uniqueroleposition == $1.1.uniqueroleposition && $0.1.movies[0].addedDate < $1.1.movies[0].addedDate)) } )
      vipactorDict = establishedactorDict.sorted(by: { $0.1.uniqueroleposition < $1.1.uniqueroleposition || $0.1.uniqueroleposition == $1.1.uniqueroleposition && $0.1.movies.count > $1.1.movies.count || $0.1.uniqueroleposition == $1.1.uniqueroleposition && $0.1.movies.count == $1.1.movies.count && $0.1.myrating > $1.1.myrating } )
      deviatingactorDict = establishedactorDict.sorted(by: { abs($0.1.deviation) / Float($0.1.movies.count)  > abs($1.1.deviation) / Float($1.1.movies.count) || abs($0.1.deviation) / Float($0.1.movies.count)  == abs($1.1.deviation) / Float($1.1.movies.count) && $0.1.movies.count > $1.1.movies.count || abs($0.1.deviation) / Float($0.1.movies.count)  == abs($1.1.deviation) / Float($1.1.movies.count) && $0.1.movies.count == $1.1.movies.count && $0.1.myrating > $1.1.myrating || abs($0.1.deviation) / Float($0.1.movies.count)  == abs($1.1.deviation) / Float($1.1.movies.count) && $0.1.movies.count == $1.1.movies.count && $0.1.myrating == $1.1.myrating && $0.1.uniqueroleposition < $1.1.uniqueroleposition } )
      mostdirectorDict = directorDict.sorted(by: { $0.1.movies.count > $1.1.movies.count || $0.1.movies.count == $1.1.movies.count && $0.1.movies[0].addedDate < $1.1.movies[0].addedDate } )
      let establisheddirectorDict = directorDict.filter({$0.1.uniquemovies.count > 2})
      bestdirectorDict = establisheddirectorDict.sorted(by: { $0.1.myrating > $1.1.myrating } )
      deviatingdirectorDict = establisheddirectorDict.sorted(by: { abs($0.1.deviation) / Float($0.1.movies.count)  > abs($1.1.deviation) / Float($1.1.movies.count) || abs($0.1.deviation) / Float($0.1.movies.count)  == abs($1.1.deviation) / Float($1.1.movies.count) && $0.1.movies.count > $1.1.movies.count || abs($0.1.deviation) / Float($0.1.movies.count)  == abs($1.1.deviation) / Float($1.1.movies.count) && $0.1.movies.count == $1.1.movies.count && $0.1.myrating > $1.1.myrating } )
      mostgenreDict = genreDict.sorted(by: { $0.1.movies.count > $1.1.movies.count || $0.1.movies.count == $1.1.movies.count && $0.1.movies[0].addedDate < $1.1.movies[0].addedDate } )
      let establishedgenreDict = genreDict.filter({$0.1.movies.count > 9})
      bestgenreDict = establishedgenreDict.sorted(by: { $0.1.myrating > $1.1.myrating } )
      deviatinggenreDict = establishedgenreDict.sorted(by: { abs($0.1.deviation) / Float($0.1.movies.count)  > abs($1.1.deviation) / Float($1.1.movies.count) } )
    
      var mostoscarmovies: [Movie] = []
      for (_, value) in mostoscarmovieDict {
          mostoscarmovies += [value]
      }
      MoviesDataSource().saver(source: mostoscarmovies, destination: "mostoscarmoviestatlist")
    
      var mostwatchedmovies: [Movie] = []
      for (_, value) in mostmovieDict {
          mostwatchedmovies += [value]
      }
      MoviesDataSource().saver(source: mostwatchedmovies, destination: "mostwatchedmoviestatlist")
    
      var allactors: [Actor] = []
      for (_, value) in actorDict {
        allactors += [Actor(name: value.name, movies: value.movies, uniquemovies: value.uniquemovies, totalmystars: value.totalmystars, myrating: value.myrating, totalwebstars: value.totalwebstars, webrating: value.webrating, deviation: value.deviation, uniquetotalroleposition: value.uniquetotalroleposition, uniqueroleposition: value.uniqueroleposition)]
      }
      ActorDataSource().saver(source: allactors, destination: "allactorlist")
      
      var mostactors: [Actor] = []
      for (_, value) in mostactorDict {
        mostactors += [Actor(name: value.name, movies: value.movies, uniquemovies: value.uniquemovies, totalmystars: value.totalmystars, myrating: value.myrating, totalwebstars: value.totalwebstars, webrating: value.webrating, deviation: value.deviation, uniquetotalroleposition: value.uniquetotalroleposition, uniqueroleposition: value.uniqueroleposition)]
      }
      ActorDataSource().saver(source: mostactors, destination: "mostactorstatlist")
      
      var bestactors: [Actor] = []
      for (_, value) in bestactorDict {
        bestactors += [Actor(name: value.name, movies: value.movies, uniquemovies: value.uniquemovies, totalmystars: value.totalmystars, myrating: value.myrating, totalwebstars: value.totalwebstars, webrating: value.webrating, deviation: value.deviation, uniquetotalroleposition: value.uniquetotalroleposition, uniqueroleposition: value.uniqueroleposition)]
      }
      ActorDataSource().saver(source: bestactors, destination: "bestactorstatlist")
      
      var vipactors: [Actor] = []
      for (_, value) in vipactorDict {
        vipactors += [Actor(name: value.name, movies: value.movies, uniquemovies: value.uniquemovies, totalmystars: value.totalmystars, myrating: value.myrating, totalwebstars: value.totalwebstars, webrating: value.webrating, deviation: value.deviation, uniquetotalroleposition: value.uniquetotalroleposition, uniqueroleposition: value.uniqueroleposition)]
      }
      ActorDataSource().saver(source: vipactors, destination: "vipactorstatlist")
    
      var devactors: [Actor] = []
      for (_, value) in deviatingactorDict {
        devactors += [Actor(name: value.name, movies: value.movies, uniquemovies: value.uniquemovies, totalmystars: value.totalmystars, myrating: value.myrating, totalwebstars: value.totalwebstars, webrating: value.webrating, deviation: value.deviation, uniquetotalroleposition: value.uniquetotalroleposition, uniqueroleposition: value.uniqueroleposition)]
      }
      ActorDataSource().saver(source: devactors, destination: "devactorstatlist")
    
      var alldirectors: [Director] = []
      for (_, value) in directorDict {
        alldirectors += [Director(name: value.name, movies: value.movies, uniquemovies: value.uniquemovies, totalmystars: value.totalmystars, myrating: value.myrating, totalwebstars: value.totalwebstars, webrating: value.webrating, deviation: value.deviation)]
      }
      DirectorDataSource().saver(source: alldirectors, destination: "alldirectorlist")
      
      var mostdirectors: [Director] = []
      for (_, value) in mostdirectorDict {
        mostdirectors += [Director(name: value.name, movies: value.movies, uniquemovies: value.uniquemovies, totalmystars: value.totalmystars, myrating: value.myrating, totalwebstars: value.totalwebstars, webrating: value.webrating, deviation: value.deviation)]
      }
      DirectorDataSource().saver(source: mostdirectors, destination: "mostdirectorstatlist")
      
      var bestdirectors: [Director] = []
      for (_, value) in bestdirectorDict {
        bestdirectors += [Director(name: value.name, movies: value.movies, uniquemovies: value.uniquemovies, totalmystars: value.totalmystars, myrating: value.myrating, totalwebstars: value.totalwebstars, webrating: value.webrating, deviation: value.deviation)]
      }
      DirectorDataSource().saver(source: bestdirectors, destination: "bestdirectorstatlist")
    
      var devdirectors: [Director] = []
      for (_, value) in deviatingdirectorDict {
        devdirectors += [Director(name: value.name, movies: value.movies, uniquemovies: value.uniquemovies, totalmystars: value.totalmystars, myrating: value.myrating, totalwebstars: value.totalwebstars, webrating: value.webrating, deviation: value.deviation)]
      }
      DirectorDataSource().saver(source: devdirectors, destination: "devdirectorstatlist")
    
      var allgenres: [Genre] = []
      for (_, value) in genreDict {
          allgenres += [Genre(name: value.name, movies: value.movies, totalmystars: value.totalmystars, myrating: value.myrating,totalwebstars: value.totalwebstars, webrating: value.webrating, deviation: value.deviation)]
      }
      GenreDataSource().saver(source: allgenres, destination: "allgenrelist")
      
      var mostgenres: [Genre] = []
      for (_, value) in mostgenreDict {
          mostgenres += [Genre(name: value.name, movies: value.movies, totalmystars: value.totalmystars, myrating: value.myrating,totalwebstars: value.totalwebstars, webrating: value.webrating, deviation: value.deviation)]
      }
      GenreDataSource().saver(source: mostgenres, destination: "mostgenrestatlist")
      
      var bestgenres: [Genre] = []
      for (_, value) in bestgenreDict {
        bestgenres += [Genre(name: value.name, movies: value.movies, totalmystars: value.totalmystars, myrating: value.myrating, totalwebstars: value.totalwebstars, webrating: value.webrating, deviation: value.deviation)]
      }
      GenreDataSource().saver(source: bestgenres, destination: "bestgenrestatlist")
    
      var deviatinggenres: [Genre] = []
      for (_, value) in deviatinggenreDict {
        deviatinggenres += [Genre(name: value.name, movies: value.movies, totalmystars: value.totalmystars, myrating: value.myrating, totalwebstars: value.totalwebstars, webrating: value.webrating, deviation: value.deviation)]
      }
      GenreDataSource().saver(source: deviatinggenres, destination: "deviatinggenrestatlist")
  
      /*mostactor1 = mostactorDict[0].0
      mostactor2 = mostactorDict[1].0
      mostactor3 = mostactorDict[2].0
      bestactor1 = bestactorDict[0].0
      bestactor2 = bestactorDict[1].0
      bestactor3 = bestactorDict[2].0
      vipactor1 = vipactorDict[0].0
      vipactor2 = vipactorDict[1].0
      vipactor3 = vipactorDict[2].0
      devactor1 = deviatingactorDict[0].0
      devactor2 = deviatingactorDict[1].0
      devactor3 = deviatingactorDict[2].0

      mostdirector1 = mostdirectorDict[0].0
      mostdirector2 = mostdirectorDict[1].0
      mostdirector3 = mostdirectorDict[2].0
      bestdirector1 = bestdirectorDict[0].0
      bestdirector2 = bestdirectorDict[1].0
      bestdirector3 = bestdirectorDict[2].0
      devdirector1 = deviatingdirectorDict[0].0
      devdirector2 = deviatingdirectorDict[1].0
      devdirector3 = deviatingdirectorDict[2].0

      mostgenre1 = mostgenreDict[0].0
      mostgenre2 = mostgenreDict[1].0
      mostgenre3 = mostgenreDict[2].0
      bestgenre1 = bestgenreDict[0].0
      bestgenre2 = bestgenreDict[1].0
      bestgenre3 = bestgenreDict[2].0
      devgenre1 = deviatinggenreDict[0].0
      devgenre2 = deviatinggenreDict[1].0
      devgenre3 = deviatinggenreDict[2].0

      mostoscar1 = mostoscarmovieDict[0].0
      mostoscar2 = mostoscarmovieDict[1].0
      mostoscar3 = mostoscarmovieDict[2].0

      mostmovie1 = mostmovieDict[0].0
      mostmovie2 = mostmovieDict[1].0
      mostmovie3 = mostmovieDict[2].0*/
      
      if UserDefaults.standard.bool(forKey: "movieadded") && !UserDefaults.standard.bool(forKey: "filter") {
          UserDefaults.standard.set(mostactor1, forKey: "oldmostactor1")
          UserDefaults.standard.set(mostactor2, forKey: "oldmostactor2")
          UserDefaults.standard.set(mostactor3, forKey: "oldmostactor3")
          UserDefaults.standard.set(bestactor1, forKey: "oldbestactor1")
          UserDefaults.standard.set(bestactor2, forKey: "oldbestactor2")
          UserDefaults.standard.set(bestactor3, forKey: "oldbestactor3")
          UserDefaults.standard.set(vipactor1, forKey: "oldvipactor1")
          UserDefaults.standard.set(vipactor2, forKey: "oldvipactor2")
          UserDefaults.standard.set(vipactor3, forKey: "oldvipactor3")
          UserDefaults.standard.set(devactor1, forKey: "olddevactor1")
          UserDefaults.standard.set(devactor2, forKey: "olddevactor2")
          UserDefaults.standard.set(devactor3, forKey: "olddevactor3")
          UserDefaults.standard.set(mostdirector1, forKey: "oldmostdirector1")
          UserDefaults.standard.set(mostdirector2, forKey: "oldmostdirector2")
          UserDefaults.standard.set(mostdirector3, forKey: "oldmostdirector3")
          UserDefaults.standard.set(bestdirector1, forKey: "oldbestdirector1")
          UserDefaults.standard.set(bestdirector2, forKey: "oldbestdirector2")
          UserDefaults.standard.set(bestdirector3, forKey: "oldbestdirector3")
          UserDefaults.standard.set(devdirector1, forKey: "olddevdirector1")
          UserDefaults.standard.set(devdirector2, forKey: "olddevdirector2")
          UserDefaults.standard.set(devdirector3, forKey: "olddevdirector3")
          UserDefaults.standard.set(mostgenre1, forKey: "oldmostgenre1")
          UserDefaults.standard.set(mostgenre2, forKey: "oldmostgenre2")
          UserDefaults.standard.set(mostgenre3, forKey: "oldmostgenre3")
          UserDefaults.standard.set(bestgenre1, forKey: "oldbestgenre1")
          UserDefaults.standard.set(bestgenre2, forKey: "oldbestgenre2")
          UserDefaults.standard.set(bestgenre3, forKey: "oldbestgenre3")
          UserDefaults.standard.set(deviatinggenre1, forKey: "olddeviatinggenre1")
          UserDefaults.standard.set(deviatinggenre2, forKey: "olddeviatinggenre2")
          UserDefaults.standard.set(deviatinggenre3, forKey: "olddeviatinggenre3")
          UserDefaults.standard.set(false, forKey: "movieadded")
      }

      // DISPLAY ACTOR STATS
      let mostactor1 = mostactorDict[0].0
      let mostactor2 = mostactorDict[1].0
      let mostactor3 = mostactorDict[2].0
      mostWatchedActor1Label.text! = mostactor1 + podiumnameemoji(mode: "mostactor", name: mostactor1, number: 1)
      mostWatchedActor1XLabel.text = statline(item: mostactor1)
      mostWatchedActor1Image.image = ImageDataSource().imageFinder(imagename: mostactor1)
      mostWatchedActor2Label.text = mostactor2  + podiumnameemoji(mode: "mostactor", name: mostactor2, number: 2)
      mostWatchedActor2XLabel.text = statline(item: mostactor2)
      mostWatchedActor2Image.image = ImageDataSource().imageFinder(imagename: mostactor2)
      mostWatchedActor3Label.text = mostactor3 + podiumnameemoji(mode: "mostactor", name: mostactor3, number: 3)
      mostWatchedActor3XLabel.text = statline(item: mostactor3)
      mostWatchedActor3Image.image = ImageDataSource().imageFinder(imagename: mostactor3)
      let bestactor1 = bestactorDict[0].0
      let bestactor2 = bestactorDict[1].0
      let bestactor3 = bestactorDict[2].0
      bestActor1Label.text = bestactor1 + podiumnameemoji(mode: "bestactor", name: bestactor1, number: 1)
      bestActor1XLabel.text = statline(item: bestactor1)
      bestActor1Image.image = ImageDataSource().imageFinder(imagename: bestactor1)
      bestActor2Label.text = bestactor2 + podiumnameemoji(mode: "bestactor", name: bestactor2, number: 2)
      bestActor2XLabel.text = statline(item: bestactor2)
      bestActor2Image.image = ImageDataSource().imageFinder(imagename: bestactor2)
      bestActor3Label.text = bestactor3 + podiumnameemoji(mode: "bestactor", name: bestactor3, number: 3)
      bestActor3XLabel.text = statline(item: bestactor3)
      bestActor3Image.image = ImageDataSource().imageFinder(imagename: bestactor3)
      let vipactor1 = vipactorDict[0].0
      let vipactor2 = vipactorDict[1].0
      let vipactor3 = vipactorDict[2].0
      vipActor1Label.text = vipactor1 + podiumnameemoji(mode: "vipactor", name: vipactor1, number: 1)
      vipActor1XLabel.text = statline(item: vipactor1)
      vipActor1Image.image = ImageDataSource().imageFinder(imagename: vipactor1)
      vipActor2Label.text = vipactor2 + podiumnameemoji(mode: "vipactor", name: vipactor2, number: 2)
      vipActor2XLabel.text = statline(item: vipactor2)
      vipActor2Image.image = ImageDataSource().imageFinder(imagename: vipactor2)
      vipActor3Label.text = vipactor3 + podiumnameemoji(mode: "vipactor", name: vipactor3, number: 3)
      vipActor3XLabel.text = statline(item: vipactor3)
      vipActor3Image.image = ImageDataSource().imageFinder(imagename: vipactor3)
      let devactor1 = deviatingactorDict[0].0
      let devactor2 = deviatingactorDict[1].0
      let devactor3 = deviatingactorDict[2].0
      devActor1Label.text = devactor1 + podiumnameemoji(mode: "devactor", name: devactor1, number: 1)
      devActor1XLabel.text = statline(item: devactor1)
      devActor1Image.image = ImageDataSource().imageFinder(imagename: devactor1)
      devActor2Label.text = devactor2 + podiumnameemoji(mode: "devactor", name: devactor2, number: 2)
      devActor2XLabel.text = statline(item: devactor2)
      devActor2Image.image = ImageDataSource().imageFinder(imagename: devactor2)
      devActor3Label.text = devactor3 + podiumnameemoji(mode: "devactor", name: devactor3, number: 3)
      devActor3XLabel.text = statline(item: devactor3)
      devActor3Image.image = ImageDataSource().imageFinder(imagename: devactor3)
      
      // DISPLAY DIRECTOR STATS
      let mostdirector1 = mostdirectorDict[0].0
      let mostdirector2 = mostdirectorDict[1].0
      let mostdirector3 = mostdirectorDict[2].0
      mostWatchedDirector1Label.text = statline(item: mostdirector1)
      mostWatchedDirector2Label.text = statline(item: mostdirector2)
      mostWatchedDirector3Label.text = statline(item: mostdirector3)
      let bestdirector1 = bestdirectorDict[0].0
      let bestdirector2 = bestdirectorDict[1].0
      let bestdirector3 = bestdirectorDict[2].0
      bestDirector1Label.text = statline(item: bestdirector1)
      bestDirector2Label.text = statline(item: bestdirector2)
      bestDirector3Label.text = statline(item: bestdirector3)
      let devdirector1 = deviatingdirectorDict[0].0
      let devdirector2 = deviatingdirectorDict[1].0
      let devdirector3 = deviatingdirectorDict[2].0
      devDirector1Label.text = statline(item: devdirector3)
      devDirector2Label.text = statline(item: devdirector3)
      devDirector3Label.text = statline(item: devdirector3)
      
      // DISPLAY GENRE STATS
      let mostgenre1 = mostgenreDict[0].0
      let mostgenre2 = mostgenreDict[1].0
      let mostgenre3 = mostgenreDict[2].0
      mostWatchedGenre1Label.text = statline(item: mostgenre1)
      mostWatchedGenre2Label.text = statline(item: mostgenre2)
      mostWatchedGenre3Label.text = statline(item: mostgenre3)
      let bestgenre1 = bestgenreDict[0].0
      let bestgenre2 = bestgenreDict[1].0
      let bestgenre3 = bestgenreDict[2].0
      bestGenre1Label.text = statline(item: bestgenre1)
      bestGenre2Label.text = statline(item: bestgenre2)
      bestGenre3Label.text = statline(item: bestgenre3)
      let devgenre1 = deviatinggenreDict[0].0
      let devgenre2 = deviatinggenreDict[1].0
      let devgenre3 = deviatinggenreDict[2].0
      deviatingGenre1Label.text = statline(item: devgenre1)
      deviatingGenre2Label.text = statline(item: devgenre2)
      deviatingGenre3Label.text = statline(item: devgenre3)
      
      // DISPLAY OSCAR STATS
      let mostoscar1 = mostoscarmovieDict[0].0
      let mostoscar2 = mostoscarmovieDict[1].0
      let mostoscar3 = mostoscarmovieDict[2].0
      oscar1Label.text = "🥇" + mostoscar1 + " (🏆\(mostoscarmovieDict[0].1.oscars.split(separator: ", ").count))"
      oscar2Label.text = "🥈" + mostoscar2 + " (🏆\(mostoscarmovieDict[1].1.oscars.split(separator: ", ").count))"
      oscar3Label.text = "🥉" + mostoscar3 + " (🏆\(mostoscarmovieDict[2].1.oscars.split(separator: ", ").count))"
                    
      // DISPLAY MOST WATCHED MOVIE STATS
      let mostmovie1 = mostmovieDict[0].0
      let mostmovie2 = mostmovieDict[1].0
      let mostmovie3 = mostmovieDict[2].0
      mostWatchedMovie1Label.text = "🥇" + mostmovie1 + " (👀\(String(mostmovieDict[0].1.viewcount)))"
      mostWatchedMovie2Label.text = "🥈" + mostmovie2 + " (👀\(String(mostmovieDict[1].1.viewcount)))"
      mostWatchedMovie3Label.text = "🥉" + mostmovie3 + " (👀\(String(mostmovieDict[2].1.viewcount)))"
    
      // DISPLAY RATINGS STATS
      var ratings: [Int] = []
      var oneStarMovieCount = 0
      var oneStarTotalLength = 0
      var oneStarTotalYear = 0
      var twoStarMovieCount = 0
      var twoStarTotalLength = 0
      var twoStarTotalYear = 0
      var threeStarMovieCount = 0
      var threeStarTotalLength = 0
      var threeStarTotalYear = 0
      var fourStarMovieCount = 0
      var fourStarTotalLength = 0
      var fourStarTotalYear = 0
      var fiveStarMovieCount = 0
      var fiveStarTotalLength = 0
      var fiveStarTotalYear = 0
      var fiftiesMovieCount = 0
      var fiftiesTotalStars = 0
      var sixtiesMovieCount = 0
      var sixtiesTotalStars = 0
      var seventiesMovieCount = 0
      var seventiesTotalStars = 0
      var eightiesMovieCount = 0
      var eightiesTotalStars = 0
      var ninetiesMovieCount = 0
      var ninetiesTotalStars = 0
      var zeroesMovieCount = 0
      var zeroesTotalStars = 0
      var tensMovieCount = 0
      var tensTotalStars = 0
      var twentiesMovieCount = 0
      var twentiesTotalStars = 0
      for movie in movies {
          ratings += [movie.myrating]
          switch movie.myrating {
              case 1:
                  oneStarMovieCount += 1
                  oneStarTotalLength += movie.length
                  oneStarTotalYear += Int(movie.releaseYear)!
              case 2:
                  twoStarMovieCount += 1
                  twoStarTotalLength += movie.length
                  twoStarTotalYear += Int(movie.releaseYear)!
              case 3:
                  threeStarMovieCount += 1
                  threeStarTotalLength += movie.length
                  threeStarTotalYear += Int(movie.releaseYear)!
              case 4:
                  fourStarMovieCount += 1
                  fourStarTotalLength += movie.length
                  fourStarTotalYear += Int(movie.releaseYear)!
              case 5, 6:
                  fiveStarMovieCount += 1
                  fiveStarTotalLength += movie.length
                  fiveStarTotalYear += Int(movie.releaseYear)!
              default: break
          }
          switch Int(movie.releaseYear)! {
              case 1950, 1951, 1952, 1953, 1954, 1955, 1956, 1957, 1958, 1959:
                  fiftiesMovieCount += 1
                  fiftiesTotalStars += movie.myrating
              case 1960, 1961, 1962, 1963, 1964, 1965, 1966, 1967, 1968, 1969:
                  sixtiesMovieCount += 1
                  sixtiesTotalStars += movie.myrating
              case 1970, 1971, 1972, 1973, 1974, 1975, 1976, 1977, 1978, 1979:
                  seventiesMovieCount += 1
                  seventiesTotalStars += movie.myrating
              case 1980, 1981, 1982, 1983, 1984, 1985, 1986, 1987, 1988, 1989:
                  eightiesMovieCount += 1
                  eightiesTotalStars += movie.myrating
              case 1990, 1991, 1992, 1993, 1994, 1995, 1996, 1997, 1998, 1999:
                  ninetiesMovieCount += 1
                  ninetiesTotalStars += movie.myrating
              case 2000, 2001, 2002, 2003, 2004, 2005, 2006, 2007, 2008, 2009:
                  zeroesMovieCount += 1
                  zeroesTotalStars += movie.myrating
              case 2010, 2011, 2012, 2013, 2014, 2015, 2016, 2017, 2018, 2019:
                  tensMovieCount += 1
                  tensTotalStars += movie.myrating
              case 2020, 2021, 2022, 2023, 2024, 2025, 2026, 2027, 2028, 2029:
                  twentiesMovieCount += 1
                  twentiesTotalStars += movie.myrating
              default: break
          }
      }
      if movies.count > 0 {
          let rating1p = ratings.filter({$0 == 1}).count * 100 / movies.count
          let rating2p = ratings.filter({$0 == 2}).count * 100 / movies.count
          let rating3p = ratings.filter({$0 == 3}).count * 100 / movies.count
          let rating4p = ratings.filter({$0 == 4}).count * 100 / movies.count
          let rating5p = (ratings.filter({$0 == 5}).count + ratings.filter({$0 == 6}).count) * 100 / movies.count
          percentageLabels = [pLabel1, pLabel2, pLabel3, pLabel4, pLabel5, pLabel6, pLabel7, pLabel8, pLabel9, pLabel10, pLabel11, pLabel12, pLabel13, pLabel14, pLabel15, pLabel16, pLabel17, pLabel18, pLabel19, pLabel20, pLabel21, pLabel22, pLabel23, pLabel24, pLabel25, pLabel26, pLabel27, pLabel28, pLabel29, pLabel30, pLabel31, pLabel32, pLabel33, pLabel34, pLabel35, pLabel36, pLabel37, pLabel38, pLabel39, pLabel40, pLabel41, pLabel42, pLabel43, pLabel44, pLabel45, pLabel46, pLabel47, pLabel48, pLabel49, pLabel50, pLabel51, pLabel52, pLabel53, pLabel54, pLabel55, pLabel56, pLabel57, pLabel58, pLabel59, pLabel60, pLabel61, pLabel62, pLabel63, pLabel64, pLabel65, pLabel66, pLabel67, pLabel68, pLabel69, pLabel70, pLabel71, pLabel72, pLabel73, pLabel74, pLabel75, pLabel76, pLabel77, pLabel78, pLabel79, pLabel80, pLabel81, pLabel82, pLabel83, pLabel84, pLabel85, pLabel86, pLabel87, pLabel88, pLabel89, pLabel90, pLabel91, pLabel92, pLabel93, pLabel94, pLabel95, pLabel96, pLabel97, pLabel98, pLabel99, pLabel100]
          for i in 1...rating1p + 1 {
            percentageLabels[i-1].backgroundColor = UIColor.red
          }
          for j in rating1p + 1...rating1p + rating2p + 1 {
            percentageLabels[j-1].backgroundColor = UIColor.orange
          }
          for k in rating1p + rating2p + 1...rating1p + rating2p + rating3p + 1 {
            percentageLabels[k-1].backgroundColor = UIColor.systemBlue
          }
          for l in rating1p + rating2p + rating3p + 1...rating1p + rating2p + rating3p + rating4p + 1 {
            percentageLabels[l-1].backgroundColor = UIColor.systemTeal
          }
          for m in rating1p + rating2p + rating3p + rating4p + 1...rating1p + rating2p + rating3p + rating4p + rating5p + 1 {
            percentageLabels[m-1].backgroundColor = UIColor.green
          }
          oneStarPLabel.text = "\(rating1p)%"
          oneStarPLabel.textColor = UIColor.red
          oneStarDurationLabel.text = "Ø\(oneStarTotalLength / oneStarMovieCount)'"
          oneStarYearLabel.text = "Ø\(Int(round(Float(oneStarTotalYear) / Float(oneStarMovieCount))))"
          twoStarPLabel.text = "\(rating2p)%"
          twoStarPLabel.textColor = UIColor.orange
          twoStarDurationLabel.text = "Ø\(twoStarTotalLength / twoStarMovieCount)'"
          twoStarYearLabel.text = "Ø\(Int(round(Float(twoStarTotalYear) / Float(twoStarMovieCount))))"
          threeStarPLabel.text = "\(rating3p)%"
          threeStarPLabel.textColor = UIColor.systemBlue
          threeStarDurationLabel.text = "Ø\(threeStarTotalLength / threeStarMovieCount)'"
          threeStarYearLabel.text = "Ø\(Int(round(Float(threeStarTotalYear) / Float(threeStarMovieCount))))"
          fourStarPLabel.text = "\(rating4p)%"
          fourStarPLabel.textColor = UIColor.systemTeal
          fourStarDurationLabel.text = "Ø\(fourStarTotalLength / fourStarMovieCount)'"
          fourStarYearLabel.text = "Ø\(Int(round(Float(fourStarTotalYear) / Float(fourStarMovieCount))))"
          fiveStarPLabel.text = "\(rating5p)%"
          fiveStarPLabel.textColor = UIColor.green
          fiveStarDurationLabel.text = "Ø\(fiveStarTotalLength / fiveStarMovieCount)'"
          fiveStarYearLabel.text = "Ø\(Int(round(Float(fiveStarTotalYear) / Float(fiveStarMovieCount))))"
      }
    
      // DISPLAY DECADE STATS
      fiftiesRatingLabel.text = "⭐️\(String(format: "%.1f", Float(fiftiesTotalStars) / Float(fiftiesMovieCount)))"
      sixtiesRatingLabel.text = (sixtiesMovieCount != 0) ? "⭐️\(String(format: "%.1f", Float(sixtiesTotalStars) / Float(sixtiesMovieCount)))" : "–"
      seventiesRatingLabel.text = "⭐️\(String(format: "%.1f", Float(seventiesTotalStars) / Float(seventiesMovieCount)))"
      eightiesRatingLabel.text = "⭐️\(String(format: "%.1f", Float(eightiesTotalStars) / Float(eightiesMovieCount)))"
      ninetiesRatingLabel.text = "⭐️\(String(format: "%.1f", Float(ninetiesTotalStars) / Float(ninetiesMovieCount)))"
      zeroesRatingLabel.text = "⭐️\(String(format: "%.1f", Float(zeroesTotalStars) / Float(zeroesMovieCount)))"
      tensRatingLabel.text = "⭐️\(String(format: "%.1f", Float(tensTotalStars) / Float(tensMovieCount)))"
      twentiesRatingLabel.text = "⭐️\(String(format: "%.1f", Float(twentiesTotalStars) / Float(twentiesMovieCount)))"
  }
  
  func statline(item: String) -> String {
      var statString = ""
      var n: Int = Int(item.last) - 1
      var medal = ""
      switch n {
          case 1:
              medal = "🥇"
          case 2:
              medal = "🥈"
          case 3:
              medal = "🥉"
          default:
              break
      }
      if item.contains("mostactor") {
          statString = "🎥\(mostactorDict[n].1.movies.count)" + statsemoji(mode: "moviecount", name: item, role: "actor", number: Float(mostactorDict[n].1.movies.count)) + "⭐️\(String(format: "%.1f", Float(mostactorDict[n].1.totalmystars) / Float(mostactorDict[n].1.movies.count)))" + statsemoji(mode: "staraverage", name: mostactor1, role: "actor", number: Float(mostactorDict[n].1.totalmystars) / Float(mostactorDict[n].1.movies.count))
      } else if item.contains("bestactor") {
          statString = "⭐️\(String(format: "%.1f", Float(bestactorDict[n].1.totalmystars) / Float(bestactorDict[n].1.movies.count)))" + statsemoji(mode: "staraverage", name: item, role: "actor", number: Float(bestactorDict[n].1.totalmystars) / Float(bestactorDict[n].1.movies.count)) + "🎥\(bestactorDict[n].1.movies.count)" + statsemoji(mode: "moviecount", name: item, role: "actor", number: Float(bestactorDict[n].1.movies.count))
      } else if item.contains("vipactor") {
          statString = "#️⃣\(String(format: "%.1f", vipactorDict[n].1.uniqueroleposition))" + statsemoji(mode: "moviecount", name: item, role: "actor", number: Float(vipactorDict[n].1.movies.count)) + "⭐️\(String(format: "%.1f", Float(vipactorDict[n].1.totalmystars) / Float(vipactorDict[n].1.movies.count)))" + statsemoji(mode: "staraverage", name: item, role: "actor", number: Float(vipactorDict[n].1.totalmystars) / Float(vipactorDict[n].1.movies.count))
      } else if item.contains("devactor") {
          statString = "📊\((deviatingactorDict[n].1.deviation < 0) ? String(format: "%.1f", deviatingactorDict[n].1.deviation / Float(deviatingactorDict[n].1.movies.count)) : "+" + String(format: "%.1f", deviatingactorDict[n].1.deviation / Float(deviatingactorDict[n].1.movies.count)))" + "⭐️\(String(format: "%.1f", Float(deviatingactorDict[n].1.totalmystars) / Float(deviatingactorDict[n].1.movies.count)))" + statsemoji(mode: "staraverage", name:item, role: "actor", number: Float(deviatingactorDict[n].1.totalmystars) / Float(deviatingactorDict[n].1.movies.count))
      } else if item.contains("mostdirector") {
          statString = medal + item + " (🎥\(mostdirectorDict[n].1.movies.count)"
          + statsemoji(mode: "moviecount", name: item, role: "director", number: Float(mostdirectorDict[n].1.movies.count))
          + "⭐️\(String(format: "%.1f", Float(mostdirectorDict[n].1.totalmystars) / Float(mostdirectorDict[n].1.movies.count)))"
          + statsemoji(mode: "staraverage", name: item, role: "director", number: Float(mostdirectorDict[n].1.totalmystars) / Float(mostdirectorDict[n].1.movies.count)) + "📊\((mostdirectorDict[n].1.deviation < 0) ? String(format: "%.1f", mostdirectorDict[n].1.deviation / Float(mostdirectorDict[n].1.movies.count)) : "+" + String(format: "%.1f", mostdirectorDict[n].1.deviation / Float(mostdirectorDict[n].1.movies.count))))" + podiumnameemoji(mode: "mostdirector", name: item, number: n + 1)
      } else if item.contains("bestdirector") {
          statString = medal + item + " (⭐️\(String(format: "%.1f", Float(bestdirectorDict[n].1.totalmystars) / Float(bestdirectorDict[n].1.movies.count)))"
          + statsemoji(mode: "staraverage", name: item, role: "director", number: Float(bestdirectorDict[n].1.totalmystars) / Float(bestdirectorDict[0].1.movies.count)) + "📊\((bestdirectorDict[n].1.deviation < 0) ? String(format: "%.1f", bestdirectorDict[n].1.deviation / Float(bestdirectorDict[n].1.movies.count)) : "+" + String(format: "%.1f", bestdirectorDict[n].1.deviation / Float(bestdirectorDict[n].1.movies.count)))" + " 🎥\(bestdirectorDict[n].1.movies.count)"
          + statsemoji(mode: "moviecount", name: item, role: "director", number: Float(bestdirectorDict[n].1.movies.count)) + ")" + podiumnameemoji(mode: "bestdirector", name: item, number: n + 1)
      } else if item.contains("devdirector") {
          statString = medal + item + " (📊\((deviatingdirectorDict[n].1.deviation < 0) ? String(format: "%.1f", deviatingdirectorDict[n].1.deviation / Float(deviatingdirectorDict[n].1.movies.count)) : "+" + String(format: "%.1f", deviatingdirectorDict[n].1.deviation / Float(deviatingdirectorDict[n].1.movies.count)))" + "⭐️\(String(format: "%.1f", Float(deviatingdirectorDict[n].1.totalmystars) / Float(deviatingdirectorDict[n].1.movies.count)))"
          + statsemoji(mode: "staraverage", name: item, role: "director", number: Float(deviatingdirectorDict[0].1.totalmystars) / Float(deviatingdirectorDict[n].1.movies.count)) + " 🎥\(deviatingdirectorDict[n].1.movies.count)"
          + statsemoji(mode: "moviecount", name: item, role: "director", number: Float(deviatingdirectorDict[0].1.movies.count)) + ")" + podiumnameemoji(mode: "devdirector", name: item, number: n + 1)
      } else if item.contains("mostgenre") {
          statString = medal + item + " (🎥\(mostgenreDict[n].1.movies.count)"
          + statsemoji(mode: "moviecount", name: item, role: "genre", number: Float(mostgenreDict[n].1.movies.count))
          + "⭐️\(String(format: "%.1f", Float(mostgenreDict[n].1.totalmystars) / Float(mostgenreDict[n].1.movies.count)))"
          + statsemoji(mode: "staraverage", name: item, role: "genre", number: Float(mostgenreDict[n].1.totalmystars) / Float(mostgenreDict[n].1.movies.count)) + "📊\((mostgenreDict[n].1.deviation < 0) ? String(format: "%.1f", mostgenreDict[n].1.deviation / Float(mostgenreDict[n].1.movies.count)) : "+" + String(format: "%.1f", mostgenreDict[n].1.deviation / Float(mostgenreDict[n].1.movies.count))))"
          + podiumnameemoji(mode: "mostgenre", name: item, number: n + 1)
      } else if item.contains("bestgenre") {
          statString = medal + item + " (🎥\(bestgenreDict[n].1.movies.count)"
          + statsemoji(mode: "moviecount", name: item, role: "genre", number: Float(bestgenreDict[n].1.movies.count))
          + "⭐️\(String(format: "%.1f", Float(bestgenreDict[n].1.totalmystars) / Float(bestgenreDict[n].1.movies.count)))"
          + statsemoji(mode: "staraverage", name: item, role: "genre", number: Float(bestgenreDict[n].1.totalmystars) / Float(bestgenreDict[n].1.movies.count)) + "📊\((bestgenreDict[n].1.deviation < 0) ? String(format: "%.1f", bestgenreDict[n].1.deviation / Float(bestgenreDict[n].1.movies.count)) : "+" + String(format: "%.1f", bestgenreDict[n].1.deviation / Float(bestgenreDict[n].1.movies.count))))"
        + podiumnameemoji(mode: "bestgenre", name: item, number: n + 1)
      } else if item.contains("devgenre") {
          statString = medal + item + " (🎥\(deviatinggenreDict[n].1.movies.count)"
          + statsemoji(mode: "moviecount", name: item, role: "genre", number: Float(deviatinggenreDict[n].1.movies.count))
          + "⭐️\(String(format: "%.1f", Float(deviatinggenreDict[n].1.totalmystars) / Float(deviatinggenreDict[n].1.movies.count)))"
          + statsemoji(mode: "staraverage", name: item, role: "genre", number: Float(deviatinggenreDict[n].1.totalmystars) / Float(deviatinggenreDict[n].1.movies.count)) + "📊\((deviatinggenreDict[n].1.deviation < 0) ? String(format: "%.1f", deviatinggenreDict[n].1.deviation / Float(deviatinggenreDict[n].1.movies.count)) : "+" + String(format: "%.1f", deviatinggenreDict[n].1.deviation / Float(deviatinggenreDict[n].1.movies.count))))"
          + podiumnameemoji(mode: "deviatinggenre", name: item, number: n + 1)
      }
      return statString
  }
	
	func singlenameemoji(mode: String, name: String) -> String {
			let oldname = UserDefaults.standard.string(forKey: mode)
				if oldname != name {
					return "✨"
				} else {
					return ""
				}
	}
	
	func statsemoji(mode: String, name: String, role: String, number: Float) -> String {
		var oldnumber:Float = 0.0
		let oldmovies = MoviesDataSource().loader(source: "oldmovies2")
    let oldshows = ShowsDataSource().loader(source: "oldshows2")
    let oldmoviesandshows = ((oldmovies + oldshows).sorted { $0.addedDate > $1.addedDate })
		if mode == "moviecount" {
			var moviecount = 0
			for movie in oldmoviesandshows {
					switch role {
						case "actor":
							if movie.actors.contains(name) {
								moviecount += 1
							}
						case "director":
							if movie.director.contains(name) {
								moviecount += 1
							}
						case "genre":
							if movie.genre.contains(name) {
								moviecount += 1
							}
						default:
						break
					}
			}
			oldnumber = Float(moviecount)
		} else if mode == "staraverage" {
			var totalstars = 0
			var moviecount = 0
			for movie in oldmoviesandshows {
					switch role {
						case "actor":
							if movie.actors.contains(name) {
								totalstars += movie.myrating
								moviecount += 1
							}
						case "director":
							if movie.director.contains(name) {
								totalstars += movie.myrating
								moviecount += 1
							}
						case "genre":
							if movie.genre.contains(name) {
								totalstars += movie.myrating
								moviecount += 1
							}
						default:
						break
					}
			}
			if moviecount > 0 {
					oldnumber = Float(totalstars) / Float(moviecount)
			} else {
				oldnumber = 0.0
			}
		}
		if oldnumber < number {
			return "🔼"
		} else if oldnumber == number {
			return "▶️"
		} else if oldnumber > number {
			return "🔽"
		} else {
			return ""
		}
	}
	
	func podiumnameemoji(mode: String, name: String, number: Int) -> String {
			let oldname1 = UserDefaults.standard.string(forKey: mode + "1")
			let oldname2 = UserDefaults.standard.string(forKey: mode + "2")
			let oldname3 = UserDefaults.standard.string(forKey: mode + "3")
			if number == 1 {
					if oldname1 == name {
						return " ►"
					} else if oldname2 == name || oldname3 == name {
						return " ▲"
					} else {
						return " ✨"
					}
			} else if number == 2 {
				if oldname1 == name {
					return " ▼"
				} else if oldname2 == name {
					return " ►"
				} else if oldname3 == name {
					return " ▲"
				} else {
					return " ✨"
				}
			} else if number == 3 {
				if oldname1 == name || oldname2 == name {
					return " ▼"
				} else if oldname3 == name {
					return " ►"
				} else {
					return " ✨"
				}
			} else {
				return ""
			}
	}
  
  func personwasinpreviousparts(person: String, isActor: Bool, movie: Movie, list: [Movie]) -> Bool {
      var wasinpreviousparts = false
      var matchcount = 0
      var words: [String] = []
      for word in movie.title.split(separator: " ") {
          if word != "Die" && word != "The" && !(word.prefix(2) == "(S") {
              words += [String(word)]
          }
      }
      outerloop: for m in list {
          for word in words {
              if m.title.contains(word) {
                  matchcount += 1
                  if (matchcount == 1 && (m.title.prefix(m.title.distance(
                    from: m.title.startIndex, to: m.title.range(
                      of: word)!.lowerBound)).components(separatedBy: " ").count ==
                        movie.title.prefix(movie.title.distance(
                          from: movie.title.startIndex, to: movie.title.range(
                            of: word)!.lowerBound)).components(separatedBy: " ").count)) ||
                      matchcount == 2 {  // one matching term with same index or two matching terms
                      wasinpreviousparts = true
                      break outerloop
                  }
              }
          }
          matchcount = 0
      }
      return wasinpreviousparts
  }
  
  override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
      tableView.deselectRow(at: indexPath, animated: true)
  }
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?)  {
      if segue.identifier == "MostOscarmoviePressed" {
          UserDefaults.standard.set("mostoscarmovie", forKey: "statlisttype")
      } else if segue.identifier == "MostMoviePressed" {
          UserDefaults.standard.set("mostwatchedmovie", forKey: "statlisttype")
      } else if segue.identifier == "MostActorPressed" {
          UserDefaults.standard.set("mostactor", forKey: "statlisttype")
      } else if segue.identifier == "BestActorPressed" {
          UserDefaults.standard.set("bestactor", forKey: "statlisttype")
      } else if segue.identifier == "VIPActorPressed" {
          UserDefaults.standard.set("vipactor", forKey: "statlisttype")
      } else if segue.identifier == "DeviatingActorPressed" {
          UserDefaults.standard.set("devactor", forKey: "statlisttype")
      } else if segue.identifier == "MostDirectorPressed" {
          UserDefaults.standard.set("mostdirector", forKey: "statlisttype")
      } else if segue.identifier == "BestDirectorPressed" {
          UserDefaults.standard.set("bestdirector", forKey: "statlisttype")
      } else if segue.identifier == "DeviatingDirectorPressed" {
          UserDefaults.standard.set("devdirector", forKey: "statlisttype")
      } else if segue.identifier == "MostGenrePressed" {
          UserDefaults.standard.set("mostgenre", forKey: "statlisttype")
      } else if segue.identifier == "BestGenrePressed" {
          UserDefaults.standard.set("bestgenre", forKey: "statlisttype")
      } else if segue.identifier == "DeviatingGenrePressed" {
          UserDefaults.standard.set("devgenre", forKey: "statlisttype")
    }
  }
  
  @IBAction func mostactor1Tapped(_ sender: UITapGestureRecognizer) {
      UserDefaults.standard.setValue(mostWatchedActor1Label.text!.dropLast(2), forKey: "pressedactor")
      self.performSegue(withIdentifier: "StatsActorDetails", sender: StatsViewController())
  }
  
  @IBAction func mostactor2Tapped(_ sender: UITapGestureRecognizer) {
      UserDefaults.standard.setValue(mostWatchedActor2Label.text!.dropLast(2), forKey: "pressedactor")
      self.performSegue(withIdentifier: "StatsActorDetails", sender: StatsViewController())
  }
  
  @IBAction func mostactor3Tapped(_ sender: UITapGestureRecognizer) {
      UserDefaults.standard.setValue(mostWatchedActor3Label.text!.dropLast(2), forKey: "pressedactor")
      self.performSegue(withIdentifier: "StatsActorDetails", sender: StatsViewController())
  }
  
  @IBAction func bestactor1Tapped(_ sender: UITapGestureRecognizer) {
      UserDefaults.standard.setValue(bestActor1Label.text!.dropLast(2), forKey: "pressedactor")
      self.performSegue(withIdentifier: "StatsActorDetails", sender: StatsViewController())
  }
  
  @IBAction func bestactor2Tapped(_ sender: UITapGestureRecognizer) {
      UserDefaults.standard.setValue(bestActor2Label.text!.dropLast(2), forKey: "pressedactor")
      self.performSegue(withIdentifier: "StatsActorDetails", sender: StatsViewController())
  }
  
  @IBAction func bestactor3Tapped(_ sender: UITapGestureRecognizer) {
      UserDefaults.standard.setValue(bestActor3Label.text!.dropLast(2), forKey: "pressedactor")
      self.performSegue(withIdentifier: "StatsActorDetails", sender: StatsViewController())
  }
  
  @IBAction func vipactor1Tapped(_ sender: UITapGestureRecognizer) {
      UserDefaults.standard.setValue(vipActor1Label.text!.dropLast(2), forKey: "pressedactor")
      self.performSegue(withIdentifier: "StatsActorDetails", sender: StatsViewController())
  }
  
  @IBAction func vipactor2Tapped(_ sender: UITapGestureRecognizer) {
      UserDefaults.standard.setValue(vipActor2Label.text!.dropLast(2), forKey: "pressedactor")
      self.performSegue(withIdentifier: "StatsActorDetails", sender: StatsViewController())
  }
  
  @IBAction func vipactor3Tapped(_ sender: UITapGestureRecognizer) {
      UserDefaults.standard.setValue(vipActor3Label.text!.dropLast(2), forKey: "pressedactor")
      self.performSegue(withIdentifier: "StatsActorDetails", sender: StatsViewController())
  }
  
  @IBAction func devactor1Tapped(_ sender: UITapGestureRecognizer) {
      UserDefaults.standard.setValue(devActor1Label.text!.dropLast(2), forKey: "pressedactor")
      self.performSegue(withIdentifier: "StatsActorDetails", sender: StatsViewController())
  }
  
  @IBAction func devactor2Tapped(_ sender: UITapGestureRecognizer) {
      UserDefaults.standard.setValue(devActor2Label.text!.dropLast(2), forKey: "pressedactor")
      self.performSegue(withIdentifier: "StatsActorDetails", sender: StatsViewController())
  }
  
  @IBAction func devactor3Tapped(_ sender: UITapGestureRecognizer) {
    UserDefaults.standard.setValue(devActor3Label.text!.dropLast(2), forKey: "pressedactor")
      self.performSegue(withIdentifier: "StatsActorDetails", sender: StatsViewController())
  }
  
  @IBAction func mostdirector1Tapped(_ sender: UITapGestureRecognizer) {
      UserDefaults.standard.setValue(mostWatchedDirector1Label.text!.components(separatedBy: " (")[0].dropFirst(1), forKey: "presseddirector")
      self.performSegue(withIdentifier: "StatsDirectorDetails", sender: StatsViewController())
  }
  
  @IBAction func mostdirector2Tapped(_ sender: UITapGestureRecognizer) {
      UserDefaults.standard.setValue(mostWatchedDirector2Label.text!.components(separatedBy: " (")[0].dropFirst(1), forKey: "presseddirector")
      self.performSegue(withIdentifier: "StatsDirectorDetails", sender: StatsViewController())
  }
  
  @IBAction func mostdirector3Tapped(_ sender: UITapGestureRecognizer) {
      UserDefaults.standard.setValue(mostWatchedDirector3Label.text!.components(separatedBy: " (")[0].dropFirst(1), forKey: "presseddirector")
      self.performSegue(withIdentifier: "StatsDirectorDetails", sender: StatsViewController())
  }
  
  @IBAction func bestdirector1Tapped(_ sender: UITapGestureRecognizer) {
      UserDefaults.standard.setValue(bestDirector1Label.text!.components(separatedBy: " (")[0].dropFirst(1), forKey: "presseddirector")
      self.performSegue(withIdentifier: "StatsDirectorDetails", sender: StatsViewController())
  }
  
  @IBAction func bestdirector2Tapped(_ sender: UITapGestureRecognizer) {
      UserDefaults.standard.setValue(bestDirector2Label.text!.components(separatedBy: " (")[0].dropFirst(1), forKey: "presseddirector")
      self.performSegue(withIdentifier: "StatsDirectorDetails", sender: StatsViewController())
  }
  
  @IBAction func bestdirector3Tapped(_ sender: UITapGestureRecognizer) {
      UserDefaults.standard.setValue(bestDirector3Label.text!.components(separatedBy: " (")[0].dropFirst(1), forKey: "presseddirector")
      self.performSegue(withIdentifier: "StatsDirectorDetails", sender: StatsViewController())
  }
  
  @IBAction func devdirector1Tapped(_ sender: UITapGestureRecognizer) {
      UserDefaults.standard.setValue(devDirector1Label.text!.components(separatedBy: " (")[0].dropFirst(1), forKey: "presseddirector")
      self.performSegue(withIdentifier: "StatsDirectorDetails", sender: StatsViewController())
  }
  
  @IBAction func devdirector2Tapped(_ sender: UITapGestureRecognizer) {
      UserDefaults.standard.setValue(devDirector2Label.text!.components(separatedBy: " (")[0].dropFirst(1), forKey: "presseddirector")
      self.performSegue(withIdentifier: "StatsDirectorDetails", sender: StatsViewController())
  }
  
  @IBAction func devdirector3Tapped(_ sender: UITapGestureRecognizer) {
      UserDefaults.standard.setValue(devDirector3Label.text!.components(separatedBy: " (")[0].dropFirst(1), forKey: "presseddirector")
      self.performSegue(withIdentifier: "StatsDirectorDetails", sender: StatsViewController())
  }
  
  @IBAction func mostgenre1Tapped(_ sender: UITapGestureRecognizer) {
      UserDefaults.standard.setValue(mostWatchedGenre1Label.text!.components(separatedBy: " (")[0].dropFirst(1), forKey: "pressedgenre")
      self.performSegue(withIdentifier: "StatsGenreDetails", sender: StatsViewController())
  }
  
  @IBAction func mostgenre2Tapped(_ sender: UITapGestureRecognizer) {
      UserDefaults.standard.setValue(mostWatchedGenre2Label.text!.components(separatedBy: " (")[0].dropFirst(1), forKey: "pressedgenre")
      self.performSegue(withIdentifier: "StatsGenreDetails", sender: StatsViewController())
  }
  
  @IBAction func mostgenre3Tapped(_ sender: UITapGestureRecognizer) {
      UserDefaults.standard.setValue(mostWatchedGenre3Label.text!.components(separatedBy: " (")[0].dropFirst(1), forKey: "pressedgenre")
      self.performSegue(withIdentifier: "StatsGenreDetails", sender: StatsViewController())
  }
  
  @IBAction func bestgenre1Tapped(_ sender: UITapGestureRecognizer) {
      UserDefaults.standard.setValue(bestGenre1Label.text!.components(separatedBy: " (")[0].dropFirst(1), forKey: "pressedgenre")
      self.performSegue(withIdentifier: "StatsGenreDetails", sender: StatsViewController())
  }
  
  @IBAction func bestgenre2Tapped(_ sender: UITapGestureRecognizer) {
      UserDefaults.standard.setValue(bestGenre2Label.text!.components(separatedBy: " (")[0].dropFirst(1), forKey: "pressedgenre")
      self.performSegue(withIdentifier: "StatsGenreDetails", sender: StatsViewController())
  }
  
  @IBAction func bestgenre3Tapped(_ sender: UITapGestureRecognizer) {
      UserDefaults.standard.setValue(bestGenre3Label.text!.components(separatedBy: " (")[0].dropFirst(1), forKey: "pressedgenre")
      self.performSegue(withIdentifier: "StatsGenreDetails", sender: StatsViewController())
  }
  
  @IBAction func devgenre1Tapped(_ sender: UITapGestureRecognizer) {
      UserDefaults.standard.setValue(deviatingGenre1Label.text!.components(separatedBy: " (")[0].dropFirst(1), forKey: "pressedgenre")
      self.performSegue(withIdentifier: "StatsGenreDetails", sender: StatsViewController())
  }
  
  @IBAction func devgenre2Tapped(_ sender: UITapGestureRecognizer) {
      UserDefaults.standard.setValue(deviatingGenre2Label.text!.components(separatedBy: " (")[0].dropFirst(1), forKey: "pressedgenre")
      self.performSegue(withIdentifier: "StatsGenreDetails", sender: StatsViewController())
  }
  
  @IBAction func devgenre3Tapped(_ sender: UITapGestureRecognizer) {
      UserDefaults.standard.setValue(deviatingGenre3Label.text!.components(separatedBy: " (")[0].dropFirst(1), forKey: "pressedgenre")
      self.performSegue(withIdentifier: "StatsGenreDetails", sender: StatsViewController())
  }
  
  @IBAction func oscar1Tapped(_ sender: UITapGestureRecognizer) {
      MemoryDataSource().updateMemoryFor(keys: ["statlisttype", "statlistitemindex", "search", "quote", "searchquote"])
      UserDefaults.standard.setValue(oscar1Label.text!.components(separatedBy: " (")[0].dropFirst(1), forKey: "pressedmovie")
      self.performSegue(withIdentifier: "StatsMovieDetails", sender: StatsViewController())
  }
  
  @IBAction func oscar2Tapped(_ sender: UITapGestureRecognizer) {
      MemoryDataSource().updateMemoryFor(keys: ["statlisttype", "statlistitemindex", "search", "quote", "searchquote"])
      UserDefaults.standard.setValue(oscar2Label.text!.components(separatedBy: " (")[0].dropFirst(1), forKey: "pressedmovie")
      self.performSegue(withIdentifier: "StatsMovieDetails", sender: StatsViewController())
  }
  
  @IBAction func oscar3Tapped(_ sender: UITapGestureRecognizer) {
      MemoryDataSource().updateMemoryFor(keys: ["statlisttype", "statlistitemindex", "search", "quote", "searchquote"])
      UserDefaults.standard.setValue(oscar3Label.text!.components(separatedBy: " (")[0].dropFirst(1), forKey: "pressedmovie")
      self.performSegue(withIdentifier: "StatsMovieDetails", sender: StatsViewController())
  }
  
  @IBAction func mostmovie1Tapped(_ sender: UITapGestureRecognizer) {
      MemoryDataSource().updateMemoryFor(keys: ["statlisttype", "statlistitemindex", "search", "quote", "searchquote"])
      let movieName = mostWatchedMovie1Label.text!.components(separatedBy: " (👀")[0].dropFirst(1)
      UserDefaults.standard.setValue(movieName, forKey: "pressedmovie")
      let movieorshowid = (movieName.contains("(")) ? "StatsShowDetails" : "StatsMovieDetails"
      self.performSegue(withIdentifier: movieorshowid, sender: StatsViewController())
  }
  
  @IBAction func mostmovie2Tapped(_ sender: UITapGestureRecognizer) {
      MemoryDataSource().updateMemoryFor(keys: ["statlisttype", "statlistitemindex", "search", "quote", "searchquote"])
      let movieName = mostWatchedMovie2Label.text!.components(separatedBy: " (👀")[0].dropFirst(1)
      UserDefaults.standard.setValue(movieName, forKey: "pressedmovie")
      let movieorshowid = (movieName.contains("(")) ? "StatsShowDetails" : "StatsMovieDetails"
      self.performSegue(withIdentifier: movieorshowid, sender: StatsViewController())
  }
  
  @IBAction func mostmovie3Tapped(_ sender: UITapGestureRecognizer) {
      MemoryDataSource().updateMemoryFor(keys: ["statlisttype", "statlistitemindex", "search", "quote", "searchquote"])
      let movieName = mostWatchedMovie3Label.text!.components(separatedBy: " (👀")[0].dropFirst(1)
      UserDefaults.standard.setValue(movieName, forKey: "pressedmovie")
      let movieorshowid = (movieName.contains("(")) ? "StatsShowDetails" : "StatsMovieDetails"
      self.performSegue(withIdentifier: movieorshowid, sender: StatsViewController())
  }
  
  @IBAction func imageTapped(_ sender: UITapGestureRecognizer) {
      let imageView = sender.view as! UIImageView
      let newImageView = UIImageView(image: imageView.image)
      newImageView.frame = UIScreen.main.bounds
    newImageView.backgroundColor = .systemBackground
      newImageView.contentMode = .scaleAspectFit
      newImageView.isUserInteractionEnabled = true
      let tap = UITapGestureRecognizer(target: self, action: #selector(dismissFullscreenImage))
      newImageView.addGestureRecognizer(tap)
      self.view.addSubview(newImageView)
      self.navigationController?.isNavigationBarHidden = true
      self.tabBarController?.tabBar.isHidden = true
      self.tableView.scrollToRow(at: IndexPath(row: 0, section: 0), at: .top, animated: true)
      self.tableView.isScrollEnabled = false
  }

  @objc func dismissFullscreenImage(_ sender: UITapGestureRecognizer) {
      self.navigationController?.isNavigationBarHidden = false
      self.tabBarController?.tabBar.isHidden = false
      sender.view?.removeFromSuperview()
      self.navigationController?.isNavigationBarHidden = true
      self.tableView.isScrollEnabled = true
  }
}
