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
                initialState: ModuleOpenState(),
                reducer: ModuleOpenFeature()
            )
            )
        }
    }
}
