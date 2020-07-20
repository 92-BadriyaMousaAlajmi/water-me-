//
//  birthday.swift
//  اسقني
//
//  Created by بدرية موسى العجمي on 7/17/20.
//  Copyright © 2020 Moon. All rights reserved.
//

import Foundation
import AVKit

struct birthday {
    var information : String
    var name : String
    
    init(name : String, information : String){
        self.name = name
        self.information = information
    
}
    func birthdayFlower(Month:String){
var birthFlower = [
     ["carnations": "January"],
     ["Violets": "February"],
     ["narcissus": "March"],
     ["daisy": "April"],
     ["Lily of the Valley": "May"],
     ["the rose": "June"],
     ["delphiniums": "July"],
     ["the gladiolus": "August"],
     ["aster":"September"],["marigold": "October"],
     ["chrysanthemums": "November"],
     ["holly": "December"]]
      
    }

var birthFlowerInfo = [
    birthday(name: "carnations", information: "Loved for its ruffled petals, wide array of colours and long vase life, the carnation is the birth flower for January. It’s an incredibly fitting choice too, as carnations are one of the few flowers that can thrive in cold weather.Despite being seen, somewhat undeservedly, as a filler flower in modern times, the carnation had grandiose beginnings. Indeed its scientific name, Dianthus, means ‘flower of the gods’ in Greek and its common name is believed to be derived from the word ‘coronation’.With a history dating back thousands of years, January’s birth flower is steeped in religious symbolism too. In Christianity it is believed that the first carnation bloomed when Mary’s tears hit the earth as she wept for her son Jesus. It’s no surprise then that today the flower has become a universal symbol of motherly love, making it a popular choice for both Mother’s Day and International Women’s Day.The meaning of carnations varies from colour to colour, but is generally accepted as ‘devotion’. Because of this it is said those born in January make loyal and dependable friends."),
    birthday(name: "Violets", information: "With Valentine’s Day celebrated on the 14th, you could be forgiven for assuming that February’s birth flower is the rose. While it might seem like the obvious choice, the birth flower for February is in fact the violet. These vividly-coloured flowers have been around for centuries, with the ancient Greeks first cultivating them for use in herbal remedies and to sweeten wine. The flower has distinctive heart-shaped petals which is perhaps why they were once used in love potions.Violets are said to represent faithfulness, virtue and modesty, which explains where the expression ‘shrinking violet’ comes from. Because of this, those born in February are said to possess the qualities of humility and honesty.")

]
}
