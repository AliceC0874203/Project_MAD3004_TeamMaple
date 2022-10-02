//
//  Employee.swift
//  Project_MAD3004_TeamMaple
//
//  Created by Alice’z Poy on 2022-09-27.
//

import Foundation

class Employee {
    private var _name : String;
        var name: String {
            get { return _name }
        }
    
    private var _birthYear : Int;
        var birthYear: Int {
            get { return _birthYear }
        }
    
    private var _age : Int;
        var age: Int {
            get { return _age }
        }
    
    private var _monthlyIncome : Double;
        var monthlyIncome: Double {
            get { return _monthlyIncome }
        }
    
    private var _occupationRate : Int;
        var occupationRate: Int {
            get { return _occupationRate }
        }
    
    private var _vehicle : String;
        var vehicle: String {
            get { return _vehicle }
        }
    
    init(name: String, birthYear: Int, age: Int, monthlyIncome: Double, occupationRate: Int, vehicle: String) {
        self._name = name;
        self._birthYear = birthYear;
        self._age = age;
        self._monthlyIncome = monthlyIncome;
        self._occupationRate = occupationRate;
        self._vehicle = vehicle;

    }
}
