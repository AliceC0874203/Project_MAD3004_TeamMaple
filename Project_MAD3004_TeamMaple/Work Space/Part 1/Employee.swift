//
//  Employee.swift
//  Project_MAD3004_TeamMaple
//
//  Created by Malsha Parani on 2022-09-27.
//

import Foundation

class Employee {
    
    //necessary variables
    private var _name : String
    private var _birthYear : Int
    private var _age : Int;
    private var _monthlyIncome : Double
    private var _rate : Int = 100;
    private var _employeeVehicle : Vehicle;
    
    
    //defining setter & getter
    var name: String {
        get { return _name }
        set { _name = newValue }
    }
    
    var birthYear: Int {
        get { return _birthYear }
        set { _birthYear = newValue }
    }
    
    var age: Int {
        get { return _age }
        set { _age = newValue }
    }
    
    var monthlyIncome: Double {
        get { return _monthlyIncome }
        set { _monthlyIncome = newValue }
    }
    
    var rate: Int {
        get {
            if(self.rate < 10){
                return 10;
            }else if(self.rate > 100){
                return 100;
            }
            return _rate
        }
        set { _rate = newValue }
    }
    
    
    var employeeVehicle: Vehicle {
        get { return _employeeVehicle }
    }
    
    
    //empty initialization
    init(){
        self._name = ""
        self._birthYear = 2000
        self._age = 0
        self._monthlyIncome = 0;
        self._rate = 0;
        self._employeeVehicle = Car(make: "Lamborghini", plate: "Custom Plate", color: "White", category: "Family", gear: "Manual", type: "Sport")
    }

    //initialisation as per test case
    init(name: String) {
        self._name = name;
        self._birthYear = 0;
        self._age = 0
        self._monthlyIncome = 0;
        self._rate = 0;
        self._employeeVehicle = Car(make: "Lamborghini", plate: "Custom Plate", color: "White", category: "Family", gear: "Manual", type: "Sport")
    }
    init(name: String,birthYear:Int) {
        self._name = name;
        self._birthYear = birthYear;
        self._age = 0
        self._monthlyIncome = 0;
        self._rate = 0;
        self._employeeVehicle = Car(make: "Lamborghini", plate: "Custom Plate", color: "White", category: "Family", gear: "Manual", type: "Sport")
    }
    init(name: String,birthYear:Int,rate: Int) {
        self._name = name;
        self._birthYear = birthYear;
        self._age = 0
        self._monthlyIncome = 0;
        if(rate < 10) {
            self._rate = 10
        }
        else if (rate > 100){
            self._rate = 100
        }
        else {
            self._rate = rate
        }
        self._employeeVehicle = Car(make: "Lamborghini", plate: "Custom Plate", color: "White", category: "Family", gear: "Manual", type: "Sport")
    }
    //end of initialisation as per test case
    
//    init(name: String, birthYear: Int, age: Int, monthlyIncome: Double, rate: Int) {
//        self._name = name;
//        self._birthYear = birthYear;
//        self._age = age;
//        self._monthlyIncome = monthlyIncome;
//        if(rate < 10) {
//            self._rate = 10
//        }
//        else if (rate > 100){
//            self._rate = 100
//        }
//        else {
//            self._rate = rate
//        }
//        self._employeeVehicle = Car(make: "Lamborghini", plate: "Custom Plate", color: "White", category: "Family", gear: "Manual", type: "Sport")
//    }
//
//    init(name: String, birthYear: Int, age: Int, monthlyIncome: Double, rate: Int, employeeVehicle: Vehicle) {
//        self._name = name;
//        self._birthYear = birthYear;
//        self._age = age;
//        self._monthlyIncome = monthlyIncome;
//        if(rate < 10) {
//            self._rate = 10
//        }
//        else if (rate > 100){
//            self._rate = 100
//        }
//        else {
//            self._rate = rate
//        }
//        self._employeeVehicle = employeeVehicle;
//    }
    
    
    
        
    func calculateAge(birthYear: Int) -> Int {
//        var year = 1988
//        year = birthYear
//        let dob = Date(year: year, month: 1, day: 1)
//        let age = dob.age
        
        let currentYear = 2022
        let age = currentYear - birthYear
        
        return age
    }
    
    func printData(_ msg :String = "We have a new employee"){
        print(msg)
    }
    
    
}
