//
//  TCAImageState.swift
//  Chibiverse
//
//  Created by Dmitry Savinov on 20.02.2023.
//

import Foundation

// MARK: - TCAImageState

/// `TCAImage` module state
///
/// Basically, `TCAImageState` is a type that describes the data
/// `TCAImage` feature needs to perform its logic and render its UI.
public struct TCAImageState: Equatable {
    
    // MARK: - Properties
   
    /// Target image URL
    public let url: URL?
    
    /// True if image has been uploaded
    public var imageObtained: Bool
    
    /// Target downsampling size for image processor
    public let downsamplingSize: CGSize
    
    // MARK: - Initializers
    
    public init(
        url: URL? = nil,
        downsamplingSize: CGSize = CGSize(width: 500, height: 500)
    ) {
        self.url = url
        self.imageObtained = false
        self.downsamplingSize = downsamplingSize
    }
}
