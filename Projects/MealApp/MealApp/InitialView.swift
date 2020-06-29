//
//  InitialView.swift
//  MealApp
//
//  Created by Ludovic Ollagnier on 18/06/2020.
//  Copyright © 2020 Tectec. All rights reserved.
//

import SwiftUI

struct InitialView: View {
    var body: some View {
        TabView {
            MealList()
                .tabItem {
                    Text("List")
                    Image(systemName: "list.bullet")
            }
            Text("Ma commande")
                .tabItem {
                    Text("Order")
                    Image(systemName: "cart")
            }
        }
    }
}

struct InitialView_Previews: PreviewProvider {
    static var previews: some View {
        InitialView()
    }
}
