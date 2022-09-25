//
//  ContentView.swift
//  Shared
//
//  Created by Juan Lopez on 12/10/21.
//

import SwiftUI

struct RecipeContentView: View {
    //@ObservedObject var model = RecipeModel()
  @ObservedObject  var recipeModel = RecipeModel()
    var body: some View {
        VStack{
            List(recipeModel.recipes){recipe in
                VStack(alignment: .leading){
                    Text(recipe.name)
                        .font(.title2)
                    Text(recipe.cuisine)
                        .font(.subheadline)
                }

            }
            Button {
                recipeModel.addRecipe()
            } label: {
                Text("Add Recipe")
            }

        }
  
}
}

struct RecipeContentView_Previews: PreviewProvider {
    static var previews: some View {
       RecipeContentView()
    }
}
