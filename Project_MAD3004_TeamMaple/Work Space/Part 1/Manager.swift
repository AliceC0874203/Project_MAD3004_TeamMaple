//
//  Manager.swift
//  Project_MAD3004_TeamMaple
//
//  Created by Malsha Parani on 2022-09-27.
//

import Foundation

class Manager: Employee {
    private var _nbTravelDays: Int=0
    private var _nbClients : Int=0
    
        var nbTravelDays: Int {
            get { return _nbTravelDays }
            set { _nbTravelDays = newValue }
        }
    
        var nbClients: Int {
            get { return _nbClients }
            set { _nbClients = newValue }
        }
    
    init(name: String, birthYear: Int,nbClients: Int,nbTravelDays: Int,rate:Int = 100, employeeVehicle: Vehicle? = nil) {
        super.init(name: name, birthYear: birthYear,rate: rate,employeeVehicle: employeeVehicle)
        self._nbTravelDays = nbTravelDays
        self._nbClients = nbClients
        printMessage()
    }
    
    func printMessage() {
        printData("We have a new employee: \(name), a manager.")
    }
}

extension Manager {
    override var description: String {
        let a =
        """
        Name: \(name), a Manager \n
        """
        
        return a + super.description
    }
}
