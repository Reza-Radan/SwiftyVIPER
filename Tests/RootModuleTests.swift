//
//  RootInteractorTests.swift
//  SwiftyVIPER
//
//  Created by Cody Winton on 11/7/16.
//  Copyright © 2016 codeRed. All rights reserved.
//

// MARK: Imports

import XCTest

@testable import SwiftyVIPER


// MARK: -

class RootModuleTests: XCTestCase {
	
	// MARK: - Variables
	
	// MARK: Test Functions
	
	func testSetup() {
		let module = RootModule()
		
		XCTAssertNotNil(module.interactor)
		XCTAssertNotNil(module.router)
		XCTAssertNotNil(module.presenter)
		XCTAssertNotNil(module.view)
		XCTAssertNotNil(module.viewController)
		
		XCTAssertNotNil(module.view.presenter)
		
		XCTAssertNotNil(module.presenter.view)
		XCTAssertNotNil(module.presenter.router)
		XCTAssertNotNil(module.presenter.interactor)
		
		XCTAssertNotNil(module.router.viewController)
		
		XCTAssertNotNil(module.interactor.presenter)
	}
	
	
	// MARK: Setup
	
	override func setUp() {
        super.setUp()
		// Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
}
