//
//  ArrayExtensions.swift
//  MenuTest
//
//  Created by Stefano Frosoni on 27/02/2017.
//  Copyright © 2017 Stefano Frosoni. All rights reserved.
//

import Foundation

extension Array where Element:Equatable {

    mutating func removeDuplicates() -> Void {
        var result = [Element]()
        for (key, value) in self.enumerated() {
            if result.contains(value) {
                self.remove(at: key)
            } else {
                result.append(value)
            }
        }
    }
}
