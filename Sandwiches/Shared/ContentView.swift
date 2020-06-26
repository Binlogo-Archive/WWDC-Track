//
//  ContentView.swift
//  Shared
//
//  Created by Dylan_Wang on 2020/6/25.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject private(set) var store: SandwichStore
    
    var body: some View {
        NavigationView {
            // 技巧：Command + 点击，快速打开 Code Actions
            List {
                ForEach(store.sandwiches) { sandwich in
                    SandwichCell(sandwich: sandwich)
                }
                .onMove(perform: moveSandwiches)
                .onDelete(perform: deleteSandwiches)
                
                HStack {
                    Spacer()
                    Text("\(store.sandwiches.count) Sandwiches")
                        .foregroundColor(.secondary)
                    Spacer()
                }
            }
            .navigationTitle("Sandwiches")
            .navigationBarItems(leading: Button("Add", action: makeSandwich), trailing: EditButton())
            
            
            Text("Select a sandwich")
                .font(.largeTitle)
        }
    }
}

private extension ContentView {
    func makeSandwich() {
        withAnimation {
            store.sandwiches.append(Sandwich(name: "Patty melt", ingredientCount: 3))
        }
    }
    
    func moveSandwiches(from: IndexSet, to: Int) {
        withAnimation {
            store.sandwiches.move(fromOffsets: from, toOffset: to)
        }
    }
    
    func deleteSandwiches(offsets: IndexSet) {
        withAnimation {
            store.sandwiches.remove(atOffsets: offsets)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView(store: testStore)
            ContentView(store: testStore)
                .preferredColorScheme(.dark)
                .environment(\.locale, Locale(identifier: "zh-CN"))
        }
    }
}

struct SandwichCell: View {
    var sandwich: Sandwich
    var body: some View {
        NavigationLink(destination: SandwichDetail(sandwich: sandwich)) {
            // 技巧：Library 中有 Modifier 一栏可供查找
            Image(sandwich.thumbnailName)
                .resizable()
                .frame(width: 40, height: 40)
                .cornerRadius(8)
            // 右键：Show Code Actions -
            VStack(alignment: .leading) {
                Text(sandwich.name)
                // 技巧: Control + Option + 点击预览控件，快速打开属性面板
                Text("\(sandwich.ingredientCount) ingredients")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
        }
    }
}
