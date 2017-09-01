//
//  ViewController.swift
//  PageTheScroll
//
//  Created by Cruz Solano on 8/28/17.
//  Copyright © 2017 Cruz Solano. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var ScrollView: UIScrollView!
    var images = [UIImageView]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var contentWidth: CGFloat = 0.0
        
        for x in 0..<3 {
            let image = UIImage(named: "icon\(x).png")
            let imageView = UIImageView(image: image)
            images.append(imageView)
            
            var newX: CGFloat = 0.0
            
            newX = view.frame.midX + view.frame.size.width * CGFloat(x)
            
            contentWidth += newX
            
            ScrollView.addSubview(imageView)
            imageView.frame = CGRect(x: newX - 100, y: (view.frame.size.height / 2) - 100, width: 200, height: 200)
            
        }
        
        ScrollView.contentSize = CGSize(width: contentWidth, height: view.frame.size.height)
        
    }
    
    

}

