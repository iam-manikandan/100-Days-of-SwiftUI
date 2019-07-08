//
//  Data.swift
//  Project001
//
//  Created by Rudrank Riyam on 07/07/19.
//  Copyright © 2019 100DaysOfSwiftUI. All rights reserved.
//

import SwiftUI
import Combine

class DataSource : BindableObject {

    let didChange = PassthroughSubject<Void, Never>()
    var pictures = [String]()

    init() {
        let fileManager = FileManager.default

        if let path = Bundle.main.resourcePath, let items = try? fileManager.contentsOfDirectory(atPath: path) {

            for item in items {
                if item.hasPrefix("Landscape -") {
                    let imageName = String(item.dropLast(4))
                    let titleName = imageName.dropFirst(12)
                    pictures.append(String(titleName))
                }
            }
            print(pictures)
        }
        didChange.send(())
    }
}
