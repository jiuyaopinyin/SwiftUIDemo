//
//  Padding.swift
//  BilbilDemo
//
//  Created by Stephen Lee on 2023/5/31.
//

import SwiftUI

struct Padding: View {
    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            .background(.blue)
//            .padding(.top, 50)
//            .background(.red)
        VStack(alignment: .leading) {
            Text("test")
                .font(.largeTitle)
                .padding(EdgeInsets(top: 10, leading: 20, bottom: 0, trailing: 0))

            Text("fdjsakljklfj dsajfljdskaf kldsj klfjds akfj kdlsafjkldas fk")
                .multilineTextAlignment(.leading)
                .padding(EdgeInsets(top: 50, leading: 20, bottom: 50, trailing: 20))
        }
        .padding(0)
        .background(.red)
    }
}

struct Padding_Previews: PreviewProvider {
    static var previews: some View {
        Padding()
    }
}
