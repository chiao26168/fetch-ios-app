# Fetch - iOS Coding Challenge

This iOS app is a recipe browser that allows users to explore and discover dessert recipes from [TheMealDB API](https://themealdb.com/api.php). The app provides a user-friendly interface to list dessert meals and view their details.

## Features
- List dessert meals alphabetically.
- Display meal details, including:
  - Meal name
  - Meal image
  - Instructions
  - Ingredients and measurements

## Demo

Here's a quick demo of the Fetch iOS app:


## API Endpoints
The app utilizes two endpoints from TheMealDB API:
- **List of Dessert Meals:** The app fetches the list of dessert meals using the following endpoint:
  - [https://themealdb.com/api/json/v1/1/filter.php?c=Dessert](https://themealdb.com/api/json/v1/1/filter.php?c=Dessert)

- **Meal Details:** When a user selects a specific meal, the app fetches its details by its ID using this endpoint:
  - [https://themealdb.com/api/json/v1/1/lookup.php?i=MEAL_ID](https://themealdb.com/api/json/v1/1/lookup.php?i=MEAL_ID)

## Development Environment
- The project is developed and compiled using Xcode 15.0.

