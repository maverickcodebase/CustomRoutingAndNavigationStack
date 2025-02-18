//
//  EditProfileView.swift
//  CustomRoutingAndNavigationStack
//
//  Created by Sheraz Ahmed on 18/02/2025.
//

import SwiftUI

struct EditProfileView: View {
    @EnvironmentObject var router: Router<AppRoutes>
    
    var body: some View {
        VStack {
            Text("📝 Edit Profile")
                .font(.largeTitle)
            
            Button {
                router.navigateBack()
            } label: {
                Text("Go Back to Profile")
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
            
            Button {
                router.navigateBack(2)
            } label: {
                Text("Go Back to Home")
                    .frame(maxWidth: .infinity, minHeight: 45)
            }
            .tint(.red)
            .buttonStyle(.bordered)
            
            Spacer()
        }
        .padding()
        .navigationTitle("Edit Profile")
    }
}

#Preview {
    EditProfileView()
}
