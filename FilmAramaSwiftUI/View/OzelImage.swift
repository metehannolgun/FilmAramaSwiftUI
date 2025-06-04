//
//  OzelImage.swift
//  FilmAramaSwiftUI
//
//  Created by Metehan Olgun on 5.06.2025.
//

import SwiftUI

struct OzelImage: View {
    let url: String
    @ObservedObject var imageDownloaderClient = ImageDownladerClient()
    
    init (url:String) {
        self.url = url
        self.imageDownloaderClient.gorselIndir(url: self.url)
    }
    
    
    var body: some View {
        if let data =
            self.imageDownloaderClient.indirilenGorsel {
            return Image(uiImage: UIImage(data: data) ?? UIImage())
                .resizable()
                
                
        } else {
            return Image("progress")
                .resizable()
                
        }
    }
}

#Preview {
    OzelImage(url: "https://m.media-amazon.com/images/M/MV5BYzYyN2FiZmUtYWYzMy00MzViLWJkZTMtOGY1ZjgzNWMwN2YxXkEyXkFqcGc@._V1_SX300.jpg")
}
