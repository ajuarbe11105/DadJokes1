//
//  JokeModel.swift
//  DadJokes
//
//  Created by Alberto Juarbe on 12/19/21.
//

import Foundation

// MARK: - Joke Model
struct JokeModel: Identifiable, Codable {
    let id: Int?
    let type: String
    let setup: String
    let punchline: String
}

