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
                Color("backgroundColor").ignoresSafeArea(.all)
                VStack(spacing: 0) {
                    Image("chibi")
                        .padding(20)
                    if viewStore.state.placeHolderIsActive {
                        Text("Имя можно изменить в любой момент")
                            .foregroundColor(Color("holderTextColor"))
                            .padding(.bottom, 24)
                    }
                    TextField ( "Имя", text: viewStore.binding(
                        get: \.name,
                        send: ChibiEditAction.changeName)
                    )
                    .padding(10)
                    .frame(width: UIScreen.screenWidth - 32, height: 60)
                    .background(Color(.tertiarySystemGroupedBackground))
                    .smoothCorners(radius: 16)
                    
                    Spacer()
                    HStack {
                        Button ( action: {
                            
                        }, label: {
                            Text("Готово")
                                .frame(width: UIScreen.screenWidth - 32, height: 60)
                        }
                        )
                        .background(Color("buttonColor"))
                        .smoothCorners(radius: 16)
                        .font(Font.system(size: 17, weight: .bold))
                        .foregroundColor(.white)
                        .padding()
                    }
                }
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button("Отмена") { viewStore.send(.closeButtonTapped) }
                            .foregroundColor(Color.red)
                    }
                }
            }
        }
    }
}

struct ChibiEditView_Previews: PreviewProvider {
    static var previews: some View {
        ChibiEditView(store: Store(
                initialState: ChibiEditState(placeHolderIsActive: true),
                reducer: ChibiEditFeature()
            )
        )
    }
}
