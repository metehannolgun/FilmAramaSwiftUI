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
            Text(film.title)
            
        }
            
    }
}

#Preview {
    FilmListeView()
}
