//
//  Instrument.swift
//  InstrumentChecker
//
//  Created by Surya Krishnan on 2020-01-02.
//  Copyright © 2020 Surya Krishnan. All rights reserved.
//

import Foundation

class Instrument {
    
    private var serial, instrumentType, instrumentNum, model, make: String
    private var dateOut, timeOut: String?
    
    init(serial: String, instrumentType: String, instrumentNum: String, model: String, make: String) {
        self.serial = serial
        self.instrumentType = instrumentType
        self.instrumentNum = instrumentNum
        self.model = model
        self.make = make
    }
    
    init(serial: String, instrumentType: String, instrumentNum: String, model: String, make: String, dateOut: String, timeOut: String) {
        self.serial = serial
        self.instrumentType = instrumentType
        self.instrumentNum = instrumentNum
        self.model = model
        self.make = make
        self.dateOut = dateOut
        self.timeOut = timeOut
    }
    
    func setDateOut(dateOut: String) {
        self.dateOut = dateOut
    }
    
    func setTimeOut(timeOut: String) {
        self.timeOut = timeOut
    }
    
    func getSerial() -> String {
        return serial
    }
    
    func getInstumentType() -> String {
        return instrumentType
    }
    
    func getInstrumentNum() -> String {
        return instrumentNum
    }
    
    func getModel() -> String {
        return model
    }
    
    func getMake() -> String {
        return make
    }
    
    func getDateOut() -> String? {
        return dateOut
    }
    
    func getTimeOut() -> String? {
        return timeOut
    }
    
}
