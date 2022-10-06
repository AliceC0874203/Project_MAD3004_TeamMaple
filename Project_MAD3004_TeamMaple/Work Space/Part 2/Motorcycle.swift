//
//  Motorcycle.swift
//  Project_MAD3004_TeamMaple
//
//  Created by Alice’z Poy on 2022-09-27.
//

import Foundation

class Motorcycle: Vehicle {
    private var _sidecar: Bool = false
    
    var sidecar:Bool{
        get{return _sidecar}
        set{_sidecar = newValue}
    }
    
    init(make: String, plate: String, color: String, category: String, sidecar: Bool = false) {
        super.init(_make : make, _plate :plate, _color :color, _category :category)
        self._sidecar = sidecar
    }
}

extension Motorcycle {
    override var description: String {
        let a = """
        Employee has a motorcycle\n
        """
        
        let b = """
        \n\t- \(sidecar ? "with" : "without") sidecar
        """
        return a + super.description + b
    }
}
