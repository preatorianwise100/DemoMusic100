//
//  ItemMusicProvider.swift
//  DeMusic
//
//  Created by Jose David Bustos H on 11/7/19.
//  Copyright © 2019 Jose David Bustos H. All rights reserved.
//

import Foundation

class ItemMusicProvider{
    
    typealias completionBlock = ([ItemMusic]) -> ()
    
    func getDataFromApi(withUrl strUrl : String, completionBlock : @escaping completionBlock){
        
        if let unwrappedUrl = URL(string: strUrl){
            
            URLSession.shared.dataTask(with: unwrappedUrl, completionHandler: { (data, response, error) in
                
                print(data)
                
                if data != nil{
                    let jsonDecoder = JSONDecoder()
                    let itemsArray = try? jsonDecoder.decode([ItemMusic].self, from: data!)
                    
                    if itemsArray != nil{
                        completionBlock(itemsArray!)
                        
                    }else{
                        let aArray = [ItemMusic]()
                        completionBlock(aArray)
                    }
                }else{
                    let aArray = [ItemMusic]()
                    completionBlock(aArray)
                }
                
            }).resume()
        }
    }
    
}

