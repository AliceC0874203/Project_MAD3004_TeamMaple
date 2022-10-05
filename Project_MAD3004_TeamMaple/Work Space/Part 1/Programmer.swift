//
//  Programmer.swift
//  Project_MAD3004_TeamMaple
//
//  Created by Malsha Parani on 2022-09-27.
//

import Foundation

class Programmer: Employee {
    private var _nbProjects: Int=0;
    
    var nbProjects: Int {
        get { return _nbProjects }
        set { _nbProjects = newValue }
    }

    //initialisation as per test case
    init(name: String, birthYear: Int,nbProjects: Int) {
        super.init(name: name, birthYear: birthYear)
        self._nbProjects = nbProjects;
        printMessage()
    }
    init(name: String, birthYear: Int,nbProjects: Int,rate:Int) {
        super.init(name: name, birthYear: birthYear, rate: rate)
        self._nbProjects = nbProjects;
        printMessage()
    }
    //end of initialisation as per test case
    
//    convenience init(name: String, birthYear: Int, nbProjects: Int) {
//        self.init(name: name, birthYear: birthYear, nbProjects: nbProjects)
//        self._nbProjects = nbProjects;
//    }
//
//    convenience init(name: String, birthYear: Int, nbProjects: Int, rate: Int) {
//        self.init(name: name, birthYear: birthYear, nbProjects: nbProjects, rate: rate)
//        self._nbProjects = nbProjects;
//    }
//
//    convenience init(name: String, birthYear: Int, nbProjects: Int, rate: Int, employeeVehicle: Vehicle) {
//        self.init(name: name, birthYear: birthYear, nbProjects: nbProjects, rate: rate, employeeVehicle: employeeVehicle)
//        self._nbProjects = nbProjects;
//    }
//
//    convenience init(name: String, birthYear: Int, nbProjects: Int, employeeVehicle: Vehicle) {
//        self.init(name: name, birthYear: birthYear, nbProjects: nbProjects, employeeVehicle: employeeVehicle)
//        self._nbProjects = nbProjects;
//    }
    
    func printMessage() {
        print("We have a new employee: \(name), a programmer");
    }
}
