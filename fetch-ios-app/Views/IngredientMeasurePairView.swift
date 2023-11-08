//
//  IngredientMeasurePairView.swift
//  fetch-ios-app
//
//  Created by Claire Lee on 11/7/23.
//

import SwiftUI

struct IngredientMeasurePairView: View {
    var ingredient: String
    var measure: String

    var body: some View {
        HStack {
            Text(ingredient)
                .frame(maxWidth: .infinity, alignment: .leading)
            Text(measure)
                .frame(maxWidth: .infinity, alignment: .trailing)
        }
    }
}
