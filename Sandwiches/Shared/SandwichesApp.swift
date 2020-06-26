//
//  SandwichesApp.swift
//  Shared
//
//  Created by Dylan_Wang on 2020/6/25.
//

import SwiftUI

@main
struct SandwichesApp: App {
    @StateObject private var store = SandwichStore()
    
    var body: some Scene {
        WindowGroup {
            ContentView(store: store)
        }
    }
}
