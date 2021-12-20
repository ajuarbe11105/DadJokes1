//
//  KnockKnockModel.swift
//  DadJokes
//
//  Created by Alberto Juarbe on 12/19/21.
//

import SwiftUI

// MARK: - WelcomeElement
struct KnockKnock: Identifiable, Codable {
    let punchline: String
    let type: String
    let id: Int
    let setup: String
}
