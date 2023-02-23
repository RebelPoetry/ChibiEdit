//
//  ModuleOpenReducer.swift
//  ChibiEdit
//
//  Created by Kazakh on 18.02.2023.
//

import TCA

// MARK: - ModuleOpenReducer

public struct ModuleOpenFeature: ReducerProtocol {
    
    // MARK: - ReducerProtocol
    
    public var body: some ReducerProtocol<ModuleOpenState, ModuleOpenAction> {
        Scope(state: \.chibiEditWithLabel, action: /ModuleOpenAction.chibiEditWithLabel) {
            ChibiEditFeature()
        }
        Scope(state: \.chibiEdit, action: /ModuleOpenAction.chibiEdit) {
            ChibiEditFeature()
        }
        Reduce { state, action in
            switch action {
            case .setChibiEditModuleWithLabelActive(let isActive):
                state.chibiEditWithLabelIsActive = isActive
            case .setChibiEditModuleActive(let isActive):
                state.chibiEditIsActive = isActive
            case .chibiEdit(.closeButtonTapped):
                state.chibiEditIsActive = false
            case .chibiEditWithLabel(.closeButtonTapped):
                state.chibiEditWithLabelIsActive = false
            default:
                break
            }
            return .none
        }
    }
}
