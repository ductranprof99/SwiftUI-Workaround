//
//  AsyncImage.swift
//  Demo
//
//  Created by Duc Tran on 24/01/2023.
//

import SwiftUI

fileprivate extension Image {
    
    func downloadedImage() -> some View {
        self
            .resizable()
            .scaledToFit()
    }
    
    func iconImage() -> some View {
        self
            .resizable()
            .scaledToFit()
            .frame(maxWidth: 200)
            .foregroundColor(.purple)
    }
}

struct ContentView1: View {
    
    let url: String = "https://via.placeholder.com/200/FF0000/FFFFFF?Text=Down.com"
    
    var body: some View {
//        AsyncImage(url: URL(string: url),
//                   content: { image in image.iconImage() },
//                   placeholder: { Image(systemName: "photo.circle.fill").iconImage() }
//        ).padding(50)
        

//            if let img = phase.image {
//                img.downloadedImage()
//            } else if let _ = phase.error {
//                Image(systemName: "ant.circle.fill").iconImage()
//            } else {
//                Image(systemName: "photo.circle.fill").iconImage()
//            }
    
            AsyncImage(url: URL(string: url),
                       transaction: .init(animation: .spring(response: 0.5, dampingFraction: 0.6, blendDuration: 0.3))) { phase in
                switch phase {
                case .success(let img):
                    img.downloadedImage().transition(.slide)
                case .empty:
                    Image(systemName: "photo.circle.fill").iconImage()
                case .failure(_):
                    Image(systemName: "ant.circle.fill").iconImage()
                @unknown default:
                    Image(systemName: "photo.circle.fill").iconImage()
                }
        }
    }
}

struct ContentView1_Previews: PreviewProvider {
    static var previews: some View {
        ContentView1()
    }
}
