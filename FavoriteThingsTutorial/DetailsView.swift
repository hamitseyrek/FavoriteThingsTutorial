//
//  DetailsView.swift
//  FavoriteThingsTutorial
//
//  Created by Hamit Seyrek on 8.02.2022.
//

import SwiftUI

struct DetailsView: View {
    
    //MARK: - Variables
    var selectedElement : FavoriteElements
    
    var body: some View {
        VStack {
            Text(selectedElement.name)
                .font(.largeTitle)
            Image(selectedElement.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: UIScreen.main.bounds.width * 0.8, height: UIScreen.main.bounds.height * 0.4, alignment: Alignment.center)
            Text(selectedElement.description)
                .bold()
                .padding()
            
        }
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(selectedElement: place3)
    }
}
