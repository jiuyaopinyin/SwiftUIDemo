//
//  Alerttest.swift
//  BilbilDemo
//
//  Created by RCCL on 2023/6/25.
//

import SwiftUI

struct Alerttest: View {
    @State var showAlert: Bool = false
    
    enum myAlerts {
        case success
        case error
    }
    
    @State var alertType: myAlerts? = nil
    
    var body: some View {
        
        ZStack {
            Color.yellow.edgesIgnoringSafeArea(.all)
            HStack {
                Button("test") {
                    showAlert.toggle()
                    alertType = .success
                }
                
                Button("test") {
                    showAlert.toggle()
                    alertType = .error
                }
                
            }
            .alert(isPresented: $showAlert) {
//                Alert(
//                    title: Text("show"),
//                    message: Text("message"),
//                    primaryButton: .cancel(),
//                    secondaryButton: .default(Text("aaa"),action: {
//                        print(showAlert)
//                    }))
                getAlert()
            }
        }
         
    }
    
    
    func getAlert() -> Alert {
        switch alertType {
        case .success:
            return Alert(title: Text("success"),
                         dismissButton: .default(Text("OK")))
        case .error:
                return Alert(title: Text("error"))
        case .none:
            return Alert(title: Text("no"))
        }
    }
}

struct Alerttest_Previews: PreviewProvider {
    static var previews: some View {
        Alerttest()
    }
}
