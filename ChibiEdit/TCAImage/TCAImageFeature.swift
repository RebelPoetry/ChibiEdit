//
//  TCAImageFeature.swift
//  Chibiverse
//
//  Created by Dmitry Savinov on 20.02.2023.
//

import Kingfisher
import TCA

// MARK: - TCAImageFeature

public struct TCAImageFeature: ReducerProtocol {
    
    // MARK: - ReducerProtocol
    
    public var body: some ReducerProtocol<TCAImageState, TCAImageAction> {
        Reduce { state, action in
            switch action {
            case .imageObtainCompleted(.success(let isObtained)):
                state.imageObtained = isObtained
            default:
                break
            }
            return .none
        }
    }
}

// MARK: - Aliases

public typealias TCAImageError = KingfisherError

// MARK: - KingfisherError + Equatable

extension KingfisherError: Equatable {
    
    public static func == (lhs: Kingfisher.KingfisherError, rhs: Kingfisher.KingfisherError) -> Bool {
        lhs.isNotCurrentTask            == rhs.isNotCurrentTask &&
        lhs.errorCode                   == rhs.errorCode &&
        lhs.errorDescription            == rhs.errorDescription &&
        lhs.isInvalidResponseStatusCode == rhs.isInvalidResponseStatusCode &&
        lhs.isTaskCancelled             == rhs.isTaskCancelled &&
        lhs.failureReason               == rhs.failureReason &&
        lhs.helpAnchor                  == rhs.helpAnchor &&
        lhs.localizedDescription        == rhs.localizedDescription &&
        lhs.recoverySuggestion          == rhs.recoverySuggestion
    }
}
