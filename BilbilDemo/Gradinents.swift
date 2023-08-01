//
//  Gradinents.swift
//  BilbilDemo
//
//  Created by RCCL on 2023/5/30.
// 渐变

import SwiftUI

struct Gradinents: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .fill(
//                .red
//                LinearGradient(
//                    gradient: Gradient(colors: [Color.red,Color.blue,.orange]),
//                    startPoint: .topLeading,
//                    endPoint: .bottom)//线性
//                RadialGradient(
//                    colors: [.red,.blue],
//                    center: .leading,
//                    startRadius: 5,
//                    endRadius: 500)//径向渐变
//                AngularGradient(
//                    colors: [.red,.blue],
//                    center: .center,
//                    startAngle: Angle(degrees: 100),
//                    endAngle: Angle(degrees: 200))//角度渐变
            )
            .frame(width: 300, height: 200)
    }
}

struct Gradinents_Previews: PreviewProvider {
    static var previews: some View {
        Gradinents()
    }
}
