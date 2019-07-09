//
//  ContentView.swift
//  Project003 WatchKit Extension
//
//  Created by Rudrank Riyam on 09/07/19.
//  Copyright © 2019 100DaysOfSwiftUI. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    var body: some View {
        List(songDescriptions.identified(by: \.songName)) {
            songDescription in
            NavigationLink(destination: PlayView(songName: songDescription.songName, albumName: songDescription.albumName)) {
                HStack {
                    Image(uiImage: UIImage(named: songDescription.albumName)!)
                        .resizable()
                        .frame(width: 40, height: 40, alignment: .center)
                        .cornerRadius(10)
                    VStack (alignment: .leading) {
                        Text(songDescription.songName)
                            .font(.system(.headline, design: .rounded))
                            .padding()
                        Text(songDescription.albumName)
                            .lineLimit(2)
                            .padding()
                    }
                }
            }
        }
        .listStyle(.carousel)
            .navigationBarTitle("Bruno Mars")
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
