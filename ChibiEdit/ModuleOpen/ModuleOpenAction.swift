//
//  ModuleOpenAction.swift
//  ChibiEdit
//
//  Created by Kazakh on 18.02.2023.
//

import Foundation

public enum ModuleOpenAction: Equatable {
    
    // MARK: - ChibiEdit
    
    /// Child action for `ChibiEdit` module.
    case chibiEdit(ChibiEditAction)
    
    /// Child action for `ChibiEdit` module with label.
    case chibiEditWithLabel(ChibiEditAction)
    
    /// An action that calls when user open `ChibiEdit` module.
    case setChibiEditModuleActive(Bool)
    
    /// An action that calls when user open `ChibiEdit` module with label.
    case setChibiEditModuleWithLabelActive(Bool)
}
