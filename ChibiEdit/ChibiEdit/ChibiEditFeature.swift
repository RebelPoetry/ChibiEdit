//
//  ChibiEditFeature.swift
//  ChibiEdit
//
//  Editd by Kazakh on 15.02.2023.
//

import TCA

// MARK: - ChibiEditFeature

public struct ChibiEditFeature: ReducerProtocol {
    
    // MARK: - ReducerProtocol
    
    public var body: some ReducerProtocol<ChibiEditState, ChibiEditAction> {
        Scope(state: \.image, action: /ChibiEditAction.image) {
            TCAImageFeature()
        }
        Reduce { state, action in
            switch action {
            case .setName(let name):
                state.name = name
            default:
                break
            }
            return .none
        }
    }
}
