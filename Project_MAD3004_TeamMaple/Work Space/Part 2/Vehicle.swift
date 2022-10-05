//
//  Vehicle.swift
//  Project_MAD3004_TeamMaple
//
//  Created by Alice’z Poy on 2022-09-27.
//

import Foundation

class Vehicle {
    private var _make: String = "";
    private var _plate: String = "";
    private var _color: String = "";
    private var _category: String = "";
    
    init(){
        self._make = ""
        self._plate = ""
        self._color = ""
        self._category = ""
    }
    
    init(_make: String, _plate: String, _color: String, _category: String) {
        self._make = _make
        self._plate = _plate
        self._color = _color
        self._category = _category
    }
    
}
