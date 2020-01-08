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

        let filePath = Bundle.main.path(forResource: file, ofType: "txt")
        let URL = NSURL.fileURL(withPath: filePath!)

        //writing
        do {
            for item in writeData {
                try item.write(to: URL, atomically: false, encoding: .utf8)
            }
        }
        catch { print(error) }
    
    }

    func getData(file:String) -> String {
        
        let filePath = Bundle.main.path(forResource: file, ofType: "txt")
        let URL = NSURL.fileURL(withPath: filePath!)
        var data = ""

        //reading
        do {
            data = try String(contentsOf: URL, encoding: .utf8)
        }
        catch { print(error) }
        
        
        return data;
    }
}
