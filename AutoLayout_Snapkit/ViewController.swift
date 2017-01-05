//
//  ViewController.swift
//  AutoLayout_Snapkit
//
//  Created by Pratama Nur Wiaya on 1/5/17.
//  Copyright © 2017 PratamaLabs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // setup background
        self.view.backgroundColor = UIColor(red:0.38, green:0.75, blue:0.88, alpha:1.0)
        
        // setup navbar
        self.setupNavbar()
        self.setupDashboard()
        
        
        
        self.updateViewConstraints()
    }
    
  
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // setup view for navigation bar
    func setupNavbar(){
        let superview = self.view
        
        let navbar = UIView()
        superview?.addSubview(navbar)
        navbar.backgroundColor = UIColor(red:0.38, green:0.85, blue:0.88, alpha:1)
        
        navbar.snp.makeConstraints {
            (make) -> Void in
            make.height.equalTo(64)
            make.width.equalTo(superview!)
        }
        
        //set title
        let title = UILabel()
        navbar.addSubview(title)
        title.text = "Judul Apps"
        title.textColor = UIColor.black
        title.sizeToFit()
        title.snp.makeConstraints { (make) -> Void in
            make.center.equalTo(navbar)
        }
    }
    
    
    // setup view for home dashboard
    func setupDashboard() {
        let superview = self.view
        let dashboard = UIView()
        let header = UIView()
        let headerTitle = UILabel()
        let viewKiri = UIView()
        let viewKanan = UIView()
        
        superview?.addSubview(dashboard)
        dashboard.addSubview(header)
        header.addSubview(headerTitle)
        dashboard.addSubview(viewKiri)
        dashboard.addSubview(viewKanan)
        
        dashboard.backgroundColor = UIColor(red:0.38, green:0.85, blue:0.88, alpha:1)
        viewKiri.backgroundColor = UIColor(red:0.42, green:0.85, blue:0.88, alpha:1)
        viewKanan.backgroundColor  = UIColor(red:0.52, green:0.85, blue:0.88, alpha:1)
        header.backgroundColor = UIColor.white
        headerTitle.textColor = UIColor.black
        headerTitle.text = "Header Title"
        
        // set contsraint
        dashboard.snp.makeConstraints{ (make) -> Void in
            make.width.equalTo(superview!).multipliedBy(0.9)
            make.height.equalTo(256)
            make.top.equalTo(superview!).offset(84)
            make.centerX.equalTo(superview!)
        }
        
        header.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(dashboard)
            make.width.equalTo(dashboard)
            make.height.equalTo(dashboard).dividedBy(2)
            make.centerX.equalTo(dashboard)
        }
        
        headerTitle.snp.makeConstraints { (make) -> Void in
            make.center.equalTo(header)
        }
        
        
    }


}

