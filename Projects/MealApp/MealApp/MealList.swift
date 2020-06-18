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

    var body: some View {
        List(restaurant.all()) { plat in
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
