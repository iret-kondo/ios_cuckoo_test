//
//  CuckooTestTests.swift
//  CuckooTestTests
//
//  Created by 近藤 寛志 on 2019/05/22.
//  Copyright © 2019 iret, Inc. All rights reserved.
//

import XCTest
@testable import CuckooTest
import Cuckoo

class CuckooTestTests: XCTestCase {
    private let mock = MockUIApplicationProtocol()

    override func setUp() {
        let url = URL(string: "hoge")
        stub(mock) { mock in
            when(mock.canOpenURL(any())).thenReturn(false)
            when(mock.canOpenURL(url!)).thenReturn(true)
            when(mock.open(any(), options: any(), completionHandler: any())).thenDoNothing()
        }
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testOpenUrl() {
        let viewController = ViewController()
        
        viewController.open(urlString: "hoge", application: mock)
        verify(mock, times(1)).canOpenURL(any())
        verify(mock, times(1)).open(any(), options: any(), completionHandler: any())

        viewController.open(urlString: "hogehoge", application: mock)
        verify(mock, times(2)).canOpenURL(any())
        verify(mock, times(1)).open(any(), options: any(), completionHandler: any())

        viewController.open(urlString: "", application: mock)
        verify(mock, times(2)).canOpenURL(any())
        verify(mock, times(1)).open(any(), options: any(), completionHandler: any())
    }
    
}
