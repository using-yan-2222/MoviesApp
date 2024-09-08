//
//  Movies.swift
//  Movies
//
//  Created by Yan Zou on 9/8/24.
//

import Foundation

class Movies{
    private var index = 0;
    let movie_dic : [String: String] = ["Michael J. Fox": "Back to the Future",
                                        "Matthew McConaughey": "Interstellar",
                                        "Keanu Reeves": "The Matrix",
                                        "Bruce Willis": "Twelve Monkeys",
                                        "Sharlto Copley": "District 9",
                                        "Leonardo DiCaprio": "Inception",
                                        "Ashton Kutcher": "The Butterfly Effect",
                                        "Atsuko Tanaka": "Ghost in the Shell"]
    private var movieTitles: [String]
    
    init(){
        self.movieTitles = Array(movie_dic.values)
    }
    
    func nextMovie() -> String? {
        let movie = movieTitles[index]
        index = (index + 1) % movieTitles.count
        return movie
    }
    
}
