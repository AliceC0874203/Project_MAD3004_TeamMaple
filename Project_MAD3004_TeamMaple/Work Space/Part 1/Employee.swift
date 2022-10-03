//
//  Employee.swift
//  Project_MAD3004_TeamMaple
//
//  Created by Malsha Parani on 2022-09-27.
//

import Foundation

class Employee {
    private var _name : String
    var name: String {
        get { return _name }
    }
    
    private var _birthYear : Int
    var birthYear: Int {
        get { return _birthYear }
    }
    
    private var _age : Int;
        var age: Int {
            get { return _age }
        }
    
    private var _monthlyIncome : Double
    var monthlyIncome: Double {
        get { return _monthlyIncome }
    }
    
    private var _rate : Int = 100;
        var rate: Int {
            get {
                if(self.rate < 10){
                    return 10;
                }else if(self.rate > 100){
                    return 100;
                }
                return _rate
            }
        }
    
    private var _employeeVehicle : Vehicle;
        var employeeVehicle: Vehicle {
            get { return _employeeVehicle }
        }
     
    init(name: String, birthYear: Int, age: Int, monthlyIncome: Double, rate: Int, employeeVehicle: Vehicle) {
        self._name = name;
        self._birthYear = birthYear;
        self._age = age;
        self._monthlyIncome = monthlyIncome;
        self._rate = rate;
        self._employeeVehicle = employeeVehicle;
    }
    
    init(name: String) {
        self._name = name;
        self._birthYear = 0;
        self._age = 0;
        self._monthlyIncome = 0;
        self._rate = 0;
        self._employeeVehicle = Car(make: "Lamborghini", plate: "Custom Plate", color: "White", category: "Family", gear: "Manual", type: "Sport")
    }
    
    func calculateAge(birthYear: Int) -> Int {
        var year = 1988
        year = birthYear
        let dob = Date(year: year, month: 1, day: 1)
        let age = dob.age
        
        return age
    }
    
}
