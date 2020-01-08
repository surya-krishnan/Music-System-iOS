//
//  Constants.swift
//  InstrumentChecker
//
//  Created by Surya Krishnan on 2019-12-25.
//  Copyright © 2019 Surya Krishnan. All rights reserved.
//

import Foundation
import UIKit

struct Colours {
    
    static let newOrange = UIColor(red: 230.0/255.0, green: 146.0/255.0, blue: 11.0/255.0, alpha: 1.0)
    static let newPurple = UIColor(red: 158.0/255.0, green: 29.0/255.0, blue: 222.0/255.0, alpha: 1.0)
    
}

struct AppData {
    
    public var userData: Student?
    public var instruments = [Instrument]()
    public var students = [Student]()
    
    init() {
        
        let ioHelper = FileIO()
        
        /*
         Initializes instrument data by reading from file
         **/
        let instDataRead = ioHelper.getData(file: "InstrumentData").components(separatedBy: .newlines)
        
        for item in instDataRead {
            
            if item == "" {
                break;
            }
            
            let store = item.split(separator: ",")
            
            if store[5] == " " && store[6] == " " {
                instruments.append(Instrument(serial: String(store[0]), instrumentType: String(store[1]), instrumentNum: String(store[2]), model: String(store[3]), make: String(store[4])))
            } else {
                instruments.append(Instrument(serial: String(store[0]), instrumentType: String(store[1]), instrumentNum: String(store[2]), model: String(store[3]), make: String(store[4]), dateOut: String(store[5]), timeOut: String(store[6])))
                
            }
            
        }
        
        
        /*
         Initializes student data
         **/
        let studDataRead = ioHelper.getData(file: "StudentData").components(separatedBy: .newlines)
        
        for item in studDataRead {
            
            if item == "" {
                break;
            }
            
            let store = item.split(separator: ",")
            
            if store[3] == "/" {
                students.append(Student(name: String(store[0]), studentID: String(store[1]), grade: String(store[2])))
            } else {
                let inst = findInst(instrumentID: String(store[3]), instArr: instruments)
                
                if inst == nil {
                    print("error")
                } else {
                    students.append(Student(name: String(store[0]), studentID: String(store[1]), grade: String(store[2]), instrument: inst!))
                }
            }
        }
        
        
        /*
         Initializes user data by reading from file
         **/
        let userDataRead = ioHelper.getData(file: "UserData")
        userData = findStudent(studentID: userDataRead, studArr: students)
        
        
    }
    
    func findInst(instrumentID: String, instArr: [Instrument]) -> Instrument? {
        for item in instArr {
            if item.getSerial() == instrumentID {
                return item
            }
        }
        return nil
    }
    
    func findStudent(studentID: String, studArr: [Student]) -> Student? {
        for item in studArr {
            if item.studentID == studentID {
                return item
            }
        }
        return nil
    }
    
    
}
