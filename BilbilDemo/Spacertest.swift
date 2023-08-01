//
//  Spacer.swift
//  BilbilDemo
//
//  Created by Stephen Lee on 2023/5/31.
//

import SwiftUI

struct Spacertest: View {
    var body: some View {
        HStack(spacing: 10){
            Rectangle()
                .fill(.red)
                .frame(width: 100, height: 200)
            Spacer()
                .frame(width: 10,height: 10)
                .background(.yellow)
            
            Rectangle()
                .fill(.red)
                .frame(width: 100, height: 200)
        }
        .background(.blue)
        .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
    }
}

struct Spacer_Previews: PreviewProvider {
    static var previews: some View {
        Spacertest()
    }
}
