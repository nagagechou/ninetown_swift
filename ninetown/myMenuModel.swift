//
//  myMenuModel.swift
//  ninetown
//
//  Created by mis on 2015/3/18.
//  Copyright (c) 2015年 ITSVITA律耀科技. All rights reserved.
//

import UIKit

// --------------------------------------------
// Menu's item

class myMenuItemModel:NSObject{
    var id:String
    var name:String
    var icon:String
    var url:String
    var enabled:String
    
    init(id:String, name:String, icon:String, url:String, enabled:String){
        self.id = id
        self.name=name
        self.icon=icon
        self.url=url
        self.enabled=enabled
    }
}
// --------------------------------------------
// Menu root

class myMenuModel: NSObject {
    var id:String
    var title:String
    var titleInfo:String
    var titleImg:String
    var items:Array<myMenuItemModel>
    
    init(id:String, title:String,titleInfo:String,titleImg:String,items:Array<myMenuItemModel>){
        self.id = id
        self.title = title
        self.titleInfo = titleInfo
        self.titleImg = titleImg
        self.items=items
    }
}

