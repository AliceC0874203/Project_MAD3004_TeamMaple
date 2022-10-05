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
    
    var gear:String{
        get{return _gear}
        set{_gear = newValue}
    }
    var type:String{
        get{return _type}
        set{_type = newValue}
    }
    
    override init() {
        super.init()
        self._gear = ""
        self._type = ""
    }
    
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
