//
//  PunchlineView.swift
//  DadJokes
//
//  Created by Alberto Juarbe on 12/19/21.
//

import SwiftUI

struct PunchlineView: View {
    
    @StateObject var dadJoke = Jokes()

    var body: some View {
        
        ForEach(dadJoke.jokeInfo) { ha in
            VStack {
                
                RoundedRectangle(cornerRadius: 20)
                    .fill(.white)
                    .frame(width: 500, height: 500)
                    .shadow(color: .green, radius: 25)
                    .padding()
                    .overlay(
                        
                        Text(ha.punchline)
                            .font(.title3)
                            .foregroundColor(.blue)
                    
                    )
                
    }
}
    }
}

struct PunchlineView_Previews: PreviewProvider {
    static var previews: some View {
        PunchlineView()
    }
}
