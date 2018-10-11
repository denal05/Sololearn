//
//  Item.swift
//  Sololearn Swift 4 Fundamentals App
//
//  Created by Denis Aleksandrov on 10/11/18.
//

import Foundation

class Item: NSObject, NSCoding {
    var name: String
    
    static let Dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
    static let ArchiveURL = Dir.appendingPathComponent("items")
    
    func encode(with aCoder: NSCoder) {
        aCoder.encode(name, forKey: "name")
    }
    
    required convenience init?(coder aDecoder: NSCoder) {
        let name = aDecoder.decodeObject(forKey: "name") as! String
        self.init(name: name)
    }
    
    init?(name: String) {
        self.name = name
        super.init()
    }
}
