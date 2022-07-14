//
//  ViewControllerSeach.swift
//  Teste
//
//  Created by cassio luciano on 11/07/22.
//

import UIKit

class SearchViewController: UITableViewController, MovieManagerDelegate, UISearchBarDelegate {

  
    @IBOutlet weak var searchBar: UISearchBar!
    
    var results = [Movie]()
    
    var movieManager = MovieManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        movieManager.delegate = self
        searchBar.delegate = self
        
        tableView.keyboardDismissMode = .onDrag
        
        tableView.register(UINib(nibName: K.MoviesCells.movieCellNibName, bundle: nil), forCellReuseIdentifier: K.MoviesCells.movieCell)
    }

    func didFetchMovies(with result: [Movie]) {
        results = result
        
        tableView.reloadData()
    }
    
    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return results.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: K.MoviesCells.movieCell, for: indexPath) as! MovieCell
        
        let movie = results[indexPath.row]
        
        cell.titleLabel.text = movie.title
        
        if let val = movie.rating, let poster = movie.posterPath {
            cell.ratingLabel.text = String(val)
        
            let url = URL(string: K.TheMovieDB.imageURL + poster)
            cell.posterImage.kf.setImage(with: url)
        }
        
        cell.releaseDateLabel.text = movie.releaseDate

        return cell
    }


    
    // MARK: - SearchBar Delegate Methods
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        
        searchBar.endEditing(true)
        
        if let searchText = searchBar.text {
            movieManager.searchMovie(with: searchText)
        }
        
        searchBar.text = ""
    }
}
