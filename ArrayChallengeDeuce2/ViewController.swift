//
//  ViewController.swift
//  ArrayChallengeDeuce2
//
//  Created by James Campagno on 7/7/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // This represents our deliLine.
    var deliLine: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    
    
    
    // Create your methods here
    
    //    should add the name passed into this function to the deliLine property on the ViewController
    //    If the persons name is Billy Crystal || Meg Ryan, they should be positioned at the front of the line
    //Everyone else should be added to the back of the line and wait their turn
    // Every other situation: "Welcome x, you're number y in line"
    
    func addNameToDeliLine(name: String) -> String {
        
        var greetCustomers: String
        
        //for(index, customerName) in deliLine.enumerate() {
        
        switch name {
        case "Billy Crystal":
            deliLine.insert(name, atIndex: 0)
            greetCustomers = "Welcome Billy! You can sit wherever you like."
            
        case "Meg Ryan":
            deliLine.insert(name, atIndex: 0)
            greetCustomers = "Welcome Meg! You can sit wherever you like."
            
        default:
            deliLine.append(name)
            if deliLine.count == 1 {
                greetCustomers = "Welcome \(name), you're first in line!"
            }else {
                greetCustomers = "Welcome \(name), you're number \(deliLine.count) in line."
            }
        }
        return greetCustomers
    }
    
    
    func nowServing() -> String {
        if deliLine.isEmpty {
            return "There is no-one to be served."
        }else {
            let customer = deliLine.removeAtIndex(0)
            return "Now serving \(customer)!"
        }
        
    }
    
    
    func deliLineDescription() -> String {
        //    If the line is empty: "The line is currently empty."
        //    Otherwise, return a String beginning with the "The line is:", and appending every customer in the line on a new line \n beginning with their number in the line. For example, if our line was represented as:
        
        var fullLine: String = ""
        
        if deliLine.isEmpty {
            fullLine = "The line is currently empty."
        } else {
            
            for (index, customerInLine) in deliLine.enumerate() {
                fullLine = "The line is: \n\(index + 1). \(customerInLine)"
                
            }
        }
        print(fullLine)
        return fullLine
    }
}
