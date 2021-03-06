//
//  LoginViewControllerTests.swift
//  TeesasAppTests
//
//  Created by Tes on 26/03/2022.
//

import XCTest
@testable import TeesasApp

class LoginViewControllerTests: XCTestCase {
    
    var sut: LoginViewController!
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = LoginViewController()
    }
    
    override func tearDownWithError() throws {
        sut = nil
        try super.tearDownWithError()
    }
    
    func testIfLoginButtonConfiguration(){
        // given
        let guess = sut.loginButton
        
        // when
        sut.loadViewIfNeeded()
        
        // then
        XCTAssertNotNil(guess)
        XCTAssertEqual(guess.layer.borderColor, UIColor.systemGreen.cgColor)
        XCTAssertFalse(guess.translatesAutoresizingMaskIntoConstraints)
        XCTAssertEqual(guess.titleLabel?.text, "Login")
    }
    
}
