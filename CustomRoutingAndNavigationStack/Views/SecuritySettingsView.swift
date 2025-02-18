//
//  SecuritySettingsView.swift
//  CustomRoutingAndNavigationStack
//
//  Created by Sheraz Ahmed on 18/02/2025.
//

import SwiftUI

struct SecuritySettingsView: View {
    
    @EnvironmentObject var router: Router<AppRoutes>
    var body: some View {
        VStack {
            Text("🔐 Security Settings")
                .font(.largeTitle)
            
            Button {
                router.navigateBack()
            } label: {
                Text("Go Back to Settings")
                    .frame(maxWidth: .infinity, minHeight: 45)
            }
            .tint(.red)
            .buttonStyle(.bordered)
            
            Button {
                router.navigateToRoot()
            } label: {
                Text("Go Back to Home")
                    .frame(maxWidth: .infinity, minHeight: 45)
            }
            .tint(.red)
            .buttonStyle(.bordered)
            
            Spacer()
        }
        .padding()
        .navigationTitle("Security Settings")
    }
}

#Preview {
    SecuritySettingsView()
}
