//
//  Store.swift
//  Movio
//
//  Created by Kevin Ngo on 2020-05-09.
//  Copyright © 2020 Kevin Ngo. All rights reserved.
//

import Foundation
import SwiftUI
import CoreData

final class AppStore: ObservableObject {
    @Environment(\.managedObjectContext) var managedObjectContext
    
    //setting state is now private, but getting is still default access
    @Published private(set) var state: AppState
    
    init(state: AppState = .init(test: [String]())) {
        self.state = state
        
    }
    
    
    
//    public func dispatch(action: AppAction) {
//        state = appReducer(state: state, action: action)
//    }
    
}
