//
//  DateExtension.swift
//  Project_MAD3004_TeamMaple
//
//  Created by Malsha Parani on 2022-10-03.
//

import Foundation

extension Date {

    //An integer representation of age from the date object.
    var age: Int {
        get {
            let now = Date()
            let calendar = Calendar.current

            let ageComponents = calendar.dateComponents([.year], from: self, to: now)
            let age = ageComponents.year!
            return age
        }
    }

    init(year: Int, month: Int, day: Int) {
        var dateComponent = DateComponents()
        dateComponent.year = year
        dateComponent.month = month
        dateComponent.day = day

        var calendar = Calendar(identifier: .gregorian)
        calendar.timeZone = TimeZone(secondsFromGMT: 0)!
        if let date = calendar.date(from: dateComponent) {
            self.init(timeInterval: 0, since: date)
        } else {
            fatalError("Date component values were invalid.")
        }
    }

}

