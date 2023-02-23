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
    
    /// `TCAImageState` instance.
    public var image: TCAImageState
    
    /// The name of editable Chibi
    public var name = ""
    
    /// Flag which indicate is placholder active
    public let isPlaceholderDisplayed: Bool
    
    // MARK: - Initializer
    
    public init(image: URL, name: String = "", isPlaceholderDisplayed: Bool) {
        self.image = TCAImageState(url: image)
        self.name = name
        self.isPlaceholderDisplayed = isPlaceholderDisplayed
    }
}
