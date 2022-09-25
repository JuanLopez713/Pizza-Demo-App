//
//  RecipeModel.swift
//  MVVM Demo (iOS)
//
//  Created by Juan Lopez on 12/10/21.
//

import Foundation

class RecipeModel: ObservableObject {
    @Published var recipes = [Recipe]()
    
    init(){
        // Create some dummy recipe data
        
        // recipes.append(Recipe(name: "Spaghetti", cuisine: "Italian"))
        // recipes.append(Recipe(name: "Sushi", cuisine: "Japanese"))
        
        // get the path to the json file within the app bundle
        let pathString = Bundle.main.path(forResource: "data", ofType: "json")
        if let path = pathString{
            
            // Create url object
            let url = URL(fileURLWithPath: path)
            
            //Error handling
            do {
                // Put the code that potentially throws an error
                
                // Create a data object with the data at the url
                let data = try Data(contentsOf: url)
                
                // Parse the data
                let decoder = JSONDecoder()
                do{
                    let recipeData = try decoder.decode([Recipe].self, from: data)
                    
                    // Set unique ID's for each instance
                    for r in recipeData {
                        // Set a unique ID for each recipe in the recipeData array
                        r.id = UUID()
                    }
                    
                    // Assign the data to the published property
                    self.recipes = recipeData
                }
                catch {
                    //couldn't decode json
                    print (error)
                }
             
                
            }
            catch {
                // Execution will come here if an error is thrown
                print(error)
            }
            
        }
        
    }
    func addRecipe(){
        //  recipes.append(Recipe(name: "Burger", cuisine: "American"))
    }
}
