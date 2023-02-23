//
//  TCAImageAction.swift
//  Chibiverse
//
//  Created by Dmitry Savinov on 20.02.2023.
//

import Foundation

// MARK: - TCAImageAction

/// All available `TCAImage` module actions.
///
/// It's a type that represents all of the actions that can happen in `TCAImage` feature,
/// such as user actions, notifications, eventÏsources and more.
///
/// We have some actions in the feature. There are the obvious actions,
/// such as tapping some button, holding another button, or changing a slider value.
/// But there are also some slightly non-obvious ones, such as the action of the user dismissing the alert,
/// and the action that occurs when we receive a response from the fact API request.
public enum TCAImageAction: Equatable {
    
    /// Calls when image has been obtained
    case imageObtainCompleted(Result<Bool, TCAImageError>)
}
