//
//  Shapes.swift
//  Bullseye
//
//  Created by Tommy Chiapete on 2/17/21.
//

import SwiftUI

struct Shapes: View {
    
    @State private var wideShapes = true
    
    
    var body: some View {
        VStack {
            
            if !wideShapes {
                Circle()
                    .strokeBorder(Color.blue, lineWidth: 20.0)
                    .frame(width: 200, height: 100.0)
                    .transition(.opacity)
            }
            
            
            RoundedRectangle(cornerRadius: 20.0)
                .fill(Color.blue)
                .frame(width: wideShapes ? 200 : 100, height: 100.0)
            
            Capsule()
                .fill(Color.blue)
                .frame(width: wideShapes ? 200 : 100, height: 100.0)
            
            Ellipse()
                .fill(Color.blue)
                .frame(width: wideShapes ? 200 : 100, height: 100.0)
            
            Button(action: {
                withAnimation {
                    // same as wideshapes = !wideshapes
                    wideShapes.toggle()
                }
                
            }) {
                Text("Animate")
            }
                
        }.background(Color.green)
        
    }
    
}

struct Shapes_Previews: PreviewProvider {
    static var previews: some View {
        Shapes()
    }
}
