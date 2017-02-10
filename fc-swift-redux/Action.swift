//
//  Action.swift
//  fc-swift-redux
//
//  Created by Fredrik Christenson on 2017-02-10.
//  Copyright © 2017 Fredrik Christenson. All rights reserved.
//

import Foundation

public struct Action {
    let type:    String
    let payload: [String: Any]?

    init(type: String, payload: [String: Any]? = [:]) {
        self.type    = type
        self.payload = payload
    }
}
