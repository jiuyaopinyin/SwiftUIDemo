//
//  LazyVGridtest.swift
//  BilbilDemo
//
//  Created by RCCL on 2023/6/6.
//

import SwiftUI

struct LazyVGridtest: View {
    
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 1, alignment: nil),
        GridItem(.flexible(), spacing: 2, alignment: nil),
        GridItem(.flexible(), spacing: 3, alignment: nil)
    ]
    var body: some View {
        ScrollView {
            LazyVGrid(
                columns: columns,
                alignment: .center,
                spacing: 20,
                pinnedViews: [.sectionHeaders],
                content: {
                    Section(
                        header:
                            Text("test1")
                            .foregroundColor(.white)
                            .font(.title)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .background(.blue)
                            .padding()
                    ){
                        ForEach(0..<50){ index in
                            Rectangle()
                                .frame(height: 150)
                        }
                    }
                    
                    Section(
                        header:
                            Text("test2")
                            .foregroundColor(.white)
                            .font(.title)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .background(.red)
                            .padding()
                    ){
                        ForEach(0..<50){ index in
                            Rectangle()
                                .frame(height: 150)
                        }
                    }
                     
                })
        }
        
    }
}

struct LazyVGridtest_Previews: PreviewProvider {
    static var previews: some View {
        LazyVGridtest()
    }
}
