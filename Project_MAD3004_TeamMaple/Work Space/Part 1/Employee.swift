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
    
    func calculateAge(birthYear: Int) -> Int {
        var year = 1988;
        year = birthYear;
        let dob = Date(year: year, month: 1, day: 1)
        let age = dob.age

        return age;
    }
    
}

extension Date {

    //An integer representation of age from the date object.
    var age: Int {
        get {
            let now = Date()
            let calendar = Calendar.current

            let ageComponents = calendar.dateComponents([.year], from: self, to: now)
            let age = ageComponents.year!
            return age
        }
    }

    init(year: Int, month: Int, day: Int) {
        var dateComponent = DateComponents()
        dateComponent.year = year
        dateComponent.month = month
        dateComponent.day = day

        var calendar = Calendar(identifier: .gregorian)
        calendar.timeZone = TimeZone(secondsFromGMT: 0)!
        if let date = calendar.date(from: dateComponent) {
            self.init(timeInterval: 0, since: date)
        } else {
            fatalError("Date component values were invalid.")
        }
    }

}
