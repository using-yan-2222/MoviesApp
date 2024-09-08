//
//  Movies.swift
//  Movies
//
//  Created by Yan Zou on 9/8/24.
//

import Foundation

class Movies{
    private var index = 0;
    let movie_dic : [String: String] = ["Back to the Future" : "Michael J. Fox", "Interstellar" : "Matthew McConaughey", "The Matrix" : "Keanu Reeves", "Twelve Monkeys" : "Bruce Willis", "District 9" : "Sharlto Copley", "Inception": "Leonardo DiCaprio", "The Butterfly Effect":"Ashton Kutcher", "Ghost in the Shell":"Atsuko Tanaka"]
    private var movieTitles: [String]
    
    init(){
        self.movieTitles = Array(movie_dic.keys)
    }
    
    func nextMovie() -> String? {
        let movie = movieTitles[index]
        index = (index + 1) % movieTitles.count
        return movie
    }
    
}
