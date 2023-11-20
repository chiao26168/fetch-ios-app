//
//  MealImageView.swift
//  fetch-ios-app
//
//  Created by Claire Lee on 11/18/23.
//

import SwiftUI
import SDWebImageSwiftUI

struct MealImageView: View {
    var imageUrl: URL?

    var body: some View {
        WebImage(url: imageUrl)
            .resizable()
            .aspectRatio(contentMode: .fit)
    }
}
#Preview {
    MealImageView(imageUrl: URL(string: "https://www.themealdb.com/images/media/meals/yypvst1511386427.jpg"))
}
