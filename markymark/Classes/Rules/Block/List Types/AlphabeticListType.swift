//
//  Created by Jim van Zummeren on 23/05/16.
//  Copyright © 2016 M2mobi. All rights reserved.
//

import Foundation

open class AlphabeticListType: ListType {

    var pattern:String {
        return "[a-zA-Z]\\."
    }

    var relatedListMarkDownType: ListMarkDownItem.Type {
        return AlphabeticallyOrderedMarkDownItem.self
    }

    open func getIndex(_ stringIndex: String) -> Int? {
        let alphabeticIndexCharacters = "abcdefghijklmnopqrstuvwxyz"

        var stringIndex = stringIndex
        stringIndex = stringIndex.replacingOccurrences(of: ".", with: "")

        if let index = alphabeticIndexCharacters.range(of: stringIndex.lowercased())?.lowerBound {
            return alphabeticIndexCharacters.characters.distance(from: alphabeticIndexCharacters.startIndex, to: index)
        }

        return nil
    }
}
