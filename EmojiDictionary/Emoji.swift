//
//  Emoji.swift
//  EmojiDictionary
//
//  Created by MXC Swift  on 10/25/20.
//

import Foundation


struct Emoji: Codable  {
    var symbol: String
    var name: String
    var description: String
    var usage: String
    

    init(symbol: String, name: String, description: String,
    usage: String) {
        self.symbol = symbol
        self.name = name
        self.description = description
        self.usage = usage
    }
   
    
    

    
    
    
    
    
    
}
