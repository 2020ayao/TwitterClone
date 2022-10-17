//
//  TwitterCloneApp.swift
//  TwitterClone
//
//  Created by Adam Yao on 10/11/22.
//

import SwiftUI
import Firebase

@main
struct TwitterCloneApp: App {
    
    @StateObject var viewModel = AuthViewModel()
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
            .environmentObject(viewModel)
        }
    }
}
