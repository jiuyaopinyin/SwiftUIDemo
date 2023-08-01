//
//  SafeAreatest.swift
//  BilbilDemo
//
//  Created by RCCL on 2023/6/6.
//

import SwiftUI

struct SafeAreatest: View {
    var body: some View {
        ZStack {
            
            ScrollView {
                Text("test")
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity,alignment: .leading)
                
                ForEach(0..<10) {
                    index in
                    RoundedRectangle(cornerRadius: 25)
                        .fill(.white)
                        .frame(height: 150)
                        .shadow(radius: 10)
                        .padding(20)
                }
                        
            }
            .background(
                Color.red
            )
            .ignoresSafeArea(edges: .bottom)
            
             
//            VStack {
//                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//                Spacer()
//            }
//            .frame(maxWidth: .infinity, maxHeight: .infinity)
//            .background(.red)
//            .edgesIgnoringSafeArea(.all)
        }
            
    }
}

struct SafeAreatest_Previews: PreviewProvider {
    static var previews: some View {
        SafeAreatest()
    }
}
