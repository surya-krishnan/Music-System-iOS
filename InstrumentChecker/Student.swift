//
//  Student.swift
//  InstrumentChecker
//
//  Created by Surya Krishnan on 2020-01-02.
//  Copyright © 2020 Surya Krishnan. All rights reserved.
//

import Foundation

class Student {
    
    var name, studentID, grade: String
    var instrument: Instrument?
    
    init(name: String, studentID: String, grade: String) {
        self.name = name
        self.studentID = studentID
        self.grade = grade
    }
    
    init(name: String, studentID: String, grade: String, instrument: Instrument) {
        self.name = name
        self.studentID = studentID
        self.grade = grade
        self.instrument = instrument
    }
    
    func setInst (instrument: Instrument?) {
        self.instrument = instrument;
    }
    
}
