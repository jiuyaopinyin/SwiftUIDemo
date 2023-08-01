//
//  Listtest.swift
//  BilbilDemo
//
//  Created by RCCL on 2023/6/25.
//

import SwiftUI

struct Listtest: View {
    
    @State var fruits: [String] = [
        "apple","orange","banner"
    ]
    @State var veggies: [String] = [
        "tomato","potato","carrot"
    ]
    
    var body: some View {
        NavigationView {
            List {
                Section {
                    ForEach(fruits, id: \.self) {
                        fruit in
                        Text(fruit.capitalized)
                    }
                    //左滑删除
    //                .onDelete(perform: {
    //                    indexSet in
    //                    deleteItem(indexSet: indexSet)
    //                })
                    //删除可以缩写成这样:
                    .onDelete(perform: deleteItem)
                    .onMove(perform: move)
                } header: {
                    Text("fruits")
                }
                
                Section {
                    ForEach(veggies, id: \.self) {
                        veggie in
                        Text(veggie.capitalized)
                            .font(.caption)
                            .foregroundColor(.red)
                            .frame(maxWidth: 100)
                            
                    }
                } header: {
                    Text("veg")
                }

            }
            .tint(Color.red)
            .listStyle(GroupedListStyle())
            .navigationTitle("test")
            .toolbar {
                EditButton()
                Button("Add"){
                    add()
                }
            }
        }
        
    }
    
    func deleteItem(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    
    func move(indices: IndexSet, newOffset: Int) {
        fruits.move(fromOffsets: indices, toOffset: newOffset)
    }
    
    func add() {
        fruits.append("new")
    }
}

struct Listtest_Previews: PreviewProvider {
    static var previews: some View {
        Listtest()
    }
}
