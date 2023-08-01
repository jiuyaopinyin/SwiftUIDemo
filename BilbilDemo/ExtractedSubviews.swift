//
//  ExtractedSubviews.swift
//  BilbilDemo
//
//  Created by RCCL on 2023/6/12.
//

import SwiftUI

struct ExtractedSubviews: View {
    var body: some View {
        ZStack {
            Color.red.edgesIgnoringSafeArea(.all)
            contentLayer
        }
    }
    
    var contentLayer: some View {
        HStack{
            MyItem(title: "test", count: 1, color: .yellow)
            MyItem(title: "taaaaaaaaa", count: 2, color: .blue)
            MyItem(title: "dafsfd", count: 2, color: .blue)
        }
    }
     
}

struct ExtractedSubviews_Previews: PreviewProvider {
    static var previews: some View {
        ExtractedSubviews()
    }
}

struct MyItem: View {
    
    let title: String
    let count: Int
    let color: Color
    
    var body: some View {
        VStack {
            Text("\(count)")
            Text(title)
        }
        .padding()
        .background(color)
        .cornerRadius(10)
    }
}
