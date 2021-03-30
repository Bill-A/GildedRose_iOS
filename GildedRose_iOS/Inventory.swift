//
//  File.swift
//  GildedRose_iOS
//
//  Created by Bill Allen on 3/28/21.
//

final class Inventory{
    var sortedItems: [Item] { itemsCache }
    
    private var itemsCache: [Item] =
    [
        .init(id: 1, name: "+5 Dexterity Vest", sellIn: 10, quality: 20),
        .init(id: 2, name: "Aged Brie", sellIn: 2, quality: 0),
        .init(id: 3, name: "Elixir of the Mongoose", sellIn: 5, quality: 7),
        .init(id: 4, name: "Sulfuras, Hand of Ragnaros", sellIn: 0, quality: 80),
        .init(id: 5, name: "Sulfuras, Hand of Ragnaros", sellIn: -1, quality: 80),
        .init(id: 6, name: "Backstage passes to a TAFKAL80ETC concert", sellIn: 15, quality: 20),
        .init(id: 7, name: "Backstage passes to a TAFKAL80ETC concert", sellIn: 10, quality: 49),
        .init(id: 8, name: "Backstage passes to a TAFKAL80ETC concert", sellIn: 5, quality: 49),
        .init(id: 9, name: "Conjured Mana Cake", sellIn: 3, quality: 6)
    ]
}
