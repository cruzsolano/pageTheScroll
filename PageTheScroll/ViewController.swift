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

        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let scrollWidth = ScrollView.frame.size.width
        var contentWidth: CGFloat = 0.0
        
        print("ScrollView width: \(ScrollView.frame.size.width)")
        
        for x in 0..<3 {
            let image = UIImage(named: "icon\(x).png")
            let imageView = UIImageView(image: image)
            images.append(imageView)
            
            var newX: CGFloat = 0.0
            
            newX = scrollWidth / 2 + scrollWidth * CGFloat(x)
            
            contentWidth += newX
            
            ScrollView.addSubview(imageView)
            imageView.frame = CGRect(x: newX - 100, y: (ScrollView.frame.size.height / 2) - 100, width: 200, height: 200)
            
        }
        
//        ScrollView.backgroundColor = UIColor.purple
        ScrollView.clipsToBounds = false
        ScrollView.contentSize = CGSize(width: contentWidth, height: view.frame.size.height)
    }
    

}

