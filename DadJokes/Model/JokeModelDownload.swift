//
//  JokeModelDownload.swift
//  DadJokes
//
//  Created by Alberto Juarbe on 12/19/21.
//

import SwiftUI

class Jokes: ObservableObject {
    
@Published var jokeInfo: [JokeModel] = []
    
    
    init() {
        getJokes()
    }
    
    func getJokes() {
        
        guard let url = URL(string: "https://us-central1-dadsofunny.cloudfunctions.net/DadJokes/random/jokes") else { return }
                            //We got this url from /post1 from jsonplaceholder
        
        downloadData(fromURL: url) { (returnedData) in
            if let data = returnedData {
                guard let newPosts = try? JSONDecoder().decode(JokeModel.self, from: data) else { return }
                DispatchQueue.main.async { [weak self] in
                    self?.jokeInfo = [newPosts]
                    
                }
            }else {
                print("No data returned")
            }
        }
    }
    
    func downloadData(fromURL url: URL, completionHandler: @escaping (_ data: Data?) -> ()) {
        URLSession.shared.dataTask(with: url) { (data, response, error) in //Check if there is data, check if there is a response, check that there are no errors. This sets up the task. But it wont start until we get to resume
            //All the checks to ensure we have the data... Once the checks have been completed, you can merge like this:
            
         guard
            let data = data,
                error == nil,
                let response = response as? HTTPURLResponse,
            response.statusCode >= 200 && response.statusCode < 300 else {
                print("Error downloading data.")
                completionHandler(nil)
                return
            }
            
            completionHandler(data)
            
        }.resume()
    }
                          }

