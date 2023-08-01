//
//  Images.swift
//  BilbilDemo
//
//  Created by RCCL on 2023/5/30.
//

import SwiftUI

struct Images: View {
    var body: some View {
        Image("bg")
            .renderingMode(.template)//修改图片颜色或者在assets图片属性里修改
            .resizable()
            .scaledToFill()
//            .scaledToFit()
            .frame(width: 100, height: 50)
            .foregroundColor(.red)
//            .cornerRadius(100)
            .clipShape(
//                Circle()//做圆
//            Ellipse()//椭圆
                RoundedRectangle(cornerRadius: 23)
            )
    }
}

struct Images_Previews: PreviewProvider {
    static var previews: some View {
        Images()
    }
}
