//
//  ContentView.swift
//  Project001
//
//  Created by Rudrank Riyam on 07/07/19.
//  Copyright © 2019 100DaysOfSwiftUI. All rights reserved.
//

import SwiftUI

struct ContentView : View {

    @ObjectBinding var dataSource = DataSource()

    var body: some View {
        NavigationView {
            List(dataSource.pictures.identified(by: \.self)) { picture in

                NavigationLink(destination: ContentDetail(titleName: picture)) {
                    HStack {
                        Image(uiImage: UIImage(named: "Landscape - \(picture)")!)
                           .resizable()
                            .frame(width: 80, height: 80, alignment: .center)
                            .shadow(radius: 5)
                        VStack(alignment: .leading) {
                            Text(picture)
                                .font(.title)
                            Text("It's a beatiful landscape")
                                .font(.subheadline)
                        }
                        Spacer()
                    }
                }

            }
            .navigationBarTitle("Landscapes")
        }.navigationViewStyle(.stack)
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
