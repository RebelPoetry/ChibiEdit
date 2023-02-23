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
    
    /// Setter for `name` property binding
    case setName(String)
    
    /// soon
    case getImageURL
    
    /// An action which closes current `ChibiEdit` module
    case closeButtonTapped
}
