//
//  ViewController.swift
//  Swift4MenterList
//
//  Created by tatsumi kentaro on 2018/02/03.
//  Copyright © 2018年 tatsumi kentaro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var course: UILabel!
    
    @IBOutlet var menter_name: UILabel!
    
    @IBOutlet weak var image_View: UIImageView!
    
    var num:Int = 0
    
    var menter_Array = [Menter]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        menter_Array.append(Menter(name: "長田区",course: "iphone", image_name: "nagata.jpg"))
        menter_Array.append(Menter(name: "りょう",course: "Unity", image_name: "ryo.jpg"))
        menter_Array.append(Menter(name: "タイティー",course: "WebS/WebD", image_name: "taithi.JPG"))
        
        setUI()
        
        
        
        
    }
    
    func setUI() -> Void {
        menter_name.text = menter_Array[num].name
        course.text = menter_Array[num].course
        image_View.image = menter_Array[num].getImage()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func next(){
        if num<menter_Array.count-1{
            num += 1
            setUI()
            
        }else{
            print("無理だよ")
        }
       
        
    }
    
    @IBAction func back(){
        
        if num>=1{
            num -= 1
            setUI()
        }else{
            print("無理だよ")
        }

    }


}

