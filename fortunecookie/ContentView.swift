//
//  ContentView.swift
//  fortunecookie
//
//  Created by Dakshi Goel on 22/05/24.
//

import SwiftUI

struct ContentView: View {
    @State private var imageURL = URL(string: "https://source.unsplash.com/random/?cat,funny")!
    
    var body: some View {
        VStack {
            AsyncImage(url: imageURL) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            } placeholder: {
                Color.gray
            }
            Button("Next") {
                changeImage()
            }
                .foregroundColor(.white)
                .padding()
                .background(Color.blue)
                .cornerRadius(10)
                .padding(.top, 20)
        }
        .padding()
    }
    func changeImage() {

        self.imageURL = URL(string: "https://source.unsplash.com/random/?cat,funny&/\(UUID().uuidString)")!
        }
}

#Preview {
    ContentView()
}
