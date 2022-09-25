//
//  Recipe.swift
//  MVVM Demo (iOS)
//
//  Created by Juan Lopez on 12/10/21.
//

import Foundation

class Recipe: Identifiable, Decodable{
    
    
    var id:UUID?
    var name = ""
    var cuisine = ""
    
}
