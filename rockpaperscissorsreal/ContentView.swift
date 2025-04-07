//
//  ContentView.swift
//  rockpaperscissorsreal
//
//  Created by Kaajal Shah on 4/6/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        
        ZStack{
            Color(.systemMint)
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                
                Image("logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.all)
                    .scaleEffect(2.0)
                    
                    
                
                Spacer()
                    
                
                HStack {
                    
                   Spacer()
                    
                    Image("rock")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(.all)
                        .scaleEffect(3.0)
                        
                    
                    
                   Spacer()
                    
                    Image("paper")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(.all)
                        .scaleEffect(3.0)
                    
                    Spacer()
                    
                       
                }
                
                Spacer()
               
                Image("button")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.all)
                    .scaleEffect(1.5)
                    
                
                Spacer()
                
                HStack {
                    
                    Spacer()
                    
                    VStack {
                        Text("Player")
                        Text("0")
                    }
                    
                    Spacer()
                    
                    VStack {
                        Text("Player")
                        Text("0")
                    }
                    
                    Spacer()
                    
                    
                }
                
                Spacer()
                
                
            }
            
            
            
        }
        
        
        
        
        
        
        
        
        
    }
}

#Preview {
    ContentView()
}
