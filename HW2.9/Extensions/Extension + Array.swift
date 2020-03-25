//
//  Extension + Array.swift
//  HW2.9
//
//  Created by lastbyte on 25.03.2020.
//  Copyright © 2020 lastbyte. All rights reserved.
//

// MARK: - Extension Array
extension Array where Element: Hashable {
    
    func nextElement(from item: Element) -> Element? {
        if let index = self.firstIndex(of: item), index + 1 <= self.count {
            return index + 1 == self.count ? self[0] : self[index + 1]
        }
        return nil
    }
    
}
