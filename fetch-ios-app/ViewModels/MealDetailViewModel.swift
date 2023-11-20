//
//  MealDetailViewModel.swift
//  fetch-ios-app
//
//  Created by Claire Lee on 11/7/23.
//

import SwiftUI

class MealDetailViewModel: ObservableObject {
    @Published var meal: MealDetail?

    func fetchMealDetails(for mealId: String) {
        guard let url = URL(string: "https://themealdb.com/api/json/v1/1/lookup.php?i=\(mealId)") else {
            return
        }

        URLSession.shared.dataTask(with: url) { [weak self] data, response, error in
            guard let data = data, error == nil else {
                print("Network error: \(error?.localizedDescription ?? "Unknown error")")
                return
            }

            do {
                let decoder = JSONDecoder()
                let mealDetailResponse = try decoder.decode(MealDetailResponse.self, from: data)
                self?.meal = mealDetailResponse.meals.first
            } catch {
                // Handle decoding error
                print("Error decoding JSON: \(error)")
            }
        }.resume()
    }
}
