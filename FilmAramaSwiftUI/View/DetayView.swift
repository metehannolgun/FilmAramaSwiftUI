//
//  DetayView.swift
//  FilmAramaSwiftUI
//
//  Created by Metehan Olgun on 5.06.2025.
//

import SwiftUI

struct DetayView: View {
    
    let imdbId: String
    @ObservedObject var filmDetayViewModel = FilmDetayViewModel()
    
    var body: some View {
        VStack(alignment:.leading, spacing:5) {
            HStack {
                    Spacer()
                OzelImage(url: filmDetayViewModel.filmDetayi?.poster ?? "")
                    .frame(width: UIScreen.main.bounds.width * 0.6, height: UIScreen.main.bounds.width * 0.8, alignment: .center)
                    Spacer()
            }
            
            
            Text(filmDetayViewModel.filmDetayi?.title ?? "Loading...")
                .font(.largeTitle).padding().foregroundColor(.blue)
            
           
            
            Text("Yönetmen: \(filmDetayViewModel.filmDetayi?.director ?? "Loading...")")
                .padding()
            
            
            
            Text("Yazar: \(filmDetayViewModel.filmDetayi?.writer ?? "Loading...")")
                .padding()
            
            Text("Ödüller: \(filmDetayViewModel.filmDetayi?.awards ?? "Loading...")")
                .padding()
            
            Text("Yıl: \(filmDetayViewModel.filmDetayi?.year ?? "Loading...")")
                .padding()
            
            Text(filmDetayViewModel.filmDetayi?.plot ?? "Film plotu gösterilecek...")
                .padding()
                .lineLimit(nil)
                .fixedSize(horizontal: false, vertical: true)
            Spacer()
            
                
            
            
                
        }.onAppear(perform: {
            self.filmDetayViewModel.filmDetayiAl(imdbId: imdbId)
        })
    }
}

#Preview {
    DetayView(imdbId: "test")
}
