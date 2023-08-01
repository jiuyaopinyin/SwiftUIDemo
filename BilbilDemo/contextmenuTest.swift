//
//  contextmenuTest.swift
//  BilbilDemo
//
//  Created by Stephen Lee on 2023/7/31.
//

import SwiftUI

struct contextmenuTest: View {
    @State var backgroundColor: Color = Color.blue
    
    var body: some View {
        VStack(alignment: .leading, spacing: 4.0) {
            Image(systemName: "house.fill")
                .font(.title)
            Text("swiftUI thinking")
                .font(.headline)
            Text("how to use contextmenu")
                .font(.subheadline)
        }
        .foregroundColor(.white)
        .padding(30)
        .background(backgroundColor.cornerRadius(30))
        .contextMenu {
            Button {
                backgroundColor = .red
            } label: {
                Label("button1", systemImage: "flame.fill")
            }

            Button {
                backgroundColor = .black
            } label: {
                Text("button2")
            }
            
            Button {
                backgroundColor = .green
            } label: {
                HStack{
                    Text("button 3")
                    Image(systemName: "heart.fill")
                }
            }
        }
    }
}

struct contextmenuTest_Previews: PreviewProvider {
    static var previews: some View {
        contextmenuTest()
    }
}
