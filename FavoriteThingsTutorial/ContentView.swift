//
//  ContentView.swift
//  FavoriteThingsTutorial
//
//  Created by Hamit Seyrek on 8.02.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView {
            List {
                ForEach(myFavorites) { favorite in
                    Section {
                        ForEach(favorite.elements) {
                            element in
                            NavigationLink(destination: DetailsView(selectedElement: element)) {
                                Text(element.name)
                            }
                        }
                    } header: {
                        Text(favorite.title)
                            .foregroundColor(Color.gray)
                            .bold()
                    }
                    
                }
            }
            .navigationBarTitle(
                Text("My Favorites")
            )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
