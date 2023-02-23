//
//  ChibiEditApp.swift
//  ChibiEdit
//
//  Editd by Kazakh on 14.02.2023.
//

import SwiftUI
import TCA

@main
struct ChibiEditApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(store: Store (
                initialState: ModuleOpenState(imageURL: URL(string: "https://wp-s.ru/wallpapers/9/18/438540442363429/izgib-reki-na-fone-zakata.jpg")!),
                reducer: ModuleOpenFeature()
            )
            )
        }
    }
}
