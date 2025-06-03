//
//  ContentView.swift
//  FilmAramaSwiftUI
//
//  Created by Metehan Olgun on 2.06.2025.
//

import SwiftUI

struct FilmListeView: View {
    @ObservedObject var filmListeViewModel : FilmListeViewModel
    init() {
        self.filmListeViewModel = FilmListeViewModel()
        self.filmListeViewModel.filmAramasiYap(filmIsmi: "batman")
    }
    var body: some View {
        List(filmListeViewModel.filmler, id: \.imdbId) { film in
            HStack {
                Image("progress")
                    .resizable()
                    .frame(width: 100, height: 150)
                VStack(alignment: .leading) {
                    Text(film.title)
                        .font(.title3)
                        .foregroundColor(.blue)
                    
                    Text(film.year)
                        .foregroundColor(.orange)
                        
                }
            }
            
        }
            
    }
}

#Preview {
    FilmListeView()
}
