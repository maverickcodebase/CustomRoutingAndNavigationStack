//
//  CustomRoutingAndNavigationStackApp.swift
//  CustomRoutingAndNavigationStack
//
//  Created by Sheraz Ahmed on 18/02/2025.
//

import SwiftUI

@main
struct CustomRoutingAndNavigationStackApp: App {
    @StateObject private var appRouter: Router<AppRoutes> = .init()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(appRouter)
        }
    }
}
