//
//  FavoriteModel.swift
//  FavoriteThingsTutorial
//
//  Created by Hamit Seyrek on 8.02.2022.
//

import Foundation
import SwiftUI

struct FavoriteModel : Identifiable {
    var id = UUID()
    var title : String
    var elements : [FavoriteElements]
}

struct FavoriteElements : Identifiable {
    var id = UUID()
    var name : String
    var imageName : String
    var description : String
}

let simp1 = FavoriteElements(name: "Homer", imageName: "homer", description: "something")
let simp2 = FavoriteElements(name: "Lisa", imageName: "lisa", description: "something3")
let simp3 = FavoriteElements(name: "Maggie", imageName: "maggie", description: "something2")
let simp4 = FavoriteElements(name: "Marge", imageName: "marge", description: "something2")

let simpsons = FavoriteModel(title: "Simpsons", elements: [simp1, simp2, simp3, simp4])

let place1 = FavoriteElements(name: "Colosseum", imageName: "colosseum", description: "something2222")
let place2 = FavoriteElements(name: "Great Wall", imageName: "greatwall", description: "something22223")
let place3 = FavoriteElements(name: "Kremlin", imageName: "kremlin", description: "something22222")

let places = FavoriteModel(title: "Places", elements: [place1, place2, place3])

let myFavorites = [simpsons, places]
