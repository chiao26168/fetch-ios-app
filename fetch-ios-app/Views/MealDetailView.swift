//
//  MealDetailView.swift
//  fetch-ios-app
//
//  Created by Claire Lee on 11/7/23.
//

import SwiftUI
import URLImage
import SDWebImageSwiftUI

struct MealDetailView: View {
    @ObservedObject var viewModel: MealDetailViewModel
    var mealId: String
    
    var body: some View {
        ScrollView {
            if let meal = viewModel.meal {
                VStack(alignment: .leading, spacing: 10) {
                    MealImageView(imageUrl: URL(string: meal.strMealThumb ?? ""))
                    InstructionView(instructions: meal.strInstructions)
                    IngredientsView(ingredientsAndMeasures: meal.ingredientsAndMeasures ?? [])
                    EndLabelView()
                }
                .padding()
            }
        }
        .onAppear {
            viewModel.fetchMealDetails(for: mealId)
        }
        .navigationTitle(viewModel.meal?.strMeal ?? "")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct MealDetailView_Previews: PreviewProvider {
    static var previews: some View {
        let viewModel = MealDetailViewModel()
        let meal = MealDetail(
            idMeal: "52860",
            strMeal: "Chocolate Raspberry Brownies",
            strDrinkAlternate: nil,
            strCategory: "Dessert",
            strArea: "American",
            strInstructions: "Heat oven to 180C/160C fan/gas 4. Line a 20 x 30cm baking tray tin with baking parchment. Put the chocolate, butter and sugar in a pan and gently melt, stirring occasionally with a wooden spoon. Remove from the heat.\nStir the eggs, one by one, into the melted chocolate mixture. Sieve over the flour and cocoa, and stir in. Stir in half the raspberries, scrape into the tray, then scatter over the remaining raspberries. Bake on the middle shelf for 30 mins or, if you prefer a firmer texture, for 5 mins more. Cool before slicing into squares. Store in an airtight container for up to 3 days.",
            strMealThumb: "https://www.themealdb.com/images/media/meals/yypvst1511386427.jpg",
            strTags: "Chocolate,Desert,Snack",
            strYoutube: "https://www.youtube.com/watch?v=Pi89PqsAaAg",
            strIngredient1: "Dark Chocolate",
            strIngredient2: "Milk Chocolate",
            strIngredient3: "Salted Butter",
            strIngredient4: "Light Brown Soft Sugar",
            strIngredient5: "Eggs",
            strIngredient6: "Plain Flour",
            strIngredient7: "Cocoa",
            strIngredient8: "Raspberries",
            strIngredient9: "",
            strIngredient10: "",
            strIngredient11: "",
            strIngredient12: "",
            strIngredient13: "",
            strIngredient14: "",
            strIngredient15: "",
            strIngredient16: "",
            strIngredient17: "",
            strIngredient18: "",
            strIngredient19: "",
            strIngredient20: "",
            strMeasure1: "200g",
            strMeasure2: "100g ",
            strMeasure3: "250g",
            strMeasure4: "400g",
            strMeasure5: "4 large",
            strMeasure6: "140g",
            strMeasure7: "50g",
            strMeasure8: "200g",
            strMeasure9: "",
            strMeasure10: "",
            strMeasure11: "",
            strMeasure12: "",
            strMeasure13: "",
            strMeasure14: "",
            strMeasure15: "",
            strMeasure16: "",
            strMeasure17: "",
            strMeasure18: "",
            strMeasure19: "",
            strMeasure20: "",
            strSource: "https://www.bbcgoodfood.com/recipes/2121648/bestever-chocolate-raspberry-brownies",
            strImageSource: nil,
            strCreativeCommonsConfirmed: nil,
            dateModified: nil
        )
        viewModel.meal = meal
        return MealDetailView(viewModel: viewModel, mealId: "52860")
    }
}
