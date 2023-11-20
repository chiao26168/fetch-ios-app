//
//  MealListView.swift
//  fetch-ios-app
//
//  Created by Claire Lee on 11/6/23.
//

import SwiftUI

struct MealListView: View {
    @ObservedObject var mealListViewModel = MealListViewModel()

    var body: some View {
        NavigationView {
            List(mealListViewModel.meals) { meal in
                NavigationLink(destination: MealDetailView(viewModel: MealDetailViewModel(), mealId: meal.idMeal)) {
                    Text(meal.strMeal)
                }
            }.onAppear {
                mealListViewModel.fetchMeals()
            }
            .navigationBarTitle("Dessert Recipes")
        }
    }
}

struct MealListView_Previews: PreviewProvider {
    static var previews: some View {
        MealListView()
    }
}
