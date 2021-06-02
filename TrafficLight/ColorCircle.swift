//
//  ColorCircle.swift
//  TrafficLight
//
//  Created by Анна Голубева on 02.06.2021.
//

import SwiftUI

struct ColorCircle: View {
    let color: Color
    let opacity: Double
    
    var body: some View {
        Circle()
            .padding(0.0)
            .frame(width: 150.0, height: 150.0)
            .overlay(Circle().stroke(Color.white, lineWidth: 2))
            .shadow(radius: 10)
            .foregroundColor(color)
            .opacity(opacity)
    }
}

struct ColorCircle_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircle(color: .blue, opacity: 1.0)
    }
}
