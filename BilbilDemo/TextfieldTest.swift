//
//  TextfieldTest.swift
//  BilbilDemo
//
//  Created by Stephen Lee on 2023/7/31.
//

import SwiftUI

struct TextfieldTest: View {
    @State var testStr: String = ""
    @State var dataAry: [String] = []
    
    var body: some View {
        VStack {
            TextField("test", text: $testStr)
                .padding()
                .background(Color.gray.opacity(0.3).cornerRadius(10))
                .foregroundColor(.red)
                .font(.headline)
            
            Button {
                if textCheck() {
                    saveText()
                }
                
            } label: {
                Text("save".uppercased())
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(textCheck() ? Color.blue : Color.gray)
                    .foregroundColor(.white)
                    .font(.headline)
            }
            .disabled(!textCheck())
            
            ForEach(dataAry, id: \.self) {
                tmpStr in Text (tmpStr)
            }
            
            Spacer()
        }
        .padding()
        .navigationTitle("textfield")
    }
    
    func textCheck() -> Bool {
        if testStr.count >= 3 {
            return true
        }
        return false;
    }
    
    func saveText() {
        dataAry.append(testStr)
        testStr = ""
        print(dataAry)
    }
}

struct TextfieldTest_Previews: PreviewProvider {
    static var previews: some View {
        TextfieldTest()
    }
}
