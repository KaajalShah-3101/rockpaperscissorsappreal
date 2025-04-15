//
//  ContentView.swift
//  rockpaperscissorsreal
//
//  Created by Kaajal Shah on 4/6/25.
//

import SwiftUI

struct ContentView: View {
    
    
    let moves = ["rock", "paper", "scissors"]
    
  
   
    
    @State private var playerHand = "rock"
    @State private var cpuHand = "paper"
    @State private var playerScore = 0
    @State private var cpuScore = 0
    
    
    
    var body: some View {
        ZStack {
            Color(.systemMint)
                .ignoresSafeArea()
            
            VStack(spacing: -30) {
                
                
                // Logo Image (centered)
                Image("logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: 300)
                    .padding()
                
                
                
                // Rock & Paper (evenly spaced)
                HStack(spacing: -100) {
                    Image(playerHand)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 300, height: 300)
                    
                    Image(cpuHand)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 300, height: 300)
                }
                .padding()
                
                Button {
                    makeYourMove()
                    determineWinner()
                } label: {
                    Image("button")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(maxWidth: 300)
                        .padding()
                }
                
                
                // Button Image (centered)
                
                
                Spacer()
                
                // Scoreboard (centered, evenly spaced)
                HStack {
                    Spacer()
                    
                    VStack {
                        Text("Player 1")
                            .font(.headline)
                            .padding(.bottom,10.0)
                        Text(String(playerScore))
                            .font(.largeTitle)
                    }
                    
                    Spacer()
                    
                    VStack {
                        Text("Player 2")
                            .font(.headline)
                            .padding(.bottom,10.0)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                    }
                    
                    Spacer()
                }
                
                
            }
        }
        
        
        
    }
    
    func makeYourMove() {
            // Randomly select player move and computer move safely
            if let randomPlayerMove = moves.randomElement(),
               let randomComputerMove = moves.randomElement() {
                playerHand = randomPlayerMove
               cpuHand = randomComputerMove
            }
        }
        
        // Function to determine the winner and update scores
        func determineWinner() {
            if playerHand == cpuHand {
                // It's a tie, no score changes
                return
            }
            
            switch (playerHand, cpuHand) {
            case ("rock", "scissors"), ("scissors", "paper"), ("paper", "rock"):
                // Player wins
                playerScore += 1
            case ("scissors", "rock"), ("paper", "scissors"), ("rock", "paper"):
                // Computer wins
                cpuScore += 1
            default:
                break
            }
        }
    
    
    
    
    
}



#Preview {
    ContentView()
}
