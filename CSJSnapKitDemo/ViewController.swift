//
//  ViewController.swift
//  CSJSnapKitDemo
//
//  Created by tom on 16/7/5.
//  Copyright © 2016年 caoshengjie. All rights reserved.
//

import UIKit

let SCREEN_WIDTH_CSJ = UIScreen.mainScreen().bounds.size.width
let SCREEN_HEIGHT_CSJ = UIScreen.mainScreen().bounds.size.height

class ViewController: UIViewController {
    
    var tableView : UITableView!
    var mutableArray : NSMutableArray!
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.whiteColor()
        self.navigationItem.title = "CSJSnapKitDemo"
        
        self.mutableArray = ["1","2","3","4","5"]
        
        
        //init TableView
        self.tableView=UITableView(frame:CGRectMake(0, 0, SCREEN_WIDTH_CSJ, SCREEN_HEIGHT_CSJ-60),style:.Plain)
        self.tableView.dataSource = self
        self.tableView.delegate = self
        self.tableView.backgroundColor = UIColor.clearColor()
        self.tableView.separatorStyle = .None
        self.view.addSubview(self.tableView)
        
        self.tableView.tableFooterView = UIView(frame: CGRectZero)
    }
    

}

extension ViewController : UITableViewDataSource {
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.mutableArray.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell:UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "MyTestCell")
        //        let cell = tableView.dequeueReusableCellWithIdentifier("testCell", forIndexPath: indexPath)
        cell.textLabel?.text = self.mutableArray[indexPath.row] as? String
        return cell
    }
    
}

extension ViewController : UITableViewDelegate {
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 90
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        print("点击行数 = \(indexPath.row)")
        
        let vc : SecondViewController = self.storyboard?.instantiateViewControllerWithIdentifier("SecondViewController") as! SecondViewController
        vc.panduanString = "\(indexPath.row+1)"
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
}
