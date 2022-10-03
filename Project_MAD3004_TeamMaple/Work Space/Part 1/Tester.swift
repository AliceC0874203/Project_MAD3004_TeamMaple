//
//  Tester.swift
//  Project_MAD3004_TeamMaple
//
//  Created by Malsha Parani on 2022-09-27.
//

import Foundation

class Tester: Employee {
    private var _nbBugs: Int=0;
    
    var nbBugs: Int {
        get { return _nbBugs }
    }
    
    convenience init(name: String, birthYear: Int, nbBugs: Int, rate: Int) {        self.init(name: name, birthYear: birthYear, nbBugs: nbBugs, rate: rate)
        self._nbBugs = nbBugs;
    }

    convenience init(name: String, birthYear: Int, nbBugs: Int, rate: Int, employeeVehicle: Vehicle) {
        self.init(name: name, birthYear: birthYear, nbBugs: nbBugs, rate: rate, employeeVehicle: employeeVehicle)
        self._nbBugs = nbBugs;
    }

    func printMessage() {
        print("We have a new employee: \(name), a tester");
    }
}
