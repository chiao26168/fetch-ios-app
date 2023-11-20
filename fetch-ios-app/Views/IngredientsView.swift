//
//  IngredientsView.swift
//  fetch-ios-app
//
//  Created by Claire Lee on 11/18/23.
//

import SwiftUI


struct IngredientsView: View {
    var ingredientsAndMeasures: [(String, String)]

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack {
                Image(systemName: "pin.fill")
                    .resizable()
                    .frame(width: 20, height: 20)
                
                Text("Ingredients:")
                    .font(.headline)
                    .bold()
            }.padding(.top)
            
            ForEach(ingredientsAndMeasures.indices, id: \.self) { index in
                let ingredient = ingredientsAndMeasures[index].0
                let measure = ingredientsAndMeasures[index].1
                IngredientMeasurePairView(ingredient: ingredient, measure: measure)
            }
            
        }.padding(.bottom)
    }
}

#Preview {
    IngredientsView(ingredientsAndMeasures: [("Strawberries", "2 pint"),
                     ("Sugar", "4 tbs"),
                     ("Grand Marnier", "4 tbs"),
                     ("Cream", "1 cup"),
                     ("Sour Cream", "1/4 cup")])
}


