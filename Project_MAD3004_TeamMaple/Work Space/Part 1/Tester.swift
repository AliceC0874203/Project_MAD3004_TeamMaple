//
//  Tester.swift
//  Project_MAD3004_TeamMaple
//
//  Created by Malsha Parani on 2022-09-27.
//

import Foundation

class Tester: Employee {
    private var _nbBugs: Int=0
    
    var nbBugs: Int {
        get { return _nbBugs }
        set { _nbBugs = newValue }
    }
    
    init(name: String, birthYear: Int,nbBugs: Int,rate:Int = 100, employeeVehicle: Vehicle? = nil) {
        super.init(name: name, birthYear: birthYear, rate: rate,employeeVehicle: employeeVehicle)
        self.nbBugs = nbBugs
        printMessage()
    }

    func printMessage() {
        printData("We have a new employee: \(name), a tester")
    }
}

extension Tester {
    override var description: String {
        let a =
        """
        Name: \(name), a Tester \n
        """
        
        return a + super.description
    }
}
