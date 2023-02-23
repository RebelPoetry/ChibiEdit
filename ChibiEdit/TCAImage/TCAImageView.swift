//
//  TCAImageView.swift
//  Chibiverse
//
//  Created by Dmitry Savinov on 20.02.2023.
//

import TCA
import UIKit
import Kingfisher
import Layout
import Then
import SwiftUI

// MARK: - TCAImageView

public final class TCAImageView: UIView {

    // MARK: - Properties

    /// Target UIImageView instance
    private let imageView = UIImageView()
    
    /// The store powering the `TCAImage` feature
    public let store: StoreOf<TCAImageFeature>

    /// The view store representation of the `TCAImage` feature
    private let viewStore: ViewStoreOf<TCAImageFeature>
    
    // MARK: - Initializers

    public init(
        store: StoreOf<TCAImageFeature>,
        placeholder: Placeholder?,
        contentMode: UIView.ContentMode = .scaleAspectFit
    ) {
        self.viewStore = ViewStore(store)
        self.store = store
        super.init(frame: .zero)
        imageView.contentMode = contentMode
        setupAvatarImageView()
        updateAvatarImageView(withPlaceholder: placeholder)
    }

    public required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Private
    
    private func setupAvatarImageView() {
        imageView.clipsToBounds = true
        clipsToBounds = true
        backgroundColor = .clear
        imageView.backgroundColor = .clear
        addSubview(imageView.prepareForAutolayout())
        imageView.pinToSuperview()
    }

    func updateAvatarImageView(avatarURL: URL? = nil, withPlaceholder placeholder: Placeholder?) {
        imageView.kf.setImage(with: viewStore.url, placeholder: placeholder, options: [
            .processor(DownsamplingImageProcessor(size: viewStore.downsamplingSize)),
            .scaleFactor(UIScreen.main.scale),
            .cacheOriginalImage,
            .keepCurrentImageWhileLoading
        ]) { [weak self] result in
            switch result {
            case .success:
                self?.viewStore.send(.imageObtainCompleted(.success(true)))
            case .failure(let error):
                self?.viewStore.send(.imageObtainCompleted(.failure(error)))
            }
        }
    }
}

// MARK: - Preview

struct TCAImageView_Previews: PreviewProvider {
    
    static var previews: some View {
        let mockState = TCAImageState(url: URL(string: "https://docs-assets.developer.apple.com/published/cfe8c6c585c1f0f2bd08edd4db0ab9bc/SwiftUI-View-ViewModifier~dark@2x.png"))
        let mockFeature = TCAImageFeature()
        return TCAImageView(
            store: Store(
                initialState: mockState,
                reducer: mockFeature
            ),
            placeholder: UIImage(named: "avatar-placeholder")
        ).swiftUI()
    }
}
