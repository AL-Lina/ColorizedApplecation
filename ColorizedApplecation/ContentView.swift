//
//  ContentView.swift
//  ColorizedApplecation
//
//  Created by Alina Sokolova on 20.02.22.
//

import SwiftUI

struct ContentView: View {
    @State private var sliderValueForRedColor = Double.random(in: 0...255)
    @State private var sliderValueForGreenColor = Double.random(in: 0...255)
    @State private var sliderValueForBlueColor = Double.random(in: 0...255)
    @State private var colorValue = ""
    var body: some View {
        ZStack {
            Color.orange
                .ignoresSafeArea()
            VStack {
                Rectangle()
                    .frame(width: 300, height: 150)
                    .cornerRadius(30)
                    .overlay(RoundedRectangle(cornerRadius: 30).stroke(Color.white, lineWidth: 4))
                Spacer()
                VStack(spacing:20) {
                    HStack{
                    Text("\(lround(sliderValueForRedColor))").foregroundColor(.red)
                    Slider(value: $sliderValueForRedColor, in: 0...255, step: 1)
                            .accentColor(Color.red)
                            .border(Color.red, width: 1)
                        TextField("", text: $colorValue)
                            .textFieldStyle(.roundedBorder)
                            .frame(width: 50)
                            
                        Spacer()
                    }
                        HStack {
                            Text("\(lround(sliderValueForGreenColor))").foregroundColor(.green)
                            Slider(value: $sliderValueForGreenColor, in: 0...255, step: 1)
                                .accentColor(Color.green)
                                .border(Color.green, width: 1)
                            TextField("", text: $colorValue)
                                .textFieldStyle(.roundedBorder)
                                .frame(width: 50)
                            Spacer()
                            
                        }
                    HStack {
                        Text("\(lround(sliderValueForBlueColor))").foregroundColor(.blue)
                        Slider(value: $sliderValueForBlueColor, in: 0...255, step: 1)
                            .accentColor(Color.blue)
                            .border(Color.blue, width: 1)
                        TextField("", text: $colorValue)
                            .textFieldStyle(.roundedBorder)
                            .frame(width: 50)
                        Spacer()
                    }
                    Spacer()
                    }
                    .padding()
                }
                
            }
            }
            
            
            
            
        }
        
        
    


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
