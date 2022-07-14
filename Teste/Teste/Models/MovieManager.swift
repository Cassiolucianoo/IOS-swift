//
//  MovieManager.swift
//  Teste
//
//  Created by cassio luciano on 12/07/22.
//

import Foundation
import Alamofire
import SwiftyJSON

protocol MovieManagerDelegate {
    func didFetchMovies(with result: [Movie])
}

struct MovieManager {
    
    let movieBaseUrl = K.TheMovieDB.baseURL + Query.movie.rawValue
    
    var delegate: MovieManagerDelegate?
    
    
    // MARK: - Fetching for Categories
    // Fetch Movies for Chosen Category (Popular or Upcoming)
    func fetchCategory(for category: String) {
        
        let requestUrl = movieBaseUrl + "/\(category)" + K.TheMovieDB.apiKey
        
        request(requestUrl).responseJSON { response in
            switch response.result {
            case .success(let value):
                let json = JSON(value)
                
                var movies = [Movie]()
                
                for item in json["results"].arrayValue {
                    
                    let title = item["title"].stringValue
                    let id = item["id"].intValue
                    let rating = item["vote_average"].doubleValue
                    let releaseDate = item["release_date"].stringValue
                  //  let description = item["overview"].stringValue
                    let posterPath = item["poster_path"].string
                        
                    let movie = Movie(id: id, title: title, posterPath: posterPath, rating: rating, releaseDate: releaseDate )
                    
                    movies.append(movie)
                }
                
                self.delegate?.didFetchMovies(with: movies)
                
            case .failure(let error):
                print("Error requesting category movies, \(error)")
            }
            
        }
    }
  
    
    // MARK: - Search
    
    func searchMovie(with query: String) {
        
        let replacedQuery = query.replacingOccurrences(of: " ", with: "%20")
        
        let requestUrl = K.TheMovieDB.baseURL + Query.search.rawValue + K.TheMovieDB.apiKey + Query.query.rawValue + replacedQuery
        
         request(requestUrl).responseJSON { response in
            switch response.result {
            case .success(let value):
                let json = JSON(value)
                
                var results = [Movie]()
                
                for item in json["results"].arrayValue {
                    
                    let title = item["title"].stringValue
                    let id = item["id"].intValue
                    let rating = item["vote_average"].doubleValue
                    let releaseDate = item["release_date"].stringValue
                    
                
                    let posterPath = item["poster_path"].string
                        
                    let movie = Movie(id: id, title: title, posterPath: posterPath, rating: rating, releaseDate: releaseDate)
                    results.append(movie)
                    
                }
                
                self.delegate?.didFetchMovies(with: results)
                
            case .failure(let error):
                print("Erro ao solicitar resultados de pesquisa para consulta = \(query), \(error)")
            }
            
        }
    }
    
}
