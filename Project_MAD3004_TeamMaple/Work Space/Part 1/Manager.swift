//
//  Manager.swift
//  Project_MAD3004_TeamMaple
//
//  Created by Malsha Parani on 2022-09-27.
//

import Foundation

class Manager: Employee {
    private var _nbTravelDays: Int=0;
    private var _nbClients : Int=0;
    
        var nbTravelDays: Int {
            get { return _nbTravelDays }
        }
    
        var nbClients: Int {
            get { return _nbClients }
        }
    
    convenience init(name: String, birthYear: Int, nbClients: Int, nbTravelDays: Int) {
        self.init(name: name, birthYear: birthYear, nbClients: nbClients, nbTravelDays: nbTravelDays)
        self._nbTravelDays = nbTravelDays;
        self._nbClients = nbClients;
    }
    
    convenience init(name: String, birthYear: Int, nbClients: Int, nbTravelDays: Int, rate: Int) {
        self.init(name: name, birthYear: birthYear, nbClients: nbClients, nbTravelDays: nbTravelDays, rate: rate)
        self._nbTravelDays = nbTravelDays;
        self._nbClients = nbClients;
    }
    
    convenience init(name: String, birthYear: Int, nbClients: Int, nbTravelDays: Int, employeeVehicle: Vehicle) {
        self.init(name: name, birthYear: birthYear, nbClients: nbClients, nbTravelDays: nbTravelDays, employeeVehicle: employeeVehicle)
        self._nbTravelDays = nbTravelDays;
        self._nbClients = nbClients;
    }
    
    convenience init(name: String, birthYear: Int, nbClients: Int, nbTravelDays: Int, rate: Int, employeeVehicle: Vehicle) {
        self.init(name: name, birthYear: birthYear, nbClients: nbClients, nbTravelDays: nbTravelDays, rate:rate, employeeVehicle: employeeVehicle)
        self._nbTravelDays = nbTravelDays;
        self._nbClients = nbClients;
    }
    
    func printMessage() {
        print("We have a new employee: \(name), a manager");
    }
}
