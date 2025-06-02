//
//  ContentView.swift
//  FilmAramaSwiftUI
//
//  Created by Metehan Olgun on 2.06.2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Button(action: {
            DownloaderClient().filmleriIndir(search: "deadpool") { (sonuc) in
                switch sonuc {
                case .success(let filmDizisi):
                    print(filmDizisi)
                case .failure(let hata):
                    print(hata)
                }
            }
        },
               label: {
            Text("Test Yap")
        })
    }
}

#Preview {
    ContentView()
}
