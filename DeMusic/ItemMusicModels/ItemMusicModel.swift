//
//  ItemMusicModel.swift
//  DeMusic
//
//  Created by Jose David Bustos H on 11/6/19.
//  Copyright © 2019 Jose David Bustos H. All rights reserved.
//

import Foundation

class ItemMusicModel{
    typealias completionBlock = ([ItemMusic]) -> ()
    var apiMusicProvider = ItemMusicProvider()
    var datasourceArray = [ItemMusic]()
    
    func getDataItemsFromAPI(url: String, completionBlock : @escaping completionBlock){
        
        apiMusicProvider.getDataFromApi(withUrl: url) { [weak self] (arrItems) in
            self?.datasourceArray = arrItems
            completionBlock(arrItems)
        }
    }
    
    func getNumberOfRowsInSection() -> Int{
        
        return datasourceArray.count
    }
    
    func getItemsAtIndex(index : Int) -> ItemMusic{
        
        let items = datasourceArray[index]
        return items
    }
    
    func getCellData(index : Int) -> String{
        
        
//        var wrapperType : String?
//        var kind : String?
//        var artistId : Int?
//        var collectionId : Int?
//        var trackId  : Int?
//        var artistName : String?
//        var collectionName : String?
//        var trackName : String?
//        var collectionCensoredName : String?
//        var trackCensoredName : String?
//        var artistViewUrl : String?
//        var collectionViewUrl : String?
//        var trackViewUrl : String?
//        var previewUrl : String?
//        var artworkUrl30 : String?
//        var artworkUrl60 : String?
//        var artworkUrl100 : String?
//        var collectionPrice : Double?
//        var trackPrice : Double?
//        var collectionHdPrice : Double?
//        var trackHdPrice : Double?
//        var releaseDate : String?
//        var collectionExplicitness : String?
//        var trackExplicitness : String?
//        var discCount : Int?
//        var discNumber : Int?
//        var trackCount : Int?
//        var trackNumber : Int?
//        var trackTimeMillis : Int?
//        var country : String?
//        var currency : String?
//        var primaryGenreName : String?
//        var contentAdvisoryRating : String?
//        var shortDescription : String?
//        var longDescription : String?
    
        
        
//        let itemMusic = self.getItemsAtIndex(index: index)
//
//        let wrapperType = itemMusic.wrapperType ?? ""
//        let kind = itemMusic.kind ?? ""
//        let artistId = itemMusic.artistId ?? 0
//        let collectionId = itemMusic.collectionId ?? 0
         let res = ""

        return res
    }
}

