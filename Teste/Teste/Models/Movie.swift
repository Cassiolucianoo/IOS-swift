//
//  Movie.swift
//  Teste
//
//  Created by cassio luciano on 12/07/22.
//


import Foundation

struct Movie {
    var id: Int?
    var title: String?
    var posterPath: String?
    var backdropPath: String?
    var rating: Double?
    var duration: Int?
    var genres: [String]?
    var releaseDate: String?
    var budget: Int?
    var revenue: Int?
   // var description: String?
    
    func getReleaseDate() -> String {
        let dateFormatterGet = DateFormatter()
        dateFormatterGet.dateFormat = "yyyy-MM-dd"

        let dateFormatterPrint = DateFormatter()
        dateFormatterPrint.dateFormat = "MMM dd, yyyy"

        if let relDate = releaseDate {
            if let date = dateFormatterGet.date(from: relDate) {
                return dateFormatterPrint.string(from: date)
            }
        }
        
        return releaseDate!
    }
}
