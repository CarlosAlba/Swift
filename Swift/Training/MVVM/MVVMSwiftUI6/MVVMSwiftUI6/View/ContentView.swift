//
//  ContentView.swift
//  MVVMSwiftUI6
//
//  Created by Alfredo Alba on 10/18/26.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = UserViewModel()
    
    var body: some View {
        NavigationView {
            List(viewModel.users) { user in
                HStack() {
                    AsyncImage(url: URL(string: user.image)) { image in
                        image
                            .resizable()
                            .scaledToFill()
                        
                    } placeholder: {
                        ProgressView()
                    }
                    .frame(width: 60, height: 60)
                    .clipShape(Circle())
                    
                    VStack(alignment: .leading) {
                        Text(user.firstName)
                            .font(.headline)
                        Text(user.email)
                            .font(.subheadline)
                    }
                }
            }
            .navigationTitle("Users")
            .onAppear() {
                viewModel.loadUsers()
            }
        }
        .alert(isPresented: Binding(
            get: { viewModel.errorMessage != nil },
            set: { _ in viewModel.errorMessage = nil }
        )) {
            Alert(title: Text("Errir"), message: Text(viewModel.errorMessage ?? ""), dismissButton: .default(Text("OK")))
        }
    }
}
