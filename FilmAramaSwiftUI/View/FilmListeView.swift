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
        self.filmListeViewModel.filmAramasiYap(filmIsmi: "wonder")
    }
        var body: some View {
            NavigationView {
                List(filmListeViewModel.filmler, id: \.imdbId) { film in
                    HStack {
                        OzelImage(url: film.poster)
                            .frame(width: 90,height: 130)
                        
                        VStack(alignment: .leading) {
                            Text(film.title)
                                .font(.title3)
                                .foregroundColor(.blue)
                            
                            Text(film.year)
                                .foregroundColor(.orange)
                            
                        }
                    }
                    
                }.navigationTitle(Text("Film Arama"))
                
            }
            
        
    }
        
}

#Preview {
    FilmListeView()
}
