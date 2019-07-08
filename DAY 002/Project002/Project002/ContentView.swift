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
        TabbedView {
            SongsView()
            .tabItem {
                Image(systemName: "music.note")
                Text("Songs")
            }
            .tag(0)
           AlbumsView()
            .tabItem {
                Image(systemName: "rectangle.stack")
                Text("Albums")
            }
            .tag(1)
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
