//
//  Programmer.swift
//  Project_MAD3004_TeamMaple
//
//  Created by Malsha Parani on 2022-09-27.
//

import Foundation

class Programmer: Employee {
    
    private var _nbProjects: Int=0
    private let _GainFactorProjjects = 200
    
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
    
    override func annualIncome() -> Double {
        let baseYearlyIncome = (monthlyIncome * Double(12)) * Double(rate)
        let bonus = Double(_GainFactorProjjects * nbProjects)
        return baseYearlyIncome + bonus
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
        His/Her estimated annual income is \(annualIncome())
        """
        return a + super.description + b
    }
}
