//
//  myList_TableViewController.swift
//  ninetown
//
//  Created by mis on 2015/3/16.
//  Copyright (c) 2015年 ITSVITA律耀科技. All rights reserved.
//

import UIKit
import Foundation


var arrMyMenus:Array<myMenuModel> = []




class myList_TableViewController: UITableViewController, UITableViewDataSource {
    //-----------------------------
    //Read JSON File in SWIFT
    //http://stackoverflow.com/questions/28354254/read-a-json-file-in-swift
    //-----------------------------

    func doLoadMenu(){
        
        //let jsonFileObj = getJSON("jmenu")
        //let jsonData = parseJSON(jsonFileObj!)
        //print(jsonData)
        
    }
    
    
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
    //------------------------------
    
    @IBOutlet weak var myTableView: UITableView!
    
    var tmpMenuId:String!
    var thisMenu:myMenuModel!
    
    //-----------------------------
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
        //set background image
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "bg")!)

        
        //Variable Define
        arrMyMenus = [
            myMenuModel(id: "info", title: "新化簡介", titleInfo: "新化簡介", titleImg: "",
                items:[
                    myMenuItemModel(id: "info-01", name: "大目降的由來", icon: "", url: "", enabled: "Y"),
                    myMenuItemModel(id: "info-02", name: "人文薈萃", icon: "", url: "", enabled: "Y"),
                    myMenuItemModel(id: "info-03", name: "在地風情", icon: "", url: "", enabled: "Y"),
                    myMenuItemModel(id: "info-04", name: "物產豐饒", icon: "", url: "", enabled: "Y")
                ]),
            myMenuModel(id: "info-1", title: "新化簡介", titleInfo: "新化簡介", titleImg: "",
                items:[myMenuItemModel(id: "a001", name: "item001", icon: "", url: "", enabled: "Y"),
                    myMenuItemModel(id: "a002", name: "item002", icon: "", url: "", enabled: "Y"),
                    myMenuItemModel(id: "a003", name: "item003", icon: "", url: "", enabled: "Y"),
                    myMenuItemModel(id: "a004", name: "item004", icon: "", url: "", enabled: "Y")
                ])
            
        ]
        
        //from previous page(segue), get MenuId
        for tmpMenu in arrMyMenus{
            if tmpMenu.id == tmpMenuId {
                thisMenu = tmpMenu
            }
        }
        
        //define title
        self.navigationItem.title = thisMenu.title
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        
        

        return thisMenu.items.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as UITableViewCell

        // Configure the cell...
        
        
        var thisMenuItem:myMenuItemModel
        
        if thisMenu != nil {
            thisMenuItem = thisMenu.items[indexPath.row]
            cell.textLabel.text = thisMenuItem.name

        }
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */
    
    
    // MARK: - Navigation
    /*
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
        
    }
    */

}
