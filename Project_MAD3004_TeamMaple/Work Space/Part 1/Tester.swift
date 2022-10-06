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
        set { _nbBugs = newValue }
    }
    
    //initialisation as per test case
    init(name: String, birthYear: Int,nbBugs: Int,rate:Int) {
        super.init(name: name, birthYear: birthYear, rate: rate)
        self._nbBugs = nbBugs;
        printMessage()
    }
    init(name: String, birthYear: Int,nbBugs: Int,rate:Int, employeeVehicle: Vehicle) {
        super.init(name: name, birthYear: birthYear, rate: rate,employeeVehicle: employeeVehicle)
        self.nbBugs = nbBugs;
        printMessage()
    }
    //end of initialisation as per test case
    
    
//    convenience init(name: String, birthYear: Int, nbBugs: Int, rate: Int) {        self.init(name: name, birthYear: birthYear, nbBugs: nbBugs, rate: rate)
//        self._nbBugs = nbBugs;
//        printMessage()
//    }
//
//    convenience init(name: String, birthYear: Int, nbBugs: Int, rate: Int, employeeVehicle: Vehicle) {
//        self.init(name: name, birthYear: birthYear, nbBugs: nbBugs, rate: rate, employeeVehicle: employeeVehicle)
//        self._nbBugs = nbBugs;
//        printMessage()
//    }

    func printMessage() {
        printData("We have a new employee: \(name), a tester")
//        print("We have a new employee: \(name), a tester");
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
