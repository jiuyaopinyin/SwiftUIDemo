//
//  NavigationTest.swift
//  BilbilDemo
//
//  Created by RCCL on 2023/6/19.
//

import SwiftUI

struct NavigationTest: View {
    var body: some View {
        NavigationView(content: {
            ScrollView {
                
                NavigationLink("11111", destination: {
                    SecView()
                })
                
                Text("test")
                Text("test")
                Text("test")
            }
            .navigationTitle("aaaaaa")
            .navigationBarTitleDisplayMode(.automatic)
//            .toolbar(.hidden)//隐藏navgationbar
            
        })
    }
}


struct SecView: View {
    var body: some View {
        Text ("dfasfdsaf")
            .background(.red)
        NavigationLink("33333", destination: Text("33333333"))
//            .toolbar(.hidden)//隐藏navgationbar
    }
}

struct NavigationTest_Previews: PreviewProvider {
    static var previews: some View {
        NavigationTest()
    }
}
