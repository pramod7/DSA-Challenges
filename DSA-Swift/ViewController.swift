//
//  ViewController.swift
//  DSA-Swift
//
//  Created by pramod yadav on 18/05/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //Maths Part
        CountPrimes.init().excecute()
        ReverseInteger.init().excecute()
        Sum.init().excecute()
        SumWithOutArithmaticOperator.init().excecute()
        AddDigit.init().excecute()
        SmallestEvenNumber.init().excecute()
        CommonFactor.init().excecute()
        PivotIndex.init().excecute()
        StringMultyply.init().excecute()
    }
}