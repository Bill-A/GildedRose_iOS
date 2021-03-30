//
//  ContentView.swift
//  GildedRose_iOS
//
//  Created by Bill Allen on 3/28/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            List(Inventory().sortedItems, id: \.id) { item in
                ItemRow(item: item)
            }
            .navigationBarTitle("Gilded Rose Inventory")
        }
    }
}



struct ItemRow: View {
    let item: Item
    
    var body: some View {
        NavigationLink(
            destination: DetailView(item: item)
        ){
            HStack {
                Item.Image(name: item.name, size: 75)
                TitleAndAuthorStack(
                    item: item,
                    stringFont: .title2,
                    numberFont: .title3
                )
                .lineLimit(1)
            }
        }
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}




