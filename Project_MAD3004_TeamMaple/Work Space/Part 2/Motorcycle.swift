//
//  Motorcycle.swift
//  Project_MAD3004_TeamMaple
//
//  Created by Alice’z Poy on 2022-09-27.
//

import Foundation

class Motorcycle: Vehicle {
    private var _sidecar: Bool = false;
    
    init(sidecar: Bool) {
        super.init()
        self._sidecar = sidecar
    }
    
    init(make: String, plate: String, color: String, category: String,sidecar: Bool) {
        super.init(_make : make, _plate :plate, _color :color, _category :category)
        self._sidecar = sidecar
    }
}
