//
//  BindingTest.swift
//  BilbilDemo
//
//  Created by RCCL on 2023/6/12.
//

import SwiftUI

struct BindingTest: View {
    
    @State var backgroundColor: Color = .red
    @State var title = "test"
    
    var body: some View {
        ZStack {
            backgroundColor.edgesIgnoringSafeArea(.all)
            
            VStack {
                Text(title)
                    .font(.largeTitle)
                    .foregroundColor(.white)
                
                ButtonView(backgroundColor: $backgroundColor, title: $title)
            }
            
            
        }
    }
}

struct ButtonView: View {
    
    @Binding var backgroundColor: Color
    @Binding var title: String
    
    var body: some View {
        Button(action: {
            backgroundColor = Color.black
            title = "press"
        }, label: {
            Text("Button")
                .foregroundColor(.white)
                .padding()
                .background(.blue)
                .cornerRadius(10)
        })
    }
}

struct BindingTest_Previews: PreviewProvider {
    static var previews: some View {
        BindingTest()
    }
}
