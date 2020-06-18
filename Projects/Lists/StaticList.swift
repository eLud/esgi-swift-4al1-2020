//
//  StaticList.swift
//  Lists
//
//  Created by Ludovic Ollagnier on 18/06/2020.
//  Copyright © 2020 TecTec. All rights reserved.
//

import SwiftUI

struct StaticList: View {
    var body: some View {
        List {
            Text("Line 1")
            Text("Line 2")
            Text("Line 3")
            Text("Line 4")
            HStack {
                Image(systemName: "plus")
                Text("Hello")
            }
        }    }
}

struct StaticList_Previews: PreviewProvider {
    static var previews: some View {
        StaticList()
    }
}
