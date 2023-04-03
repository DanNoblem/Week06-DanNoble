//
//  MovieList.swift
//  Multiscreen swift project
//
//  Created by Daniel Wai on 4/3/23.
//

import SwiftUI

struct ItemRow: View {
    
    let item: MovieItem
    
    var body: some View {
        HStack{
            VStack(alignment: .leading, spacing: 10){
                Text(item.Name)
                Text(item.date)
            }
            Spacer()
            
        }
    }
}

struct MovieList_Previews: PreviewProvider {
    static var previews: some View {
        ItemRow(item: MovieItem.example)
    }
}
