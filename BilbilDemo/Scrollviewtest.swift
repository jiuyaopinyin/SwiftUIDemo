//
//  Scrollviewtest.swift
//  BilbilDemo
//
//  Created by RCCL on 2023/6/5.
//

import SwiftUI

struct Scrollviewtest: View {
    var body: some View {
        ScrollView{
            LazyVStack {
                ForEach(0..<100){
                    index in
                    ScrollView(.horizontal,showsIndicators: false, content: {
                        LazyHStack {
                            ForEach(0..<10){
                                index in
                                Rectangle()
                                    .frame(width: 200,height: 150)
                            }
                        }
                    })
                }
            }
        }
        ScrollView(.horizontal, showsIndicators: false, content: {
            HStack {
                ForEach(0..<10) {
                    index in
                    Rectangle()
                        .frame(width: 300,height: 300)
                }
            }
        })
    }
}

struct Scrollviewtest_Previews: PreviewProvider {
    static var previews: some View {
        Scrollviewtest()
    }
}
