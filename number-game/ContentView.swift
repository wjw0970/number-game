//
//  ContentView.swift
//  number-game
//
//  Created by Jiawen Wang on 20/11/23.
//

import SwiftUI

struct ContentView: View {
    // Generate a random number
      let targetNumber = Int.random(in: 1...100)
      
      // Handle user input and provide feedback
      @State private var userGuess = ""
      @State private var feedback = ""

      var body: some View {
          VStack {
              Text("Guess the Number!")
                  .font(.title)
                  .padding()
              
              TextField("Enter your guess", text: $userGuess)
                  .padding()
                  .textFieldStyle(RoundedBorderTextFieldStyle())
                  .keyboardType(.numberPad)
              
              Button("Submit Guess") {
                  // Step 7: Check the user's guess
                  checkGuess()
              }
              .padding()
              
              Text(feedback)
                  .padding()
          }
          .padding()
      }
      
      // Function to check the user's guess
      func checkGuess() {
          if let guess = Int(userGuess) {
              if guess == targetNumber {
                  feedback = "Correct! You guessed it!"
              } else if guess < targetNumber {
                  feedback = "Try a higher number."
              } else {
                  feedback = "Try a lower number."
              }
          } else {
              feedback = "Invalid input. Enter a number."
          }
      }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
            ContentView()
        }
}
