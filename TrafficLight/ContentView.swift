//
//  ContentView.swift
//  TrafficLight
//
//  Created by Анна Голубева on 01.06.2021.
//

import SwiftUI

enum CurrentLight {
    case red, yellow, green
}

struct ContentView: View {
    @State private var currentLight = CurrentLight.red
    
    @State private var redLight = 0.3
    @State private var yellowLight = 0.3
    @State private var greenLight = 0.3
    
    @State private var buttonText = "Start"
    
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            
            VStack(spacing: 10) {
                ColorCircle(color: .red, opacity: redLight)
                ColorCircle(color: .yellow, opacity: yellowLight)
                ColorCircle(color: .green, opacity: greenLight)
                Spacer()
                
                Button(action: startButtonPressed) {
                    Text(buttonText)
                        .font(.title)
                        .frame(width: 240.0, height: 54.0)
                        .foregroundColor(.white)
                }
                .background(Color.blue)
                .cornerRadius(16.0)
            }
            .padding()
        }
    }
    
    private func startButtonPressed() {
        let lightIsOn = 1.0
        let lightIsOff = 0.3
        
        if buttonText == "Start" {
            buttonText = "Next"
        }
        
        switch currentLight {
        case .red:
            greenLight = lightIsOff
            redLight = lightIsOn
            currentLight = .yellow
        case .yellow:
            redLight = lightIsOff
            yellowLight = lightIsOn
            currentLight = .green
        case .green:
            yellowLight = lightIsOff
            greenLight = lightIsOn
            currentLight = .red
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
