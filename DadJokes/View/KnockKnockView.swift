//
//  KnockKnockView.swift
//  DadJokes
//
//  Created by Alberto Juarbe on 12/19/21.
//

import SwiftUI

struct KnockKnockView: View {
    
    @StateObject var who = Knock()
    
        var body: some View {
            
            NavigationView {
                
          
            ZStack {

                LinearGradient(colors: [.purple, .blue, .purple], startPoint: .topLeading, endPoint: .bottomTrailing)
                    .ignoresSafeArea()
            
                ForEach(who.knock) { there in
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
                                    .foregroundColor(.black)
                                    .underline()
                                    .font(.largeTitle)
                                Spacer()
                                Spacer()
                                Text(there.setup)
                                    .font(.title3)
                                    .foregroundColor(.black)
                                    .padding()
                                Spacer()
                                Text(there.punchline)
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
                                who.thereJokes()
                            
                      
                      
                    }, label: {

                        Text("Random Joke")
                        
                            .bold()
                            .font(.title3)
                            .frame(width: 280, height: 50, alignment: .center)
                            .background(Color(.systemBlue))
                            .foregroundColor(.white)
                            .cornerRadius(15)
                            .padding(60)
                        
                    })

                }
                .padding()
                
                }
                .navigationTitle("😂🤣 JOKES 😂🤣")
                
            }
            }
            .navigationViewStyle(StackNavigationViewStyle())
            }
           
        }
    }

 



struct KnockKnockView_Previews: PreviewProvider {
    static var previews: some View {
        KnockKnockView()
    }
}
