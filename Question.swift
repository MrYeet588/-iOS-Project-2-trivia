//
//  Question.swift
//  
//
//  Created by Student on 4/29/26.
//

import Foundation

struct Question: Codable {
    var type: String
    var difficulty: String
    var category: String
    var question: String
    var correct_answer: String
    var incorrect_answers: [String]
    
    enum answers {
        case answer1
        case answer2
        case answer3
        case answer4
    }
}
