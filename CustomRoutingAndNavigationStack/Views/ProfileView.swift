//
//  ProfileView.swift
//  CustomRoutingAndNavigationStack
//
//  Created by Sheraz Ahmed on 18/02/2025.
//

import SwiftUI

struct ProfileView: View {
    @EnvironmentObject var router: Router<AppRoutes>

    var body: some View {
        VStack {
            Text("👤 Profile View")
                .font(.largeTitle)
            
            Button {
                router.navigate(to: .editProfile)
            } label: {
                Text("Edit Profile")
                    .frame(maxWidth: .infinity, minHeight: 45)
            }
            .buttonStyle(.borderedProminent)
            
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
        .navigationTitle("Profile")
    }
}

#Preview {
    ProfileView()
}
