//
//  TriviaResponse.swift
//  
//
//  Created by Student on 4/30/26.
//

struct TriviaResponse: Codable {
    let results: [Question]
}

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
