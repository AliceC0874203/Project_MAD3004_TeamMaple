//
//  Permanent.swift
//  Project_MAD3004_TeamMaple
//
//  Created by Alice’z Poy on 2022-09-27.
//

import Foundation

class Permanent: Contract {
    private var _nbChildren: Int = 0
    private var _married: Bool = false
    private var _monthlySalary: Int = 0
    private var _bonusPerChildPerMonth: Int = 0
    private var _accumulatedDays: Int = 0
    
    var nbChildren: Int {
        get { return _nbChildren }
        set { _nbChildren = newValue }
    }
    
    var married: Bool {
        get { return _married }
        set { _married = newValue }
    }
    
    var monthlySalary: Int {
        get { return _monthlySalary }
        set { _monthlySalary = newValue }
    }
    
    var bonusPerChildPerMonth: Int {
        get { return _bonusPerChildPerMonth }
        set { _bonusPerChildPerMonth = newValue }
    }
    
    var accumulatedDays: Int {
        get { return _accumulatedDays }
        set { _accumulatedDays = newValue }
    }
    
    init(nbChildren: Int, married: Bool, monthlySalary: Int, bonusPerChildPerMonth: Int, accumulatedDays: Int) {
        self._nbChildren = nbChildren
        self._married = married
        self._monthlySalary = monthlySalary
        self._bonusPerChildPerMonth = bonusPerChildPerMonth
        self._accumulatedDays = accumulatedDays
    }
    
    func accumulatedSalary() -> Int {
        var childBonus = 0
        var cumulativeSalary = 0
        if (married && nbChildren > 0){
            childBonus = bonusPerChildPerMonth * nbChildren
        }
        let salary = monthlySalary + childBonus
        cumulativeSalary = (salary / 20) * accumulatedDays
        return cumulativeSalary
    }
    
    override var description: String {
        let a = """
        he \(married ? "is" : "is not") married and he/she has \(nbChildren) children.
        He/She has worked for \(accumulatedDays) days and upon contract his/her monthly salary is \(accumulatedSalary()).
        """
        return super.description + a
    }
}

