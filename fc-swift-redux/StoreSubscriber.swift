//
//  StoreSubscriber.swift
//  fc-swift-redux
//
//  Created by Fredrik Christenson on 2017-02-10.
//  Copyright © 2017 Fredrik Christenson. All rights reserved.
//

import Foundation

public protocol StoreSubscriber {
    func newState(_ state: AppState)
}
