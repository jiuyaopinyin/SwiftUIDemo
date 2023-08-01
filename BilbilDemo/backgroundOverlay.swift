//
//  backgroundOverlay.swift
//  BilbilDemo
//
//  Created by Stephen Lee on 2023/5/30.
//

import SwiftUI

struct backgroundOverlay: View {
    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//
//            .background(
////                LinearGradient(colors: [.red,.blue], startPoint: .leading, endPoint: .trailing)
//                Circle()
//                    .fill(.blue)
//                    .frame(width: 100, height: 100, alignment: .center)
//
//            )
//            .background(
//                Circle()
//                    .fill(.red)
//                    .frame(width: 120, height: 120, alignment: .center)
//            )
        
        Circle()
            .fill(.yellow)
            .frame(width: 100,height: 200, alignment: .center)
            .overlay(
                Rectangle()
                    .fill(.red)
                    .frame(width: 50, height: 50)
            )
            .background(
                Circle()
                    .fill(LinearGradient(colors: [.red,.blue], startPoint: .topLeading, endPoint: .bottomLeading))
                    .frame(width: 300 ,height: 300)
            )
    }
}

struct backgroundOverlay_Previews: PreviewProvider {
    static var previews: some View {
        backgroundOverlay()
    }
}
