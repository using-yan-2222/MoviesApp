//
//  ContentView.swift
//  Movies
//
//  Created by Yan Zou on 9/7/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    private var title = "Sci-Fi Movie"
    @State private var movieTitle: String = "Interstellar"
    var movies = Movies()
  
    var body: some View {
        VStack {
            Text(title)
                .font(.largeTitle)
                .foregroundColor(.green)
            Spacer()
            Text(movieTitle)
                .font(.title)
                .padding()
            Spacer()
            
            Button("Next"){
                movieTitle = movies.nextMovie()
            }
            .font(.title)
        }
        .padding()
            
        
    }
    

    
}

#Preview {
    ContentView()
}
