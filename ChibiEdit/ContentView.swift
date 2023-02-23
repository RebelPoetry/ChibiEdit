//
//  ContentView.swift
//  ChibiEdit
//
//  Editd by Kazakh on 14.02.2023.
//

import SwiftUI
import TCA

struct ContentView: View {
    
    public let store: StoreOf<ModuleOpenFeature>
    
    var body: some View {
        ModuleOpenView(store: Store (
            initialState: ModuleOpenState(imageURL: URL(string: "https://wp-s.ru/wallpapers/9/18/438540442363429/izgib-reki-na-fone-zakata.jpg")!),
            reducer: ModuleOpenFeature()
        ))
    }}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(store: Store (
            initialState: ModuleOpenState(imageURL: URL(string: "https://wp-s.ru/wallpapers/9/18/438540442363429/izgib-reki-na-fone-zakata.jpg")!),
            reducer: ModuleOpenFeature()
            )
        )
    }
}
