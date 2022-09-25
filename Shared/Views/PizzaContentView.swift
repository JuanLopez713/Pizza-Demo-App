//
//  ContentView.swift
//  Shared
//
//  Created by Juan Lopez on 12/10/21.
//

import SwiftUI

struct PizzaContentView: View {
    // @ObservedObject var model = RecipeModel()
    @ObservedObject var pizzaModel = PizzaModel()
    var body: some View {
        VStack {
            NavigationView {
                List(pizzaModel.pizzas) { pizza in
                    NavigationLink(destination: PizzaDetailView(pizza: pizza), label: { HStack(spacing: 10.0) {
                        Image(pizza.image).resizable().scaledToFill().clipped().frame(width: 100, height: 100, alignment: .center).cornerRadius(10)
                        VStack(alignment: .leading) {
                            Text(pizza.name)
                                .font(.title2)
                            HStack {
                                ForEach(0 ... 2, id: \.self) { topping in
                                    Text(pizza.toppings[topping])
                                }
                            }
                        }
                    }})

                }.navigationBarTitle("All Pizzas")
            }
            Button {
                pizzaModel.addPineapple()
            } label: {
                Text("Pineapp-It-Up!")
            }
        }
    }
}

struct PizzaContentView_Previews: PreviewProvider {
    static var previews: some View {
        PizzaContentView()
    }
}
