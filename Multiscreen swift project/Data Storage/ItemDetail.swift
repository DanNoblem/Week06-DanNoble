//
//  ItemDetail.swift
//  Multiscreen swift project
//
//  Created by Daniel Wai on 4/3/23.
//

import SwiftUI

struct ItemDetail: View {
    
    let item: MovieItem
    
    var body: some View {
        VStack{
            Image(item.mainImage)
                .resizable()
                .scaledToFit()
        }
        
    }
}

struct ItemDetail_Previews: PreviewProvider {
    static var previews: some View {
        ItemDetail(item: MovieItem.example)
    }
}
