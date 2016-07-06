//
//  SecondViewController.swift
//  CSJSnapKitDemo
//
//  Created by tom on 16/7/5.
//  Copyright © 2016年 caoshengjie. All rights reserved.
//

import UIKit
import SnapKit

class SecondViewController: UIViewController {
    
    let oneView: UIView = {
        let view = UIView()
        view.backgroundColor = .redColor()
        return view
    }()
    let twoView: UIView = {
        let view = UIView()
        view.backgroundColor = .greenColor()
        return view
    }()
    let threeView: UIView = {
        let view = UIView()
        view.backgroundColor = .blueColor()
        return view
    }()
    let fourView: UIView = {
        let view = UIView()
        view.backgroundColor = .yellowColor()
        return view
    }()
    let fiveView: UIView = {
        let view = UIView()
        view.backgroundColor = .blackColor()
        return view
    }()
    
    
    //判断String
    var panduanString : String!
    /*********************************************/
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        edgesForExtendedLayout = .None
        view.backgroundColor = UIColor.whiteColor()
        navigationItem.title = "SnapKit"
        
        
        view.addSubview(self.oneView)
        view.addSubview(self.twoView)
        view.addSubview(self.threeView)
        view.addSubview(self.fourView)
        view.addSubview(self.fiveView)
        
        
        let padding : CGFloat = 15

        
        if self.panduanString == "1" {
            self.oneView.snp_makeConstraints { (make) in
//                make.center.equalTo(view)
//                make.size.equalTo(CGSizeMake(100.0, 100.0))
                make.top.left.equalTo(padding)
                make.right.bottom.equalTo(-padding)
            }
            
        }
        else if self.panduanString == "2"{
            //左右
            /*
            self.oneView.snp_makeConstraints(closure: { (make) in
                make.top.left.equalTo(padding)
                make.bottom.equalTo(self.view.snp_bottom).offset(-padding)
            })
            self.twoView.snp_makeConstraints(closure: { (make) in
                make.top.equalTo(padding)
                make.left.equalTo(self.oneView.snp_right).offset(padding)
                make.bottom.right.equalTo(-padding)
                
                make.width.equalTo(self.oneView.snp_width)
                make.height.equalTo(self.oneView.snp_height)
            })
            */
            
            //上下
            self.oneView.snp_makeConstraints(closure: { (make) in
                make.top.left.equalTo(padding)
                make.right.equalTo(padding)
                make.bottom.equalTo(self.twoView.snp_top).offset(-padding)
                
            })
            
            self.twoView.snp_makeConstraints(closure: { (make) in
//                make.top.equalTo(self.oneView.snp_top)
                make.left.equalTo(padding)
                make.bottom.right.equalTo(-padding)
                
                make.width.equalTo(self.oneView.snp_width)
                make.height.equalTo(self.oneView.snp_height)
            })
        }
        else if self.panduanString == "3" {
            //上下
            self.oneView.snp_makeConstraints(closure: { (make) in
                make.top.left.equalTo(padding)
                make.right.equalTo(-padding)
                make.bottom.equalTo(self.twoView.snp_top).offset(-padding)
            })
            self.twoView.snp_makeConstraints(closure: { (make) in
                make.left.equalTo(padding)
                make.right.equalTo(-padding)
                make.bottom.equalTo(self.threeView.snp_top).offset(-padding)
                
                make.width.equalTo(self.oneView.snp_width)
                make.height.equalTo(self.oneView.snp_height)
            })
            self.threeView.snp_makeConstraints(closure: { (make) in
                make.bottom.left.equalTo(padding)
                make.bottom.right.equalTo(-padding)
                
                make.width.equalTo(self.oneView.snp_width)
                make.height.equalTo(self.oneView.snp_height)
            })
        }
        else if self.panduanString == "4"{
            //上下
            self.oneView.snp_makeConstraints(closure: { (make) in
                make.top.left.equalTo(padding)
                make.right.equalTo(-padding)
                make.bottom.equalTo(self.twoView.snp_top).offset(-padding)
            })
            self.twoView.snp_makeConstraints(closure: { (make) in
                make.left.equalTo(padding)
                make.right.equalTo(-padding)
                make.bottom.equalTo(self.threeView.snp_top).offset(-padding)
                
                make.width.equalTo(self.oneView.snp_width)
                make.height.equalTo(self.oneView.snp_height)
            })
            self.threeView.snp_makeConstraints(closure: { (make) in
                make.left.equalTo(padding)
                make.right.equalTo(-padding)
                make.bottom.equalTo(self.fourView.snp_top).offset(-padding)
                
                make.width.equalTo(self.oneView.snp_width)
                make.height.equalTo(self.oneView.snp_height)
            })
            self.fourView.snp_makeConstraints(closure: { (make) in
                make.left.equalTo(padding)
                make.bottom.right.equalTo(-padding)
                
                make.width.equalTo(self.oneView.snp_width)
                make.height.equalTo(self.oneView.snp_height)
            })
        }else{
            //5
            self.oneView.snp_makeConstraints(closure: { (make) in
                make.center.equalTo(view)
                make.size.equalTo(CGSizeMake(100.0, 100.0))
            })
            self.twoView.snp_makeConstraints(closure: { (make) in
                make.top.equalTo(oneView.snp_bottom).offset(20.0)
                make.left.equalTo(20.0)
                make.size.equalTo(CGSizeMake(100.0, 100.0))
            })
            self.threeView.snp_makeConstraints(closure: { (make) in
                make.top.equalTo(oneView.snp_bottom).offset(20.0)
                make.left.equalTo(oneView.snp_right).offset(20.0)
                make.size.equalTo(CGSizeMake(100.0, 100.0))
            })
            self.fourView.snp_makeConstraints(closure: { (make) in
                make.bottom.equalTo(oneView.snp_top).offset(-20.0)
                make.left.equalTo(oneView.snp_right).offset(20.0)
                make.size.equalTo(CGSizeMake(100.0, 100.0))
            })
            self.fiveView.snp_makeConstraints(closure: { (make) in
                make.bottom.equalTo(oneView.snp_top).offset(-20.0)
                make.right.equalTo(oneView.snp_left).offset(-20.0)
                make.size.equalTo(CGSizeMake(100.0, 100.0))
            })
        }
        
    }
    
    
    override func updateViewConstraints() {
        super.updateViewConstraints()
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
