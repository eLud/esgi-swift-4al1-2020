//
//  MealList.swift
//  MealApp
//
//  Created by Ludovic Ollagnier on 18/06/2020.
//  Copyright © 2020 Tectec. All rights reserved.
//

import SwiftUI

struct MealList: View {

    var restaurant = Restaurant(name: "Chez moi")
    @State private var isAddingMeal = false
    
    var body: some View {
        NavigationView {
            List(restaurant.all()) { plat in
                NavigationLink(destination: ContentView(meal: plat)) {
                    MealCell(plat: plat)
                }
            }.navigationBarTitle("Meals")
                .navigationBarItems(trailing: Button("Add") {
                    self.isAddingMeal.toggle()
                })
                .sheet(isPresented: $isAddingMeal) {
                    AddMealView(restaurant: self.restaurant)
            }
        }
    }
}

struct MealCell: View {

    var plat: Meal

    var body: some View {
        HStack {
            Image(systemName: "plus")
            VStack(alignment: .leading) {
                Text(plat.name)
                Text(plat.pitch)
                    .font(.callout)
            }
            Spacer()
            Text("\(plat.price) €")
                .foregroundColor(.gray)
        }
    }
}

struct MealList_Previews: PreviewProvider {
    static var previews: some View {
        MealList()
    }
}
