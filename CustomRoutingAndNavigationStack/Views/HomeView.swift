//
//  HomeView.swift
//  CustomRoutingAndNavigationStack
//
//  Created by Sheraz Ahmed on 18/02/2025.
//

import SwiftUI

struct HomeView: View {
    
    @EnvironmentObject var router: Router<AppRoutes>
    
    var body: some View {
        VStack {
            Text("🏠 Home View")
                .font(.largeTitle)
            
            Button {
                router.navigate(to: .profile)
            } label: {
                Text("Go to Profile")
                    .frame(maxWidth: .infinity, minHeight: 45)
            }
            .buttonStyle(.borderedProminent)
            
            Button {
                router.navigate(to: .settings)
            } label: {
                Text("Go to Settings")
                    .frame(maxWidth: .infinity, minHeight: 45)
            }
            .buttonStyle(.bordered)
            
            
            Button {
                router.navigate(to: .notifications)
            } label: {
                Text("Go to Notifications")
                    .frame(maxWidth: .infinity, minHeight: 45)
            }
            .buttonStyle(.bordered)

            Spacer()
            
        }
        .padding()
    }
}

#Preview {
    HomeView()
}
