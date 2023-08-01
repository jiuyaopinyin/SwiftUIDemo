//
//  Buttontest.swift
//  BilbilDemo
//
//  Created by RCCL on 2023/6/6.
//

import SwiftUI

struct Buttontest: View {
    @State var title = "title"
     
    var body: some View {
        VStack(spacing: 100) {
            Text(title)
            
            Button("test", action: {
                self.title = "busss";
            })
            
            Button(action: {
                
            }, label: {
                Text("button")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(
                        Color.blue
                            .cornerRadius(8)
                            .shadow(radius: 10)
                    )
                    
            })
            
            Button(action: {
                
            }, label: {
                Circle()
                    .fill(.white)
                    .frame(width: 75,height: 75)
                    .shadow(radius: 10)
                    .overlay(
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)
                            .foregroundColor(.red)
                    )
                
            })
            
            Button(action: {
                
            }, label: {
                Text("finfish".uppercased())
                    .font(.caption)
                    .bold()
                    .foregroundColor(.gray)
                    .padding()
                    .padding(.horizontal, 10)
                    .background(
                        Capsule()
                            .stroke(Color.gray)
                    )
            })
            
        }
        
    }
}

struct Buttontest_Previews: PreviewProvider {
    static var previews: some View {
        Buttontest()
    }
}
