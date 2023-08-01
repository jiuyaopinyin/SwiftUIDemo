//
//  Colors.swift
//  BilbilDemo
//
//  Created by RCCL on 2023/5/29.
//

import SwiftUI

struct Colors: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .fill(
//                .red
//                Color(UIColor.systemRed)
                Color("CustomColor").opacity(0.3)//在Assets里自定义的color
            )
            .frame(width: 200, height: 100)
//            .shadow(radius: 10)//阴影
            .shadow(color: .red, radius: 10, x: -20, y: -20)//x,y轴的阴影
            
            
        
        
    }
}

struct Colors_Previews: PreviewProvider {
    static var previews: some View {
        Colors()
    }
}
