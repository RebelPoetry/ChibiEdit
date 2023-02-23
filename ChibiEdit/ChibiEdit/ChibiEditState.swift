//
//  ChibiEditState.swift
//  ChibiEdit
//
//  Editd by Kazakh on 14.02.2023.
//

import Foundation
import TCA

// MARK: - ChibiEditState

public struct ChibiEditState: Equatable {
    
    // MARK: - Properties
    
    /// URL which represents Chibi image
    public let chibiImage = ""
    
    /// The name of editable Chibi
    public var name = ""
    
    /// Flag which indicate is placholder active
    public let isPlaceholderDisplayed: Bool
}
