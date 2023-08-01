//
//  Transitiontest.swift
//  BilbilDemo
//
//  Created by RCCL on 2023/6/14.
//

import SwiftUI

struct Transitiontest: View {
    
    @State var showView: Bool = false
    
    var body: some View {
        ZStack(alignment: .bottom) {
            
            VStack {
                Button("test") {
                    showView.toggle()
                }
                Spacer()
            }
             
            if showView {
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height/2)
//                    .transition(.move(edge: .bottom))
                    .transition(.asymmetric(insertion: .move(edge: .bottom), removal: AnyTransition.opacity.animation(.easeInOut)))
                    .animation(.easeInOut(duration: 0.3))
            }
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct Transitiontest_Previews: PreviewProvider {
    static var previews: some View {
        Transitiontest()
    }
}
