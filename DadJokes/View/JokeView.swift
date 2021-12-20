//
//  JokeView.swift
//  DadJokes
//
//  Created by Alberto Juarbe on 12/19/21.
//

import SwiftUI

struct JokeView: View {
    
    @StateObject var dadJoke = Jokes()
    
    var body: some View {
        
        NavigationView {
            
      
        ZStack {
//            Color.green
            LinearGradient(colors: [.blue, .purple], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
        
        ForEach(dadJoke.jokeInfo) { joke in
            VStack(alignment: .center) {
               Spacer()
                RoundedRectangle(cornerRadius: 20)
                    .fill(.white)
                    .frame(height: 300)
                    .shadow(color: .white, radius: 25)
                    .padding()
                    .overlay(
                        
                        VStack {
                            Spacer()
                            Text("Random Joke")
                                .underline()
                                .font(.largeTitle)
                            Spacer()
                            Spacer()
                            Text(joke.setup)
                                .font(.title3)
                                .foregroundColor(.black)
                                .padding()
                            Spacer()
                            Text(joke.punchline)
                                .font(.title3)
                                .foregroundColor(.black)
                                .padding()
                            
                            Spacer()
                            Spacer()
                        }.padding()
                        
                        
                        
                    )
                Spacer()
                HStack(alignment: .center) {
                   
                        Button(action: {
                            dadJoke.getJokes()
                        
                  
                  
                }, label: {

                    Text("Random Joke")
                    
                        .bold()
                        .font(.title3)
                        .frame(width: 280, height: 50, alignment: .center)
                        .background(Color(.systemBlue))
                        .foregroundColor(.white)
                        .cornerRadius(15)
                    //.frame(width: 300, height: 300)
                        .padding(60)
                    
                })

                
               
                
            }
            .padding()
            
            }
            .navigationTitle("😂🤣 JOKES 😂🤣")
            
        }
        }
        }
       
    }
}

struct JokeView_Previews: PreviewProvider {
    static var previews: some View {
        JokeView()
    }
}
