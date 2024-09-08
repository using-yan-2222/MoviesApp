//
//  Movies.swift
//  Movies
//
//  Created by Yan Zou on 9/8/24.
//

import Foundation

class Movies{
        
    private var movies : [String: String] = [
        "Michael J. Fox": "Back to the Future",
        "Matthew McConaughey": "Interstellar",
        "Keanu Reeves": "The Matrix",
        "Bruce Willis": "Twelve Monkeys",
        "Sharlto Copley": "District 9",
        "Leonardo DiCaprio": "Inception",
        "Ashton Kutcher": "The Butterfly Effect",
        "Atsuko Tanaka": "Ghost in the Shell"
    ]
    private var index: Int = 0;
  
   
    
    private var movieTitles: [String] {
            return Array(movies.values)
    }
    
    
    func nextMovie() -> String {
        
        let movie = movieTitles[index]
        index = (index + 1) % movieTitles.count
        return movie
    }
    func currentMovie() -> String{
        return movieTitles[index];
    }
}
