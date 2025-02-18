//
//  NotificationsView.swift
//  CustomRoutingAndNavigationStack
//
//  Created by Sheraz Ahmed on 18/02/2025.
//

import SwiftUI

struct NotificationsView: View {
    
    @EnvironmentObject var router: Router<AppRoutes>
    var body: some View {
        VStack {
            Text("🔔 Notifications View")
                .font(.largeTitle)
            
            Button {
                router.navigateBack()
            } label: {
                Text("Go Back")
                    .frame(maxWidth: .infinity, minHeight: 45)
            }
            .tint(.red)
            .buttonStyle(.bordered)
            
            Spacer()
        }
        .padding()
        .navigationTitle("Notifications")
    }
}

#Preview {
    NotificationsView()
}
