//
//  TernaryTest.swift
//  BilbilDemo
//
//  Created by RCCL on 2023/6/12.
//

import SwiftUI

struct TernaryTest: View {
    
    @State var isgo: Bool = false
    
    var body: some View {
        Button("testaa"){
            isgo.toggle()
        }
        
        RoundedRectangle(cornerRadius: 25.0)
            .fill(isgo ? Color.red : Color.yellow)
            .frame(width: 100, height: 100)
        
        Spacer()
        
    }
}

struct TernaryTest_Previews: PreviewProvider {
    static var previews: some View {
        TernaryTest()
    }
}
