//
//  myAbout_ViewController.swift
//  ninetown
//
//  Created by mis on 2015/3/17.
//  Copyright (c) 2015年 ITSVITA律耀科技. All rights reserved.
//

import UIKit

class myAbout_ViewController: UIViewController {

    @IBOutlet weak var vw_content: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //set background image
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "bg")!)
        
        //set webview content
        var filePath = NSBundle.mainBundle().pathForResource("pageTest", ofType: "htm")
        var file = NSData(contentsOfFile: filePath!)
        
        
        // let path = NSBundle.mainBundle().pathForResource("dados", ofType: "html", inDirectory: "root")
        //var requestURL = NSURL(string:path!);
        //var request = NSURLRequest(URL:requestURL);
        

        
        vw_content.loadData(file, MIMEType: "text/html", textEncodingName: nil, baseURL: nil)
       // vw_content.alpha=0.8
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
