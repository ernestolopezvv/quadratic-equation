//
//  Ecuacion.swift
//  ecSegGrado
//
//  Created by Ernesto López on 01/09/21.
//

import Foundation

public class Ecuacion : Codable{
    public let valueA : Double
    public let valueB : Double
    public let valueC : Double
    public let raizUno : String
    public let raizDos : String

    
    public init(valueA: Double, valueB: Double, valueC: Double, raizUno: String, raizDos: String) {
        self.valueA = valueA
        self.valueB = valueB
        self.valueC = valueC
        self.raizUno = raizUno
        self.raizDos = raizDos

    }

    public enum Unit : String, Codable {
        case FAHRENHEIT
        case CELSIUS
    }
}
