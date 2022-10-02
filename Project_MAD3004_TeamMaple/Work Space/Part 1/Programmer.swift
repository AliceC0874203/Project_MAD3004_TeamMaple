//
//  Programmer.swift
//  Project_MAD3004_TeamMaple
//
//  Created by Alice’z Poy on 2022-09-27.
//

import Foundation

class Programmer: Employee {
    private var _numberOfProjectsCompleted : Int=0;
        var numberOfProjectsCompleted: Int {
            get { return _numberOfProjectsCompleted }
        }
}
