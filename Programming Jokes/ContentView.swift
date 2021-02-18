//
//  ContentView.swift
//  Programming Jokes
//
//  Created by Darren Darlington on 2/17/21.
//

import SwiftUI

struct ContentView: View {
    @State private var jokes = [Joke]()
    var body: some View {
        NavigationView {
            List(jokes) { joke in
                NavigationLink(
                    destination: Text(joke.punchline)
                    .padding(),
                label: {
                    Text(joke.setup)
                })
            }
            .navigationTitle("Programming Jokes")
        }
        .onAppear(perform: {
            getJokes()
        })
    }
    
    func getJokes() {
       let apiKey = "?rapidapi-key=32a3795ffdmshbeee571acffa848p1c5fecjsn7024003cbda5"
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Joke: Identifiable {
    let id = UUID()
    var setup: String
    var punchline: String
}
