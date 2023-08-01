//
//  ConditionalTest.swift
//  BilbilDemo
//
//  Created by RCCL on 2023/6/12.
//

import SwiftUI

struct ConditionalTest: View {
    
    @State var showCircle: Bool = false
    @State var showRectangle: Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
            Button("circelBtn:\(showCircle.description)"){
                //bool的切换
                showCircle.toggle()
            }
            Button("rectangleBtn:\(showRectangle.description)"){
                //bool的切换
                showRectangle.toggle()
            }
            
            
            if showCircle {
                ProgressView()
                Circle()
                    .frame(width: 100, height: 100)
            }else if showRectangle{
                Rectangle()
                    .frame(width: 100, height: 100)
            }else {
                RoundedRectangle(cornerRadius: 25)
                    .frame(width: 100, height: 100)
            }
            
            Spacer()
        }
    }
}

struct ConditionalTest_Previews: PreviewProvider {
    static var previews: some View {
        ConditionalTest()
    }
}
