//
//  ContentView.swift
//  fetch-ios-app
//
//  Created by Claire Lee on 11/6/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var mealListViewModel = MealListViewModel()

    var body: some View {
        NavigationView {
            MealListView()
        }
    }
}
#Preview {
    ContentView()
}
