//
//  Pizza.swift
//  MVVM Demo (iOS)
//
//  Created by Juan Lopez on 12/10/21.
//

import Foundation

class Pizza: Identifiable, Decodable{
    var id: UUID?
    var name:String
    var image:String
    var toppings:[String]
    
    init(name: String, toppings: [String]){
        self.name = name
        self.image = name
        self.toppings = toppings
//        self.topping1 = topping1
//        self.topping2 = topping2 ?? ""
//        self.topping3 = topping3 ?? ""
    }
}
