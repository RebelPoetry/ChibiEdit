//
//  ModelOpenState.swift
//  ChibiEdit
//
//  Created by Kazakh on 18.02.2023.
//

import Foundation

public struct ModuleOpenState: Equatable {
    
    /// `ChibiEditState` instance.
    public var chibiEditWithLabel = ChibiEditState(placeHolderIsActive: true)
    
    /// `ChibiEditState` instance.
    public var chibiEdit = ChibiEditState(placeHolderIsActive: false)
    
    /// Flag which indicate is module with label are shown.
    public var chibiEditWithLabelIsActive = false
    
    /// Flag which indicate is module are shown.
    public var chibiEditIsActive = false
}
