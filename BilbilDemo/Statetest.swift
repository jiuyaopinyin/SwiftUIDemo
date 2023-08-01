//
//  Statetest.swift
//  BilbilDemo
//
//  Created by RCCL on 2023/6/7.
//

import SwiftUI

struct Statetest: View {
    
    @State var countnum: Int = 1
    
    var body: some View {
        ZStack {
            Color.red
                .edgesIgnoringSafeArea(.all)
            VStack(spacing: 20, content: {
                Text("Title")
                Text("count: \(countnum)")
                
                HStack(spacing: 20, content: {
                    Button("button1") {
                        countnum = countnum + 1
                    }
                    
                    Button("button2") {
                        countnum = countnum - 1
                    }
                })
            })
        }
    }
}

struct Statetest_Previews: PreviewProvider {
    static var previews: some View {
        Statetest()
    }
}
