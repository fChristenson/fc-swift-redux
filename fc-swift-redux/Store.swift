//
//  Store.swift
//  fc-swift-redux
//
//  Created by Fredrik Christenson on 2017-02-10.
//  Copyright © 2017 Fredrik Christenson. All rights reserved.
//

import Foundation

public class Store {
    private var subscriptions: [String: StoreSubscriber]
    private var token:         String
    private var reducer:       AppReducer
    public var state:          AppState

    init(reducer: AppReducer, state: AppState) {
        self.subscriptions = [:]
        self.reducer       = reducer
        self.state         = state
        self.token         = UUID().uuidString
    }

    public func subscribe(_ subscriber: StoreSubscriber) -> String {
        self.token = UUID().uuidString
        subscriptions[self.token] = subscriber
        return self.token
    }

    public func unsubscribe(_ token: String) {
        subscriptions.removeValue(forKey: token)
    }

    public func dispatch(_ action: Action) {
        state = self.reducer.reduce(state, action: action)
        subscriptions.forEach({_,sub in
            sub.newState(state)
        })
    }
}
