//
//  AppRoutes.swift
//  CustomRoutingAndNavigationStack
//
//  Created by Sheraz Ahmed on 18/02/2025.
//

import Foundation
import SwiftUI

enum AppRoutes: Routable{
    case home
    case profile
    case settings
    case notifications
    case editProfile
    case changePassword
    case securitySettings
    
    
    var body: some View{
        switch self {
        case .home:
            HomeView()
        case .profile:
            ProfileView()
        case .settings:
            SettingsView()
        case .notifications:
            NotificationsView()
        case .editProfile:
            EditProfileView()
        case .changePassword:
            ChangePasswordView()
        case .securitySettings:
            SecuritySettingsView()
        }
    }
}
