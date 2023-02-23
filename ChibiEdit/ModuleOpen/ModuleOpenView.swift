//
//  ModuleOpenView.swift
//  ChibiEdit
//
//  Created by Kazakh on 18.02.2023.
//

import SwiftUI
import TCA

// MARK: - ModuleOpenView

struct ModuleOpenView: View {
    
    // MARK: - Properties
    
    /// The store powering the `ModuleOpenFeature` feature
    public let store: StoreOf<ModuleOpenFeature>
    
    // MARK: - View
    
    public var body: some View {
        WithViewStore(store) { viewStore in
            ZStack {
                Color("backgroundColor").ignoresSafeArea(.all)
                VStack {
                    Spacer()
                    HStack {
                        Spacer()
                        Button("Открыть экран с надписью") {
                            viewStore.send(.setChibiEditModuleWithLabelActive(true))
                        }
                        .sheet(
                            isPresented: viewStore.binding(
                                get: \.chibiEditWithLabelIsActive,
                                send: ModuleOpenAction.setChibiEditModuleWithLabelActive
                            )
                        ) {
                            NavigationView {
                                ChibiEditView(store: store.scope(
                                    state: \.chibiEditWithLabel,
                                    action: ModuleOpenAction.chibiEditWithLabel)
                                )
                            }
                        }
                        Spacer()
                    }
                    Spacer()
                    HStack {
                        Button("Открыть экран без надписи") {
                            viewStore.send(.setChibiEditModuleActive(true))
                        }
                        .sheet(
                            isPresented: viewStore.binding(
                                get: \.chibiEditIsActive,
                                send: ModuleOpenAction.setChibiEditModuleActive
                            )
                        ) {
                            NavigationView {
                                ChibiEditView(store: store.scope(
                                    state: \.chibiEdit,
                                    action: ModuleOpenAction.chibiEdit)
                                )
                            }
                        }
                    }
                    Spacer()
                }
            }
        }
    }
}
