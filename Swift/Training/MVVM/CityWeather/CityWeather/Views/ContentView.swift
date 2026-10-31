//
//  ContentView.swift
//  CityWeather
//
//  Created by Alfredo Alba on 5/16/25.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = WeatherViewModel()
    
    var body: some View {
        NavigationView {
            List(viewModel.cities) { city in
                VStack(alignment: .leading){
                    Text(city.englishName)
                        .font(.headline)
                }
            }
            .navigationTitle("Cities")
            .onAppear() {
                viewModel.loadCities()
            }
        }
        // Error Handling use of errorMessgae from viewModel please check documentation.
        .alert(isPresented: Binding(
            get: { viewModel.errorMessage != nil },
            set: { _ in viewModel.errorMessage = nil }
        )) {
            Alert(title: Text("Error"), message: Text(viewModel.errorMessage ?? ""), dismissButton: .default(Text("OK")))
        }
    }
}

//#Preview {
//    ContentView()
//}
