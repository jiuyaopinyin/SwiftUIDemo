//
//  init&enums.swift
//  BilbilDemo
//
//  Created by RCCL on 2023/6/5.
//

import SwiftUI

struct init_enums: View {
     
    let backgroudColor: Color
    let count:Int
    let title: String
    
    init(count: Int, fruit: Fruit) {
        self.count = count
        self.title = "\(fruit)"
        
        if fruit == .apple {
            self.backgroudColor = .red
        }else {
            self.backgroudColor = .green
        }
    }
    
    enum Fruit {
        case apple
        case orange
    }
    
    var body: some View {
        VStack{
            Text("\(count)")
                .font(.largeTitle)
                .foregroundColor(.white)
            Text(title)
                .font(.headline)
                .foregroundColor(.white)
        }
        .frame(width: 150,height: 150)
        .background(backgroudColor)
        .cornerRadius(10)
    }
}

struct init_enums_Previews: PreviewProvider {
    static var previews: some View {
        HStack {
            init_enums(count: 3, fruit: .orange)
            init_enums(count: 11, fruit: .apple)
        }
    }
}
