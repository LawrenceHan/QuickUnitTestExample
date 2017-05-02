//
//  String+Validation.swift
//  QuickUnitTestExample
//
//  Created by Hanguang on 02/05/2017.
//  Copyright © 2017 hanguang. All rights reserved.
//

import Quick
import Nimble
@testable import QuickUnitTestExample

class String_Validation: QuickSpec {
    override func spec() {
        describe("valid string") {
            var text: String!
            beforeEach {
                text = ""
            }
            
            context("validAlpha", { 
                it("should return TRUE when string has no spaces", closure: {
                    text = "HelloWorld"
                    expect(text.validAlpha()).to(beTrue())
                })
                
                it("should return FALSE when string has spaces", closure: {
                    text = "Hello World"
                    expect(text.validAlpha()).to(beFalse())
                })
            })
            
            context("validateAlphaSpaces", {
                it("should return TRUE when string has spaces", closure: {
                    text = "Hello World"
                    expect(text.validateAlphaSpaces()).to(beTrue())
                })
            })
            
            context("validateDecimalDigit", { 
                it("should return TRUE when string is digit", closure: {
                    text = "1234567890"
                    expect(text.validateDecimalDigit()).to(beTrue())
                })
                
                it("should return FALSE when string is not digit", closure: {
                    text = "Hello123"
                    expect(text.validateDecimalDigit()).to(beFalse())
                })
            })
            
            context("validEmail", { 
                it("should return FALSE when it's not an email", closure: {
                    text = "imnotanemail.com"
                    expect(text.validEmail()).to(beFalse())
                })
                
                it("should return FALSE when it's not an email", closure: {
                    text = "im@not@email.com"
                    expect(text.validEmail()).to(beFalse())
                })
                
                it("should return FALSE when it's not an email", closure: {
                    text = "im#not@an%email.com"
                    expect(text.validEmail()).to(beFalse())
                })
                
                it("should return true when it's an email", closure: {
                    text = "Lawrence@mogoroom.com"
                    expect(text.validEmail()).to(beTrue())
                })
            })
        }
    }
}
