//
//  ViewController.swift
//  rec
//
//  Created by DCS on 09/12/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private let backImages:UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "r")
        return img
    }()
    
    private let txtlbl:UILabel = {
        let lbl = UILabel()
        lbl.font = UIFont(name: "GillSans-Italic", size: 100)
        lbl.text = "Recipe"
        lbl.textColor = .black
        return lbl
    }()
    
    private let txtuser:UITextField = {
        let txt = UITextField()
        txt.textAlignment = .center
        txt.font = UIFont(name: "Thonburi", size: 40)
        txt.placeholder = "Username"
        txt.textColor = .black
        txt.backgroundColor = .white
        return txt
    }()
    
    private let txtpass:UITextField = {
        let txt = UITextField()
        txt.textAlignment = .center
        txt.font = UIFont(name: "Thonburi", size: 40)
        txt.placeholder = "Password"
        
        txt.textColor = .black
        txt.backgroundColor = .white
        return txt
    }()
    
    private let subBtn:UIButton = {
        let btn = UIButton()
        btn.setTitle("Login", for: .normal)
        btn.addTarget(self, action: #selector(nextpg), for: .touchUpInside)
        btn.backgroundColor = .green
        
        return btn
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UIGraphicsBeginImageContext(self.view.frame.size)
        UIImage(named: "bg")?.draw(in: self.view.bounds)
        let image: UIImage = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()
        self.view.backgroundColor = UIColor(patternImage: image)
        
        view.addSubview(txtlbl)
        view.addSubview(txtuser)
        view.addSubview(txtpass)
        view.addSubview(subBtn)
    }
    
    @objc func nextpg(){
            let vc = tableview()
            self.navigationController?.pushViewController(vc, animated: true)
            self.present(vc,animated: true,completion: nil)
    }
    
        override func viewDidLayoutSubviews() {
            super.viewDidLayoutSubviews()
            
            //backImages.frame = CGRect(x:70, y: 100, width: 300, height: 170)
            txtlbl.frame = CGRect(x:70, y: 100, width: 300, height: 170)
            txtuser.frame = CGRect(x:20, y: 300, width: view.frame.width - 40, height: 80)
            txtpass.frame = CGRect(x:20, y: 400, width: view.frame.width - 40, height: 80)
            subBtn.frame = CGRect(x: 20, y: 550, width: view.frame.width - 40, height: 80)
        }

}

