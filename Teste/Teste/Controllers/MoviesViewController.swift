//
//  ViewController.swift
//  Teste
//
//  Created by cassio luciano on 10/07/22.
//

import UIKit
import Kingfisher

class MoviesViewController: UITableViewController, MovieManagerDelegate {
    
    var nowPlayingMovies = [Movie]()
    
    var movieManager = MovieManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
        tableView.register(UINib(nibName: K.MoviesCells.movieCellNibName, bundle: nil), forCellReuseIdentifier: K.MoviesCells.movieCell)
        
        movieManager.delegate = self
        
        movieManager.fetchCategory(for: Query.nowPlaying.rawValue)
    }
    func didFetchMovies(with result: [Movie]) {
        nowPlayingMovies = result
        tableView.reloadData()
    }
    
    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return nowPlayingMovies.count + 0
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
  
            let cell = tableView.dequeueReusableCell(withIdentifier: K.MoviesCells.movieCell, for: indexPath) as! MovieCell
            
            let movie = nowPlayingMovies[indexPath.row - 0]
            
            cell.titleLabel.text = movie.title
            //cell.overviewText.text = movie.description
        
            if let val = movie.rating, let poster = movie.posterPath {
                
                cell.ratingLabel.text = String(val)
                
                let url = URL(string: K.TheMovieDB.imageURL + poster)
                cell.posterImage.kf.setImage(with: url)
            }
      
            cell.releaseDateLabel.text = movie.getReleaseDate()
           

            return cell
        
    }}
