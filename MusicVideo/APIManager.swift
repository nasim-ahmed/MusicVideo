//
//  APIManager.swift
//  MusicVideo
//
//  Created by nasim ahmed on 11/18/16.
//  Copyright © 2016 nasim ahmed. All rights reserved.
//

import Foundation


class APIManager{


    func loadData(urlString:String, completion:@escaping (_ result:String) -> Void){
        
    
        let config  = URLSessionConfiguration.default  //SESSION CONFIGURATION
        let session = URLSession(configuration: config)  //LOAD CONFIGURATION INTO SESSION
        let url = URL(string: urlString)!
        
        let task = session.dataTask(with: url, completionHandler: {
        (data, response, error) -> Void in
            
            DispatchQueue.main.async {
                if error != nil{
                
                    completion((error!.localizedDescription))
                    
                }else{

                    completion("NSURLSession Successful")
                    print(data!)
                    
  
                }
            }
        
        })
        
        task.resume()
        
    }
    
}










