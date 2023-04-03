//
//  To-do list information.swift
//  Multiscreen swift project
//
//  Created by Daniel Wai on 4/3/23.
//

import SwiftUI

struct MovieSection: Codable, Identifiable {
    var id: UUID
    var Name: String
    var items: [MovieItem]
}

struct MovieItem: Codable, Hashable, Identifiable {
    var id: UUID
    var Name: String
    var director: String
    var date: String
    var description: String
    
    var mainImage: String {
        Name.replacingOccurrences(of: " ", with: "-").lowercased()
    }
    
    var thumbnailImage: String {
        "\(mainImage)-thumb"
    }
    
    
    static let example = MovieItem(id: UUID(), Name: "Her", director: "Spike Jonze", date: "2013", description: "A sensitive and soulful man earns a living by writing personal letters for other people. Left heartbroken after his marriage ends, Theodore (Joaquin Phoenix) becomes fascinated with a new operating system which reportedly develops into an intuitive and unique entity in its own right. He starts the program and meets Samantha (Scarlett Johansson), whose bright voice reveals a sensitive, playful personality. Though friends initially, the relationship soon deepens into love.")
}


