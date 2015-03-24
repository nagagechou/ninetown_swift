// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let fileURL = NSBundle.mainBundle().URLForResource("jmenu", withExtension: "json")


func getJSON(fileName: String) -> NSData?
{
    if let fileURL = NSBundle.mainBundle().URLForResource(fileName, withExtension: "json") {
        if let data = NSData(contentsOfURL: fileURL) {
            return data
        }
    }
    return nil
}

func parseJSON(inputData: NSData) -> NSDictionary{
    var error: NSError?
    var boardsDictionary: NSDictionary = NSJSONSerialization.JSONObjectWithData(inputData, options: NSJSONReadingOptions.MutableContainers, error: &error) as NSDictionary
    
    return boardsDictionary
}