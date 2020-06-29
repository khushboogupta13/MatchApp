//
//  CardModel.swift
//  MatchApp
//
//  Created by Khushboo Gupta on 28/06/20.
//  Copyright © 2020 Khushboo Gupta. All rights reserved.
//

import Foundation

class CardModel{
    func getCards() -> [Card] {
        
        var generatedNumbers = [Int]()
        
        var generatedCards = [Card]()
        
        while generatedNumbers.count < 8{
            let randomNumber = Int.random(in: 1...13)
            
            if generatedNumbers.contains(randomNumber) == false{
                
                let cardOne = Card()
                let cardTwo = Card()
                
                cardOne.imageName = "card\(randomNumber)"
                cardTwo.imageName = "card\(randomNumber)"
                generatedNumbers.append(randomNumber)
                generatedCards += [cardOne,cardTwo]
                print(randomNumber)
                
            }
        }
        generatedCards.shuffle()
        
        return generatedCards
    }
    
}
