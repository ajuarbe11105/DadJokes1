//
//  MainView.swift
//  DadJokes
//
//  Created by Alberto Juarbe on 12/19/21.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationView {
        ZStack {
        LinearGradient(colors: [.purple, .blue, .purple], startPoint: .topLeading, endPoint: .bottomTrailing)
            .ignoresSafeArea()
            
            VStack {
                Text("Pick your type of Joke")
                    .font(.largeTitle)
                Spacer()
                
//                Text("🤣😂")
//                    .font(.largeTitle)
                Image("rolling-on-the-floor-laughing_1f923")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
             
                Spacer()
                Spacer()
                    
                NavigationLink(destination: JokeView(), label: {
                    Capsule(style: .continuous)
                        .frame(width: 250, height: 50, alignment: .center)
                        .foregroundColor(.white)
                        .overlay(
                            Text("Random Jokes")
                                .foregroundColor(.blue)
                        )
                    
                })
                    .padding()
                
                NavigationLink(destination: KnockKnockView(), label: {
                    
                    Capsule(style: .continuous)
                        .frame(width: 250, height: 50, alignment: .center)
                        .foregroundColor(.white)
                        .overlay(
                            Text("Knock Knock Jokes")
                                .foregroundColor(.purple)
                        )
                })
                Spacer()
                
            }
            .navigationViewStyle(StackNavigationViewStyle())
        }
        }
    }
}


struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
