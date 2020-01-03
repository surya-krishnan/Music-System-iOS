//
//  FileIO.swift
//  InstrumentChecker
//
//  Created by Surya Krishnan on 2020-01-02.
//  Copyright © 2020 Surya Krishnan. All rights reserved.
//

import Foundation

class FileIO {
    func writeData(file: String, writeData: [String]) {

        if let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {

            let fileURL = dir.appendingPathComponent(file)

            //writing
            do {
                for item in writeData {
                    try item.write(to: fileURL, atomically: false, encoding: .utf8)
                }
            }
            catch { print(error) }
        }
    }

    func getData(file:String) -> String {
        
        var data = ""
        
        if let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {

            let fileURL = dir.appendingPathComponent(file)

            //reading
            do {
                data = try String(contentsOf: fileURL, encoding: .utf8)
            }
            catch { print(error) }
        }
        
        return data;
    }
}
