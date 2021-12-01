//
//  CircleView.swift
//  StatePropertyWrapperSimpleExample
//
//  Created by Russell Gordon on 2021-11-29.
//

import SwiftUI

struct CircleView: View {
    
    // User interface
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            
            // Input
            Text("Radius:")
                .bold()
            
            Group {
                
                // Show the selected radius value
                HStack {
                    Spacer()
                    Text("\( String(format: "%.2f", 15.0) )")
                        .font(.title2)
                        .bold()
                    Spacer()
                }
                
                Slider(value: .constant(15.0),
                       in: 0.0...100.0,
                       label: {
                    Text("Radius")
                },
                       minimumValueLabel: {
                    Text("0.0")
                },
                       maximumValueLabel: {
                    Text("100.0")
                })

            }
            
                        
            // Output
            Text("Area:")
                .bold()
            
            Text("706.9 square units")
                .font(.title2)
            
            
            Spacer()
            
        }
        .padding()
        .navigationTitle("Circle")
    }
}

struct CircleView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            CircleView()
        }
    }
}
