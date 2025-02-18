//
//  ChangePasswordView.swift
//  CustomRoutingAndNavigationStack
//
//  Created by Sheraz Ahmed on 18/02/2025.
//

import SwiftUI

struct ChangePasswordView: View {
    @EnvironmentObject var router: Router<AppRoutes>
    var body: some View {
        VStack {
            Text("🔑 Change Password")
                .font(.largeTitle)
            
            Button {
                router.navigateBack()
            } label: {
                Text("Go Back to Settings")
                    .frame(maxWidth: .infinity, minHeight: 45)
            }
            .tint(.red)
            .buttonStyle(.bordered)
            
            Spacer()
        }
        .padding()
        .navigationTitle("Change Password")
    }
}

#Preview {
    ChangePasswordView()
}
