//
//  Frame.swift
//  BilbilDemo
//
//  Created by Stephen Lee on 2023/5/30.
//

import SwiftUI

struct Frame: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .background(.yellow)
//            .frame(width: 300, height: 300, alignment: .topLeading)
//            .background(.red)
            .frame(maxWidth: 200,alignment: .leading)
            .background(.red)
    }
}

struct Frame_Previews: PreviewProvider {
    static var previews: some View {
        Frame()
    }
}
