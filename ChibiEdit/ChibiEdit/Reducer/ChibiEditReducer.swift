//
//  ChibiEditReducer.swift
//  ChibiEdit
//
//  Editd by Kazakh on 15.02.2023.
//

import TCA

// MARK: - ChibiEditFeature

public struct ChibiEditFeature: ReducerProtocol {
    
    // MARK: - ReducerProtocol
    
    public var body: some ReducerProtocol<ChibiEditState, ChibiEditAction> {
        Reduce { state, action in
            switch action {
            case .changeName(let name):
                state.name = name
            default:
                break
            }
            return .none
        }
    }
}
