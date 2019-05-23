//
//  URL+extension.swift
//  CuckooTestTests
//
//  Created by 近藤 寛志 on 2019/05/22.
//  Copyright © 2019 iret, Inc. All rights reserved.
//

import Foundation
import Cuckoo

extension URL: Matchable {
    public var matcher: ParameterMatcher<URL> {
        return ParameterMatcher { $0 == self }
    }
}
