//
//  SettingsView.swift
//  CustomRoutingAndNavigationStack
//
//  Created by Sheraz Ahmed on 18/02/2025.
//

import SwiftUI

struct SettingsView: View {
    @EnvironmentObject var router: Router<AppRoutes>
    var body: some View {
        VStack {
            Text("⚙️ Settings View")
                .font(.largeTitle)
            
            Button {
                router.navigate(to: .changePassword)
            } label: {
                Text("Change Password")
                    .frame(maxWidth: .infinity, minHeight: 45)
            }
            .buttonStyle(.borderedProminent)
            
            Button {
                router.navigate(to: .securitySettings)
            } label: {
                Text("Security Settings")
                    .frame(maxWidth: .infinity, minHeight: 45)
            }
            .buttonStyle(.bordered)
            
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
        .navigationTitle("Settings")
    }
}

#Preview {
    SettingsView()
}
