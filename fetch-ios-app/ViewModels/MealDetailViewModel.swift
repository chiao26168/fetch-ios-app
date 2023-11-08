//
//  MealDetailViewModel.swift
//  fetch-ios-app
//
//  Created by Claire Lee on 11/7/23.
//

import SwiftUI
import Combine

class MealDetailViewModel: ObservableObject {
    @Published var meal: MealDetail?

    private var cancellables: Set<AnyCancellable> = []

    func fetchMealDetails(for mealId: String) {
        if let url = URL(string: "https://themealdb.com/api/json/v1/1/lookup.php?i=\(mealId)") {
            URLSession.shared.dataTaskPublisher(for: url)
                .map(\.data)
                .decode(type: MealDetailResponse.self, decoder: JSONDecoder())
                .receive(on: DispatchQueue.main)
                .sink(receiveCompletion: { _ in }, receiveValue: { [weak self] response in
                    self?.meal = response.meals.first
                })
                .store(in: &cancellables)
        }
    }
}
