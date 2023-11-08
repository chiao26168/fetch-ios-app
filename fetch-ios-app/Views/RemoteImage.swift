//
//  RemoteImage.swift
//  fetch-ios-app
//
//  Created by Claire Lee on 11/6/23.
//
import SwiftUI

struct RemoteImage: View {
    let url: String

    var body: some View {
        if let imageURL = URL(string: url), let imageData = try? Data(contentsOf: imageURL),
           let uiImage = UIImage(data: imageData) {
            Image(uiImage: uiImage)
                .resizable()
                .scaledToFit()
        } else {
            Image(systemName: "photo")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
        }
    }
}

