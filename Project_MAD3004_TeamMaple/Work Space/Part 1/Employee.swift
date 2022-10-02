//
//  Employee.swift
//  Project_MAD3004_TeamMaple
//
//  Created by Alice’z Poy on 2022-09-27.
//

import Foundation

class Employee {
    private var name: String;
    private var birthYear: Int;
    private var age: Int;
    private var monthlyIncome: Double;
    private var occupationRate: Int;
    private var vehicle: String;
    
    init(name: String, birthYear: Int, age: Int, monthlyIncome: Double, occupationRate: Int, vehicle: String) {
        self.name = name;
        self.birthYear = birthYear;
        self.age = age;
        self.monthlyIncome = monthlyIncome;
        self.occupationRate = occupationRate;
        self.vehicle = vehicle;
        
    }
}
