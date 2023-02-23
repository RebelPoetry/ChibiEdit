//
//  ChibiEditAction.swift
//  ChibiEdit
//
//  Editd by Kazakh on 14.02.2023.
//

import Foundation

// MARK: - ChibiEditAction

public enum ChibiEditAction: Equatable {

    // MARK: - Properties
    
    /// Child action for `TCAImageAction` module.
    case image(TCAImageAction)
    
    /// Setter for `name` property binding
    case setName(String)
    
    /// An action which closes current `ChibiEdit` module
    case closeButtonTapped
}
