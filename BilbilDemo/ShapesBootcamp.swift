//
//  ShapesBootcamp.swift
//  BilbilDemo
//
//  Created by RCCL on 2023/5/29.
//

import SwiftUI

struct ShapesBootcamp: View {
    var body: some View {
//        Circle()
//            .fill(.blue)
//            .foregroundColor(.black)
//            .stroke()//中空
//            .stroke(.red, lineWidth: 29)//中空线
//            .stroke(.red, style: StrokeStyle(lineWidth: 20, lineCap: .round, dash: [30]))//边框可以有断点
//            .trim(from: 0.2, to: 1.0)//0.8个圆
//            .stroke(.red, lineWidth: 20)//0.8个圆周长
        
//        Ellipse()//椭圆,属性和圆类似
//            .trim(from: 0.2, to: 1.0)
//        Capsule()//胶囊形状
//            .frame(width: 200, height: 100)
        RoundedRectangle(cornerRadius: 20)//矩形圆角
            .frame(width: 200, height: 100)
        
    }
}

struct ShapesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ShapesBootcamp()
    }
}
