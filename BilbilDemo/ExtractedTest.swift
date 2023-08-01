//
//  ExtractedTest.swift
//  BilbilDemo
//
//  Created by RCCL on 2023/6/12.
//

import SwiftUI

struct ExtractedTest: View { 
    @State var backgroundColor = Color.yellow
    
    var body: some View {
        ZStack {
            backgroundColor.edgesIgnoringSafeArea(.all)
            //content
            contentLayer
        }
        
    }
    
    var contentLayer: some View {
        //content
        VStack {
            Text("title")
                .font(.largeTitle)
            Button(action: {
                buttonPressed()
            }, label: {
                Text("press")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(.black)
                    .cornerRadius(10)
            })
        }
    }
    
    func buttonPressed() {
        backgroundColor = Color.red
    }
}

struct ExtractedTest_Previews: PreviewProvider {
    static var previews: some View {
        ExtractedTest()
    }
}
