//
//  PizzaModel.swift
//  MVVM Demo (iOS)
//
//  Created by Juan Lopez on 12/10/21.
//

import Foundation

class PizzaModel: ObservableObject {
    @Published var pizzas = [Pizza]()

    init() {
        // Create some dummy recipe data

//        pizza.append(Pizza(name: "Meat Lovers", topping1: "Pepperoni", topping2: "Sausage", topping3: "Ham"))
//        pizza.append(Pizza(name: "Cheesy Deluxe", topping1: "Cheese", topping2: "Cheese"))
//        pizza.append(Pizza(name: "Veggie Supreme", topping1: "Pepper", topping2: "Onion", topping3: "Spinach"))
        pizzas = DataService.getLocalData()
    }

    func addPineapple() {
        if pizzas.count > 0 {
            for index in 0 ... pizzas.count - 1 {
                if !(pizzas[index].toppings.contains("Pineapple")) {
                    pizzas[index].toppings.insert("Pineapple", at: 0)
                }
            }
            let p = pizzas[pizzas.count - 1]
            pizzas.removeLast()
            pizzas.append(p)
        }
    }
}
