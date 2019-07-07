//
//  ContentView.swift
//  Project002
//
//  Created by Rudrank Riyam on 07/07/19.
//  Copyright © 2019 100DaysOfSwiftUI. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    var body: some View {
        NavigationView {
            List(descriptions.identified(by: \.songName)) { dess in
                HStack {
                    Image(dess.albumName)
                        .resizable()
                        .frame(width: 60, height: 60, alignment: .center)
                        .clipShape(Circle())
                        .shadow(radius: 5)
                    VStack (alignment: .leading) {
                        Text(dess.songName)
                            .font(.headline)
                        Text(dess.albumName)
                            .font(.subheadline)
                    }
                }
            }
            .navigationBarTitle("Bruno Mars")
        }
    }
    
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
