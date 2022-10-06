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
    private var _age : Int
    private var _monthlyIncome : Double
    private var _rate : Int = 100
    private var _employeeVehicle : Vehicle?
    private var _contract : Contract?
    
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
        get { return calculateAge(birthYear: birthYear) }
        set { _age = newValue }
    }
    
    var monthlyIncome: Double {
        get { return _monthlyIncome }
        set { _monthlyIncome = newValue }
    }
    
    var rate: Int {
        get { return _rate }
        set { _rate = newValue }
    }
    
    var employeeVehicle: Vehicle? {
        get { return _employeeVehicle }
    }
    
    var contract: Contract? {
        get { return _contract }
        set { _contract = newValue }
    }

    //initialisation as per test case
    init(name: String,birthYear:Int,rate: Int = 100,employeeVehicle: Vehicle? = nil) {
        self._name = name
        self._birthYear = birthYear
        self._age = 0
        self._monthlyIncome = 0
        
        if(rate < 10) {
            self._rate = 10
        }
        else if (rate > 100){
            self._rate = 100
        }
        else {
            self._rate = rate
        }
        
        if let employeeVehicle = employeeVehicle {
            self._employeeVehicle = employeeVehicle
        }
    }
    
    func calculateAge(birthYear: Int) -> Int {
        if birthYear > 0 {
            let date = Date()
            let currentYear = Calendar.current.component(.year, from: date)
            return currentYear - birthYear
        }
        
        return 0
    }
    
    func printData(_ msg :String){
        print(msg)
    }
    
    func annualIncome() -> Double {
        let baseYearlyIncome = (monthlyIncome * Double(12)) * Double(rate)
        return baseYearlyIncome
    }
}

//MARK: - Employee Extension
extension Employee : CustomStringConvertible {
    @objc var description: String {
        let a =
        """
        Age: \(age)
        \(employeeVehicle ?? Vehicle())
        \(name) has an Occupation rate: \(rate)%
        """
        
        return a
    }    
    
    func signContract(contract : Contract?){
        self.contract = contract
    }
    
    func contractInfo() -> Contract?{
        return self.contract ?? nil
    }
}
