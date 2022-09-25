//
//  DataService.swift
//  MVVM Demo (iOS)
//
//  Created by Juan Lopez on 9/24/22.
//

import Foundation

class DataService {
    static func getLocalData() -> [Pizza] {
        let pathString = Bundle.main.path(forResource: "pizza", ofType: "json")

        guard pathString != nil else {
            return [Pizza]()
        }

        let url = URL(fileURLWithPath: pathString!)

        do {
            let data = try Data(contentsOf: url)
            let decoder = JSONDecoder()
            do {
                let pizzaData = try decoder.decode([Pizza].self, from: data)

                for r in pizzaData {
                    r.id = UUID()
                    print(r)
                }
                return pizzaData
            } catch {
                print(error)
            }
        } catch {
            print(error)
        }

        return [Pizza]()
    }
}
