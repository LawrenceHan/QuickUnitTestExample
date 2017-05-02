//
//  String+Umlaute.swift
//  QuickUnitTestExample
//
//  Created by Hanguang on 02/05/2017.
//  Copyright © 2017 hanguang. All rights reserved.
//

import Foundation

extension String {
    func validAlpha() -> Bool {
        return validateInCharacterSet(CharacterSet.letters)
    }
    
    func validateAlphaSpaces() -> Bool {
        var set = CharacterSet.letters
        set.insert(charactersIn: " ")
        return validateInCharacterSet(set)
    }
    
    func validateDecimalDigit() -> Bool {
        return validateInCharacterSet(CharacterSet.decimalDigits)
    }
    
    func validateAlphanumeric() -> Bool {
        return validateInCharacterSet(CharacterSet.alphanumerics)
    }
    
    func validateAlphanumericDash() -> Bool {
        var set = CharacterSet.alphanumerics
        set.insert(charactersIn: "-_.")
        return validateInCharacterSet(set)
    }
    
    func validateInCharacterSet(_ characterSet: CharacterSet) -> Bool {
        return rangeOfCharacter(from: characterSet.inverted) != nil ? false : true
    }
    
    func validateNotEmpty() -> Bool {
        return characters.count == 0 ? false : true
    }
    
    func validEmail() -> Bool {
        let emailRegex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}"
        let emailTest = NSPredicate(format: "SELF MATCHES %@", emailRegex)
        return emailTest.evaluate(with: self)
    }
}
