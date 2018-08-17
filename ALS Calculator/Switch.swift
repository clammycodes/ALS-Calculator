//
//  Switch.swift
//  ALS Calculator
//
//  Created by Cassandra Lam on 2018-08-09.
//  Copyright © 2018 Cassandra Lam. All rights reserved.
//


//This file will hold all global functions and variables that I want to use in mutliple view controller classes.

import Foundation
import UIKit

enum typeOfSwitch : Int{
    //Certain switch type corresponds to certain integer which we use to index symptomArrray so we can store the bool state of each switch
    case Bulb, Cerv, Thor, Lumb, Gene, Ros
}

//Store current switch bool states in an array designated for the umn view controller only:
var umnSwitchStates = [Bool](repeating: false, count: 6) //6 switches total on UMN view controller
var lmnSwitchStates = [Bool](repeating: false, count: 4)
var fibSwitchStates = [Bool](repeating: false, count: 4)
var fasSwitchStates = [Bool](repeating: false, count: 4)
var neuroSwitchStates = [Bool](repeating: false, count: 4)


func storeSwitch (switchOutlet: UISwitch, symptomArray: inout [Bool], symptomLocation: typeOfSwitch){
    //Global function that checks switch state and stores that value in desired array that holds all switch values for that view controller

    if switchOutlet.isOn == true {
        symptomArray[symptomLocation.rawValue] = true   //depending on switch, bool value is placed at corresponding array index
        //print(symptomArray) //delete later
    }
    else{
        symptomArray[symptomLocation.rawValue] = false
        //print(symptomArray) //delete later
    }

}


func numberOfRegions(symptomArray: inout [Bool], indexNumber: Int) -> Int{
    //Counts how many 'true' values are in a symptomArray.
    //locationNumber == how deep into the array you want to look into (ie look into the array until the element at 'indexNumber' index)
    
    var regionCount = 0
    for i in 0..<indexNumber {
        if(symptomArray[i] == true){
            regionCount = regionCount + 1
        }
    }
    //print(regionCount) //delete later
    return regionCount
}





