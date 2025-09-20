//
//  RoutingKit.swift
//  CustomRoutingAndNavigationStack
//
//  Created by Sheraz Ahmed on 18/02/2025.
//

import Foundation
import SwiftUI

// MARK: - Routable Protocol
public typealias Routable = View & Hashable

public protocol RoutableObject: AnyObject {
    
    associatedtype Destination: Routable
    
    var stack: [Destination] {get set}
    
    func navigate(to destination: Destination)
    func navigate(to destinations: [Destination])
    
    func navigateBack(_ count: Int)
    func navigateBack(to destination: Destination)
    
    func navigateToRoot()
}

// MARK: - RoutableObject Extension
extension RoutableObject{
    
    public func navigate(to destination: Destination) {
        stack.append(destination)
    }
    
    public func navigate(to destinations: [Destination]) {
        stack += destinations
    }
    
    public func navigateBack(_ count: Int = 1) {
        guard count > 0 else { return }
        let safeCount = min(count, stack.count)
        stack.removeLast(safeCount)
    }
    
    public func navigateBack(to destination: Destination) {
        if let index = stack.lastIndex(of: destination), index < stack.count {
            stack.removeLast(stack.count - index - 1)
        }
    }
    
    public func navigateToRoot() {
        stack.removeAll()
    }
}

// MARK: - Router Class
public final class Router<Routes: Routable>: ObservableObject, RoutableObject {
    public typealias Destination = Routes
    
    @Published public var stack: [Destination] = []
    
    public init() {}
}

// MARK: - RoutingView
struct RoutingView<Root: View, Routes: Routable>: View {
    @Binding private var routes: [Routes]
    private let root: () -> Root
    
    public init(
        stack: Binding<[Routes]>,
        @ViewBuilder root: @escaping () -> Root
    ){
        self._routes = stack
        self.root = root
    }
    
    var body: some View {
        NavigationStack(path: $routes){
            root()
                .navigationDestination(for: Routes.self){ view in
                    view.body
                }
        }
    }
}
