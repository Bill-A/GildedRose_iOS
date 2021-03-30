//
//  Item.swift
//  GildedRose_iOS
//
//  Created by Bill Allen on 3/28/21.
//

struct Item {
    let id: Int
    let name: String
    let sellIn: Int
    let quality: Int
    
    init(id: Int = 1, name: String = "Product", sellIn: Int = 7, quality: Int = 22){
        self.id = id
        self.name = name
        self.sellIn = sellIn
        self.quality = quality
    }
}
