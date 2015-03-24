//
//  ViewController.swift
//  ninetown
//
//  Created by mis on 2015/3/13.
//  Copyright (c) 2015年 ITSVITA律耀科技. All rights reserved.
//

import UIKit
//----------------------------------


//----------------------------------

class ViewController: UIViewController {
    
    @IBOutlet var bannerImge: UIImageView!
    
    var arrBanner:Array<String> = ["B-0-01","B-0-02","B-0-03","B-0-04","B-0-05"]
    var index = 0
    
    @IBAction func doNextBanner(sender: UIButton) {
        index++
        if( index+1 == arrBanner.count){
            index=0
        }
        bannerImge.image=UIImage(named:arrBanner[index])
    }
    @IBAction func doPreBanner(sender: UIButton) {
        index--
        if(index<0){
            index=arrBanner.count-1
        }
        bannerImge.image=UIImage(named:arrBanner[index])
        

    }
    
     override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
        
        let vc = segue.destinationViewController as myList_TableViewController
        
        switch segue.identifier!{
            case "sgInfo":
                vc.tmpMenuId = "info"
            default:
                vc.tmpMenuId = nil
        }
        
    }

    
   
    //----------------------------------------------
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        bannerImge.image=UIImage(named:arrBanner[index])
        //set background image
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "bg")!)
        
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}

