//
//  InitialView.swift
//  Lists
//
//  Created by Ludovic Ollagnier on 18/06/2020.
//  Copyright © 2020 TecTec. All rights reserved.
//

import SwiftUI

struct InitialView: View {
    var body: some View {
        TabView {
            DynamicListIdentifiable()
                .tabItem {
                    Text("List")
                    Image(systemName: "list.bullet")
            }
            Text("B")
                .tabItem {
                    Text("View C")
                    Image(systemName: "c.circle")
            }
            Text("B")
                .tabItem {
                    Text("View D")
                    Image(systemName: "d.circle")
            }
            Text("B")
                .tabItem {
                    Text("View E")
                    Image(systemName: "e.circle")
            }
            Text("B")
                .tabItem {
                    Text("View F")
                    Image(systemName: "f.circle")
            }
            Text("B")
                .tabItem {
                    Text("View B")
                    Image(systemName: "b.circle")
            }
        }
    }
}

struct InitialView_Previews: PreviewProvider {
    static var previews: some View {
        InitialView()
    }
}
