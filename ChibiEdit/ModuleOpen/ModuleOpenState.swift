//
//  ModelOpenState.swift
//  ChibiEdit
//
//  Created by Kazakh on 18.02.2023.
//

import Foundation

// MARK: - ModuleOpenState

public struct ModuleOpenState: Equatable {
    
    // MARK: - Properties
    
    /// URL of given image.
    public var imageURL: URL
    
    /// `ChibiEditState` instance.
    public var chibiEditWithLabel: ChibiEditState
    
    /// `ChibiEditState` instance.
    public var chibiEdit: ChibiEditState
    
    /// Flag which indicate is module with label are shown.
    public var chibiEditWithLabelIsActive = false
    
    /// Flag which indicate is module are shown.
    public var chibiEditIsActive = false
    
    // MARK: - Initializer
    
    public init(imageURL: URL) {
        self.imageURL = imageURL
        self.chibiEditWithLabel = ChibiEditState(image: imageURL , isPlaceholderDisplayed: true)
        self.chibiEdit = ChibiEditState(image: imageURL, isPlaceholderDisplayed: false)
    }
}
