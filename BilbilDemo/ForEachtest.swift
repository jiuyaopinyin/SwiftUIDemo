//
//  ForEach.swift
//  BilbilDemo
//
//  Created by RCCL on 2023/6/5.
//

import SwiftUI

struct ForEachtest: View {
    
    let data: [String] = ["hi","hello"]
    
    var body: some View {
        VStack {
            ForEach(data.indices) {
                index in
                Text ("\(data[index]): \(index)")
            }
//            ForEach(0..<10) { index in
//                Text("one: \(index)")
//            }
        }
    }
}

struct ForEach_Previews: PreviewProvider {
    static var previews: some View {
        ForEachtest()
    }
}
