//
//  HomeScreen.swift
//  XcodeGenSample
//
//  Created by Shunya Yamada on 2021/01/03.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        NavigationView {
            List {
                HomeListCell(title: "Horizontal grid")
                HomeListCell(title: "Coming soon")
            }
            .navigationTitle("Samples")
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
