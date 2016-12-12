//
//  ViewController.swift
//  MusicVideo
//
//  Created by nasim ahmed on 11/18/16.
//  Copyright © 2016 nasim ahmed. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        //Call api
        
        
        let api = APIManager()
        api.loadData(urlString: "https://itunes.apple.com/us/rss/topmusicvideos/limit=10/explicit=true/json", completion: didLoadData)
 
    }
    
    
    func didLoadData(result:String){
        
        let alert = UIAlertController(title: (result), message: nil, preferredStyle: .alert)
        
        let ok = UIAlertAction(title: "ok", style: .default, handler: nil)
        
        alert.addAction(ok)
        
        self.present(alert, animated: true, completion: nil)
    
    }
   


}

