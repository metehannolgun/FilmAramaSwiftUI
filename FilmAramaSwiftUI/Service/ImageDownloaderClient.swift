//
//  ImageDownloaderClient.swift
//  FilmAramaSwiftUI
//
//  Created by Metehan Olgun on 5.06.2025.
//

import Foundation

class ImageDownladerClient : ObservableObject {
    
   @Published var indirilenGorsel: Data?
    
    func gorselIndir(url: String) {
        
        guard let imageUrl = URL(string: url) else {
            return
        }
        
        URLSession.shared.dataTask(with: imageUrl) { (data, response, error) in
            
            guard let data = data, error == nil else {
                return
            }
            
            DispatchQueue.main.async {
                self.indirilenGorsel = data
            }
            
           
    
        }.resume()
    }
}
