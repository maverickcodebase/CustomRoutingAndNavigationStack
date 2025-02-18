//
//  Router.swift
//  CustomRoutingAndNavigationStack
//
//  Created by Sheraz Ahmed on 18/02/2025.
//

import Foundation
import SwiftUI

public final class Router<Routes: Routable>: ObservableObject, RoutableObject {
    public typealias Destination = Routes
    
    @Published public var stack: [Destination] = []
    
    public init() {}
    
    
}
