//
//  AniTranSheetTest.swift
//  BilbilDemo
//
//  Created by RCCL on 2023/6/15.
//

import SwiftUI

struct AniTranSheetTest: View {
    
    @State var showFirs:Bool = false
    
    var body: some View {
        ZStack {
            Color.orange
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Button("button") {
                    showFirs.toggle()
                }
                .font(.largeTitle)
            
                Spacer()
            }
            
            
            //1. SHEET
//            .sheet(isPresented: $showFirs) {
//                FirstSceen()
//            }
            
            //2. TRANSITION
//            ZStack {
//                if showFirs {
//                    FirstSceen(showFirs: $showFirs)
//                        .padding(.top,100)
//                        .transition(.move(edge: .bottom))
//                        .animation(.spring())
//                }
//            }
//            .zIndex(2.0)//加上这个后可以在消失的时候有个动画?
            
            //3. ANIMATION
            FirstSceen(showFirs: $showFirs)
                .padding(.top, 100)
                .offset(y: showFirs ? 0 : UIScreen.main.bounds.height)
                .animation(.spring())
        }
    }
}

struct FirstSceen: View {
    
    @Environment(\.presentationMode) var dismissAction
    @Binding var showFirs: Bool
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.purple
                .edgesIgnoringSafeArea(.all)
             
            Button(action: {
//                dismissAction.wrappedValue.dismiss()
                showFirs.toggle()
            }, label: {
                Text("back")
                    .font(.largeTitle)
                    .padding(.all)
                    .foregroundColor(.red)
            })
        }
    }
}



struct AniTranSheetTest_Previews: PreviewProvider {
    static var previews: some View {
        AniTranSheetTest()
    }
}
