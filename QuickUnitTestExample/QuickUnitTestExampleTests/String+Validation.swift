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
        describe("validate string") {
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
            
            context("validate string contain -_.", { 
                it("return TRUE when string contain '-'", closure: { 
                    text = "skfjkj-sjd"
                    expect(text.validateAlphanumericDash()).to(beTrue())
                })
                
                it("rerurn contain '_'", closure: {
                    text = "adddd_dadasd"
                    expect(text.validateAlphanumericDash()).to(beTrue())
                })
            })
            
            context("验证字符串是否为空", {
                it("是TRUE的如果这个字符串不是空的", closure: {
                    text = "asdf"
                    expect(text.validateNotEmpty()).to(beTrue())
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
