//
//  ecSegGradoTests.swift
//  ecSegGradoTests
//
//  Created by Ernesto López on 27/08/21.
//


import XCTest
@testable import ecSegGrado

class ecuacionSegundoGradoTests: XCTestCase {
    
    var a:Float = 0
    var b:Float = 0
    var c:Float = 0
    var root1:String = ""
    var root2:String = ""
    
    func solveEcuaion(a:Float, b:Float, c:Float) -> (String, String) {
     
        let bSquere = b * b
        let discriminant = bSquere - (4 * a * c)
        let isImaginary = discriminant < 0
        let discriminantAbsSqtr = sqrt(abs(discriminant))
        
        if isImaginary {
            root1 = "(\(-b/2) + \(discriminantAbsSqtr / (2*a))i)"
            root2 = "(\(-b/2) - \(discriminantAbsSqtr / (2*a))i)"
            return (root1, root2)
            
        } else {
            let topFormula = -b + discriminantAbsSqtr
            let bottomFormula = 2 * a
            let totalX = topFormula / bottomFormula
            
            let topFormula2 = -b - discriminant
            let totalX2 = topFormula2 / bottomFormula
            
            root1 = "\(totalX)"
            root2 = "\(totalX2)"
        }
        return (root1, root2)
    }
    
    func testSolveEcuatioImaginary() throws {
        
        a = 1
        b = 1
        c = 1
        
        let resultA = solveEcuaion(a: a, b: b, c: c).0
        let resultB = solveEcuaion(a: a, b: b, c: c).1
        
        let expectedValueA: String = "(-0.5 + 0.8660254i)"
        let expectedValueB: String = "(-0.5 - 0.8660254i)"
        XCTAssertEqual(resultA, expectedValueA)
        XCTAssertEqual(resultB, expectedValueB)
    }
    
    func testSolveEcuation() throws {
        
        a = 1
        b = 5
        c = 6
        
        let resultA = solveEcuaion(a: a, b: b, c: c).0
        let resultB = solveEcuaion(a: a, b: b, c: c).1
        
        let expectedValueA: String = "-2.0"
        let expectedValueB: String = "-3.0"
        XCTAssertEqual(resultA, expectedValueA)
        XCTAssertEqual(resultB, expectedValueB)
        
    }
   
    

}
