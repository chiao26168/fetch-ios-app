//
//  ViewListViewModel.swift
//  fetch-ios-app
//
//  Created by Claire Lee on 11/6/23.
//

import Foundation

class MealListViewModel: ObservableObject {
    @Published var meals: [Meal] = []

    func fetchMeals() {
        if let url = URL(string: "https://themealdb.com/api/json/v1/1/filter.php?c=Dessert") {
            URLSession.shared.dataTask(with: url) { data, _, error in
                if let data = data {
                    do {
                        let response = try JSONDecoder().decode(MealResponse.self, from: data)
                        DispatchQueue.main.async {
                            self.meals = response.meals
                        }
                    } catch {
                        print("Error decoding JSON: \(error)")
                    }
                } else if let error = error {
                    print("Network error: \(error)")
                }
            }.resume()
        }
    }
}

