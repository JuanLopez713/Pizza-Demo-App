//
//  PizzaDetailView.swift
//  MVVM Demo (iOS)
//
//  Created by Juan Lopez on 9/24/22.
//

import SwiftUI

struct PizzaDetailView: View {
    var pizza: Pizza
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Image(pizza.image).resizable().scaledToFill()
                VStack(alignment: .leading) {
                    ForEach(pizza.toppings, id: \.self) { topping in
                        Text(topping)
                    }
                }
                .padding(.horizontal)
            }
        }.navigationBarTitle(pizza.name)
    }
}

struct PizzaDetailView_Previews: PreviewProvider {
    static var previews: some View {
        let pizzaModel = PizzaModel()
        PizzaDetailView(pizza: pizzaModel.pizzas[0])
    }
}
