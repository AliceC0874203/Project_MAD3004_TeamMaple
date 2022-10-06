//
//  Temporary.swift
//  Project_MAD3004_TeamMaple
//
//  Created by Alice’z Poy on 2022-09-27.
//

import Foundation

class Temporary: Employee {
    private var _hourlySalary: Int = 0
    private var _accumulatedHours: Int = 0
    
    var hourlySalary: Int {
        get { return _hourlySalary }
        set { _hourlySalary = newValue }
    }
    
    var accumulatedHours: Int {
        get { return _accumulatedHours }
        set { _accumulatedHours = newValue }
    }
    
    init(hourlySalary: Int, accumulatedHours: Int) {
        super.init(name: "", birthYear: 0)
        self._hourlySalary = hourlySalary
        self._accumulatedHours = accumulatedHours
    }
    
    override init(name: String, birthYear: Int, rate: Int = 100, employeeVehicle: Vehicle? = nil) {
        super.init(name: name, birthYear: birthYear)
        self._hourlySalary = hourlySalary
        self._accumulatedHours = accumulatedHours
    }
}
