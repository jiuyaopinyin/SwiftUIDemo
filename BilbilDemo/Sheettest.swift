//
//  Sheettest.swift
//  BilbilDemo
//
//  Created by RCCL on 2023/6/14.
//

import SwiftUI

struct Sheettest: View {
    
    @State var showSheet:Bool = false
    
    var body: some View {
        ZStack {
            Color.green
                .edgesIgnoringSafeArea(.all)
            
            Button("100") {
                showSheet.toggle()
            }
            
            ///里面不能加逻辑判断,一个view下只能有一个sheet
//            .fullScreenCover(isPresented: $showSheet, onDismiss: {
//
//            }, content: {
//                SecondeView()
//            })
            .sheet(isPresented: $showSheet, content: {
                SecondeView()
            })
        }
    }
}


struct SecondeView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.red
                .edgesIgnoringSafeArea(.all)
            
            Button(action: {
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(20)
            })
            
             
        }
    }
}

struct Sheettest_Previews: PreviewProvider {
    static var previews: some View {
        Sheettest()
//        SecondeView()
    }
}
