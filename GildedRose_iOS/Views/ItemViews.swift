//
//  ListViews.swift
//  GildedRose_iOS
//
//  Created by Bill Allen on 3/28/21.
//

import SwiftUI



struct TitleAndAuthorStack: View {
    let item: Item
    let stringFont: Font
    let numberFont: Font
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(item.name)
                .font(stringFont)
            Text(String(item.sellIn) + " - days remaining")
                .font(numberFont)
                .foregroundColor(.secondary)
            Text(String(item.quality) + " - quality level")
                .font(numberFont)
                .foregroundColor(.secondary)
        }
    }
}


extension Item {
    struct Image: View {
        let name: String
        var size: CGFloat?
        
        var body: some View {
            let symbol = SwiftUI.Image(name: name)
            ?? .init(systemName: "sun.min")
                
            symbol
                .resizable()
                .scaledToFit()
                .frame(width: size, height: size)
                .font(Font.title.weight(.light))
                .foregroundColor(Color.red)
        }
    }
}


extension Image {
    init?(name: String) {
        guard
            let character = name.first,
            case let symbolName = "\(character.lowercased()).square",
            UIImage(systemName: symbolName) != nil
        else {
            return nil
        }
        
        self.init(systemName: symbolName)
    }
}



struct Item_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            TitleAndAuthorStack(
                item: .init(),
                stringFont: .title,
                numberFont: .title2
            )
            Item.Image(name: Item().name)
            Item.Image(name: "")
            Item.Image(name: "🏵")
        }
    }
}



