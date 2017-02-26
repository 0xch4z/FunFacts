//
//  ViewController.swift
//  FunFacts
//
//  Created by Charles Kenney on 2/25/17.
//  Copyright © 2017 OBCode. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var funFactLabel: UILabel!
    @IBOutlet weak var showFunFactButton: UIButton!
    
    var factProvider = FactProvider()
    var colorProvider = ColorProvider()

    override func viewDidLoad() {
        super.viewDidLoad()
        funFactLabel.text = factProvider.getFact()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func showFunFact() {
        funFactLabel.text = factProvider.getNextFact()
        let randomColor = colorProvider.randomColor()
        view.backgroundColor = randomColor
        showFunFactButton.tintColor = randomColor
        
    }

}

