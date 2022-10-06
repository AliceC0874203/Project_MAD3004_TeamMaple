//
//  Programmer.swift
//  Project_MAD3004_TeamMaple
//
//  Created by Malsha Parani on 2022-09-27.
//

import Foundation

class Programmer: Employee {
    
    private var _nbProjects: Int=0
    
    var nbProjects: Int {
        get { return _nbProjects }
        set { _nbProjects = newValue }
    }

    init(name: String, birthYear: Int,nbProjects: Int,rate:Int = 100, employeeVehicle: Vehicle? = nil) {
        super.init(name: name, birthYear: birthYear, rate: rate,employeeVehicle: employeeVehicle)
        self._nbProjects = nbProjects
        printMessage()
    }
    
    func printMessage() {
        printData("We have a new employee: \(name), a programmer")
    }
}

extension Programmer {
    override var description: String {
        let a =
        """
        Name: \(name), a Programmer \n
        """
        
        let b = """
        and completed \(nbProjects) projects.
        His/Her estimated annual income is
        """
        return a + super.description + b
    }
}
