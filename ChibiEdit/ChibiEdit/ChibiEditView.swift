//
//  ChibiEditView.swift
//  ChibiEdit
//
//  Editd by Kazakh on 14.02.2023.
//

import TCA
import SwiftUI

// MARK: - ChibiEditView

public struct ChibiEditView: View {
    
    // MARK: - Properties
    
    /// The store powering the `ChibiEditFeature` feature
    public let store: StoreOf<ChibiEditFeature>
    
    // MARK: - View
    
    public var body: some View {
        WithViewStore(store) { viewStore in
            ZStack {
                Color("backgroundColor").ignoresSafeArea()
                VStack(spacing: 0) {
                    Image("chibi")
                        .padding(20)
                    if viewStore.isPlaceholderDisplayed {
                        Text("Имя можно изменить в любой момент")
                            .foregroundColor(Color("holderTextColor"))
                            .padding(.bottom, 24)
                    }
                    TextField("Имя", text: viewStore.binding(
                            get: \.name,
                            send: ChibiEditAction.setName
                        )
                    )
                    .padding(.horizontal, 10)
                    .frame(height: 60)
                    .background(Color(.tertiarySystemGroupedBackground))
                    .smoothCorners(radius: 16)
                    .padding(.horizontal, 16)
                    Spacer()
                    Button {
                        print("action")
                    } label: {
                        Text("Готово")
                            .centered()
                            .font(.system(size: 17, weight: .bold))
                            .foregroundColor(.white)
                            .frame(height: 60)
                    }
                    .background(Color("buttonColor"))
                    .smoothCorners(radius: 16)
                    .padding(16)
                }
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button("Отмена") {
                            viewStore.send(.closeButtonTapped)
                        }
                        .foregroundColor(Color.red)
                    }
                }
            }
        }
    }
}

public struct CenterModifier: ViewModifier {
    
    public func body(content: Content) -> some View {
        HStack {
            Spacer()
            content
            Spacer()
        }
    }
}

extension View {
    
    public func centered() -> some View {
        modifier(CenterModifier())
    }
}


struct ChibiEditView_Previews: PreviewProvider {
    static var previews: some View {
        ChibiEditView(store: Store(
                initialState: ChibiEditState(isPlaceholderDisplayed: true),
                reducer: ChibiEditFeature()
            )
        )
    }
}
