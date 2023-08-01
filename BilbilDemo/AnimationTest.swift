//
//  AnimationTest.swift
//  BilbilDemo
//
//  Created by RCCL on 2023/6/12.
//

import SwiftUI

struct AnimationTest: View {
    
    @State var isAnimated: Bool = false
    
    var body: some View {
        VStack {
            Button("test"){
                withAnimation(
                    Animation
                        .spring(response: 1.0, dampingFraction: 0.2, blendDuration: 1.0)
//                        .repeatForever(autoreverses: true)
//                        .repeatCount(5, autoreverses: false)
//                        .delay(2.0)
                ){
                    isAnimated.toggle()
                }
                
            }
            Spacer()
            RoundedRectangle(cornerRadius: isAnimated ? 50 : 25)
                .fill(isAnimated ? Color.red : Color.blue)
                .frame(width: isAnimated ? 100 : 300,
                       height: isAnimated ? 100 : 300)
                .rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
                .offset(y: isAnimated ? 300 : 0)
                 
            Spacer()
        }
    }
}

struct AnimationTest_Previews: PreviewProvider {
    static var previews: some View {
        AnimationTest()
    }
}
