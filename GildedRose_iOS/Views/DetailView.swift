//
//  DetailView.swift
//  GildedRose_iOS
//
//  Created by Bill Allen on 3/29/21.
//

import SwiftUI

struct DetailView: View {
    let item: Item
    
    var body: some View {
        VStack(alignment: .leading) {
            TitleAndAuthorStack(
                item: item,
                stringFont: .title,
                numberFont: .title2
            )
            Item.Image(name: item.name)
            Spacer()
        }
        .padding()
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(item: .init())
    }
}
