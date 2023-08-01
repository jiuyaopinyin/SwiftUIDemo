//
//  TextBootcamp.swift
//  BilbilDemo
//
//  Created by RCCL on 2023/5/29.
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
        Text("Hello, World!Hello, World!Hello, World!Hello, World!Hello, World!Hello, World!Hello, World!Hello, World!Hello, World!Hello, World!Hello, World!".capitalized)
//            .font(.caption)
//            .fontWeight(.medium)
//            .underline(true, color: .red)
//            .italic()
//            .font(.system(size: 24, weight: .semibold))
            .baselineOffset(1)
//            .kerning(10)
            .foregroundColor(.red)
            .frame(width: 200, height: 100, alignment: .leading)
            .minimumScaleFactor(0.1)
    }
}

struct TextBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextBootcamp()
    }
}
