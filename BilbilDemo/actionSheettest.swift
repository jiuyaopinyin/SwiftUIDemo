//
//  actionSheettest.swift
//  BilbilDemo
//
//  Created by RCCL on 2023/6/26.
//

import SwiftUI

struct actionSheettest: View {
    @State private var isTap = false
    var body: some View {
        Button("test") {
            isTap = true
        }
        .confirmationDialog("testaaa", isPresented: $isTap) {
            

            Button("delete", role: .destructive) {
                print("deleteing")
            }

            Button("cancel", role: .cancel) {
                print("cancel...")
            }

            Button {
                print("1222")
            } label: {
                Text("cccc")
                    .foregroundColor(.red)
                    .font(.largeTitle)
                    .padding(.leading, 20)
            }

            Button("cancel") {
                print("cancel...")
            }

            Button("cancel") {
                print("cancel...")
            }
        }
    }
     
}

struct actionSheettest_Previews: PreviewProvider {
    static var previews: some View {
        actionSheettest()
    }
}
