// MARK: - Mocks generated from file: CuckooTest/UIApplicationProtocol.swift at 2019-05-23 01:24:22 +0000

//
//  UIApplicationProtocol.swift
//  SDKMock
//
//  Created by 近藤 寛志 on 2019/05/19.
//  Copyright © 2019 iret, Inc. All rights reser
import Cuckoo
@testable import CuckooTest

import UIKit


 class MockUIApplicationProtocol: UIApplicationProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = UIApplicationProtocol
    
     typealias Stubbing = __StubbingProxy_UIApplicationProtocol
     typealias Verification = __VerificationProxy_UIApplicationProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: UIApplicationProtocol?

     func enableDefaultImplementation(_ stub: UIApplicationProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func canOpenURL(_ url: URL) -> Bool {
        
    return cuckoo_manager.call("canOpenURL(_: URL) -> Bool",
            parameters: (url),
            escapingParameters: (url),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.canOpenURL(url))
        
    }
    
    
    
     func open(_ url: URL, options: [UIApplication.OpenExternalURLOptionsKey : Any], completionHandler completion: ((Bool) -> Void)?)  {
        
    return cuckoo_manager.call("open(_: URL, options: [UIApplication.OpenExternalURLOptionsKey : Any], completionHandler: ((Bool) -> Void)?)",
            parameters: (url, options, completion),
            escapingParameters: (url, options, completion),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.open(url, options: options, completionHandler: completion))
        
    }
    

	 struct __StubbingProxy_UIApplicationProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func canOpenURL<M1: Cuckoo.Matchable>(_ url: M1) -> Cuckoo.ProtocolStubFunction<(URL), Bool> where M1.MatchedType == URL {
	        let matchers: [Cuckoo.ParameterMatcher<(URL)>] = [wrap(matchable: url) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockUIApplicationProtocol.self, method: "canOpenURL(_: URL) -> Bool", parameterMatchers: matchers))
	    }
	    
	    func open<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable, M3: Cuckoo.OptionalMatchable>(_ url: M1, options: M2, completionHandler completion: M3) -> Cuckoo.ProtocolStubNoReturnFunction<(URL, [UIApplication.OpenExternalURLOptionsKey : Any], ((Bool) -> Void)?)> where M1.MatchedType == URL, M2.MatchedType == [UIApplication.OpenExternalURLOptionsKey : Any], M3.OptionalMatchedType == ((Bool) -> Void) {
	        let matchers: [Cuckoo.ParameterMatcher<(URL, [UIApplication.OpenExternalURLOptionsKey : Any], ((Bool) -> Void)?)>] = [wrap(matchable: url) { $0.0 }, wrap(matchable: options) { $0.1 }, wrap(matchable: completion) { $0.2 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockUIApplicationProtocol.self, method: "open(_: URL, options: [UIApplication.OpenExternalURLOptionsKey : Any], completionHandler: ((Bool) -> Void)?)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_UIApplicationProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func canOpenURL<M1: Cuckoo.Matchable>(_ url: M1) -> Cuckoo.__DoNotUse<(URL), Bool> where M1.MatchedType == URL {
	        let matchers: [Cuckoo.ParameterMatcher<(URL)>] = [wrap(matchable: url) { $0 }]
	        return cuckoo_manager.verify("canOpenURL(_: URL) -> Bool", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func open<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable, M3: Cuckoo.OptionalMatchable>(_ url: M1, options: M2, completionHandler completion: M3) -> Cuckoo.__DoNotUse<(URL, [UIApplication.OpenExternalURLOptionsKey : Any], ((Bool) -> Void)?), Void> where M1.MatchedType == URL, M2.MatchedType == [UIApplication.OpenExternalURLOptionsKey : Any], M3.OptionalMatchedType == ((Bool) -> Void) {
	        let matchers: [Cuckoo.ParameterMatcher<(URL, [UIApplication.OpenExternalURLOptionsKey : Any], ((Bool) -> Void)?)>] = [wrap(matchable: url) { $0.0 }, wrap(matchable: options) { $0.1 }, wrap(matchable: completion) { $0.2 }]
	        return cuckoo_manager.verify("open(_: URL, options: [UIApplication.OpenExternalURLOptionsKey : Any], completionHandler: ((Bool) -> Void)?)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class UIApplicationProtocolStub: UIApplicationProtocol {
    

    

    
     func canOpenURL(_ url: URL) -> Bool  {
        return DefaultValueRegistry.defaultValue(for: (Bool).self)
    }
    
     func open(_ url: URL, options: [UIApplication.OpenExternalURLOptionsKey : Any], completionHandler completion: ((Bool) -> Void)?)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}

