//
//  MainScreen.swift
//  InstrumentChecker
//
//  Created by Surya Krishnan on 2019-12-25.
//  Copyright © 2019 Surya Krishnan. All rights reserved.
//

import UIKit

class MainScreen: UIViewController {

    
    @IBOutlet weak var welcomeText: UILabel!
    @IBOutlet weak var buttonStack: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        welcomeText.text = "Welcome, " + AppData().userData!.name
        
        welcomeText.sizeToFit()
        buttonStack.sizeToFit()
        
        view.setGradientBackground(colourOne: Colours.newOrange, colourTwo: Colours.newPurple)
        
    }
    

}
