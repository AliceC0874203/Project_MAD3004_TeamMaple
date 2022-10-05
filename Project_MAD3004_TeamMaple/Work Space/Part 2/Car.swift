//
//  Car.swift
//  Project_MAD3004_TeamMaple
//
//  Created by Alice’z Poy on 2022-09-27.
//

import Foundation

class Car: Vehicle {
    private var _gear: String = "";
    private var _type: String = "";
    
    init(gear: String, type: String) {
        super.init()
        self._gear = gear
        self._type = type
    }
    
    init(make: String, plate: String, color: String, category: String,gear: String, type: String) {
        super.init(_make : make, _plate :plate, _color :color, _category :category)
        self._gear = gear
        self._type = type
    }
    
}
