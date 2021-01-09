//
//  HomeScreen.swift
//  XcodeGenSample
//
//  Created by Shunya Yamada on 2021/01/03.
//

import SwiftUI
import Combine

struct HomeScreen: View {
    @ObservedObject var viewModel = HomeViewModel()
    
    var body: some View {
        NavigationView {
            List(viewModel.items.indices, id: \.self) { index in
                HomeListCell(title: viewModel.items[index].title ?? "", content: viewModel.items[index].body ?? "", imageURL: viewModel.items[index].user.profileImageURL)
            }
            .navigationTitle("Sample")
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
