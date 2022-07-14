//
//  Constants.swift
//  Teste
//
//  Created by cassio luciano on 12/07/22.
//

import Foundation

struct K {
    
    struct TheMovieDB {
        //cfb0880361a3d7c268d740566f62cc08
        static let apiKey = "?api_key=cfb0880361a3d7c268d740566f62cc08&language=pt-BR"
        static let baseURL = "https://api.themoviedb.org/3"
        static let imageURL = "https://image.tmdb.org/t/p/w500"
    }
    
    struct Segues {
        //static let movieFromGenreSegue = "movieDetailsFromGenres"
        //static let movieDetailsSegue = "movieDetails"
        static let movieFromSearch = "movieFromSearch"
    }
    
  
    struct MoviesCells {
        //static let categoryCell = "categoryCell"
        //static let categoryCellNibName = "CategoryCell"
        
        static let movieCollectionCell = "movieCollectionCell"
        static let movieCollectionCellNibName = "CollectionViewCell"
        
        static let movieCell = "movieCell"
        static let movieCellNibName = "MovieCell"
    }
    
}

enum Query: String {
    case movie = "/movie"
    case nowPlaying = "now_playing"
    case credits = "/credits"
    case recommend = "/recommendations"
    case search = "/search/movie"
    case query = "&query="
    case genres = "/genre/movie/list"
    case discover = "/discover/movie"
    case withGenres = "&with_genres="
}
