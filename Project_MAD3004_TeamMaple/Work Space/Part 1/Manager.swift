//
//  Manager.swift
//  Project_MAD3004_TeamMaple
//
//  Created by Alice’z Poy on 2022-09-27.
//

import Foundation

class Manager: Employee {
    private var _numberOfTravelDays : Int=0;
    private var _numberOfNewClintsBought : Int=0;
    
    var numberOfTravelDays: Int {
        get { return _numberOfTravelDays }
    }
    
    var numberOfNewClintsBought: Int {
        get { return _numberOfNewClintsBought }
    }
}
