//
//  Stacks.swift
//  BilbilDemo
//
//  Created by RCCL on 2023/5/31.
// spacer

import SwiftUI

struct Stacks: View {
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "xmark")
                Spacer()
                    .frame(height: 10)
                    .background(.orange)
                Image(systemName: "gear")
            }
            .font(.title)
            .background(.blue)
            .padding(.horizontal, 16)
            
            Spacer()
                .frame(width: 10)
                .background(.orange)
            
            Rectangle()
                .frame(height: 50)
        }
        
    }
}

struct Stacks_Previews: PreviewProvider {
    static var previews: some View {
        Stacks()
    }
}
