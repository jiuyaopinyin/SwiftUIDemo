//
//  Icons.swift
//  BilbilDemo
//
//  Created by RCCL on 2023/5/30.
//

import SwiftUI

struct Icons: View {
    var body: some View {
        Image(systemName: "heart.fill")
//            .font(.title)
            .resizable()
//            .aspectRatio(contentMode: .fill)
            .scaledToFill()
            .frame(width: 200, height: 200)
//            .font(.system(size: 200))
            .foregroundColor(.blue)
            .clipped()//截边
    }
}

struct Icons_Previews: PreviewProvider {
    static var previews: some View {
        Icons()
    }
}
