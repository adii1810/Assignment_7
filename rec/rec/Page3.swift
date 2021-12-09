//
//  Page3.swift
//  rec
//
//  Created by DCS on 09/12/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class Page3: UIViewController {

    var name : String?
    var content : String?
    
    init(Title : String, Details : String){
       super.init(nibName: nil, bundle: nil)
        name = Title
        content = Details
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private let images:UIImageView = {
        let img = UIImageView()
        img.contentMode = .scaleAspectFill
        img.clipsToBounds = true
        img.layer.cornerRadius = 20
        return img
    }()
    
    private let recipe_item:UILabel = {
        let lbl = UILabel()
        lbl.textColor = .black
        lbl.font = .boldSystemFont(ofSize: 35)
        return lbl
    }()
    
    private let recipe_Content:UILabel = {
        let lbl = UILabel()
        lbl.textColor = .black
        lbl.font = .boldSystemFont(ofSize: 10)
        lbl.numberOfLines = 5
        return lbl
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        view.addSubview(images)
        view.addSubview(recipe_item)
        view.addSubview(recipe_Content)
        self.images.image = UIImage(named: name!)
        self.recipe_item.text = name
        self.recipe_Content.text = content
        
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        images.frame = CGRect(x: 20, y: 20, width: 90, height: 90)
        recipe_item.frame = CGRect(x: 120, y: 20, width: 150, height: 40)
        recipe_Content.frame = CGRect(x: 120, y: 60, width: 200, height: 40)
    }
    
    func setupCell(title name:String , detail content:String){
    
        images.image = UIImage(named: name)
        recipe_item.text = "\(name)"
        recipe_Content.text = content
        
    
    }


}
