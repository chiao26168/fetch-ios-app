//
//  Meal.swift
//  fetch-ios-app
//
//  Created by Claire Lee on 11/6/23.
//

struct Meal: Identifiable, Codable {
    let idMeal: String
    let strMeal: String
    let strMealThumb: String
    var id: String { idMeal }
}

struct MealListResponse: Decodable {
    let meals: [Meal]
}
