//
//  ContentView.swift
//  CustomRoutingAndNavigationStack
//
//  Created by Maverick Codebase on 18/02/2025.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var router: Router<AppRoutes>
    var body: some View {
        RoutingView(stack: $router.stack) {
            HomeView()
        }
    }
}

#Preview {
    ContentView()
        .environmentObject(Router<AppRoutes>())
}
