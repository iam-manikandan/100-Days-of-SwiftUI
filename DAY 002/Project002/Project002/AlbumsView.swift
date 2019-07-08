//
//  AlbumsView.swift
//  Project002
//
//  Created by Rudrank Riyam on 08/07/19.
//  Copyright © 2019 100DaysOfSwiftUI. All rights reserved.
//

import SwiftUI

struct AlbumsView : View {

    let albumDescriptions = ["Doo-Wops & Hooligans", "Unorthodox Jukebox", "24K Magic"]

    var body: some View {
        NavigationView {
            List(albumDescriptions.identified(by: \.self)) { albumDescription in
                HStack {
                    Image(albumDescription)
                        .resizable()
                        .frame(width: 100, height: 100, alignment: .center)
                        .clipShape(Circle())
                        .shadow(radius: 5)
                        .padding()
                    Text(albumDescription)
                        .font(.headline)
                        .padding(2)
                }
                .navigationBarTitle("Albums")
            }
        }
    }
}

#if DEBUG
struct AlbumsView_Previews : PreviewProvider {
    static var previews: some View {
        AlbumsView()
    }
}
#endif
