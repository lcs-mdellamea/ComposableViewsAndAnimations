//
//  ExerciseOneView.swift
//  ComposableViewsAndAnimations
//
//  Created by Russell Gordon on 2021-02-23.
//

import SwiftUI
import UIKit

struct ExerciseOneView: View {
    
    // MARK: Stored properties
    
    // Controls the size of the circle
    @State private var scaleFactor: CGFloat = 1.0
    
    // Controls whether this view is showing or not
    @Binding var showThisView: Bool
    
    // Controls the hue of the circle
    @State private var hue: Color = .blue
        
    // Whether to apply the animation
    @State private var useAnimation = false
    
    // Controls the size of the circle
    @State private var yoffset: CGFloat = -100.0
    
    // Controls the size of the circle
    @State private var xoffset: CGFloat = 0.0

    // MARK: Computed properties

    var body: some View {
        
        NavigationView {
            
            VStack {

                Circle()
                    .frame(width: 200, height: 200)
                    .foregroundColor(.blue)
                    .scaleEffect(scaleFactor)
                    .border(Color.blue, width: 1.0)
                    .offset(x: xoffset, y: yoffset)
                    .onTapGesture {
                        if scaleFactor > 0.2 {
                            // Reduce the size of the circle by a tenth
                            scaleFactor -= 0.1
                            
                            // Change the color of the view to a random hue
                            hue = Color(hue: Double.random(in: 1...360) / 360.0,
                                        saturation: 0.8,
                                        brightness: 0.8)
                            
                            // This state change will be animated
                            withAnimation(.interpolatingSpring(mass: 1.0, stiffness: 1.0, damping: 0.75, initialVelocity: 10)) {
                                yoffset += 20
                            }
                        } else {
                            // Make sure the button doesn't entirely disappear
                            scaleFactor = 1
                        }
                    }
                    .animation(.default)
                
            }
            .navigationTitle("Exercise 1")
            .toolbar {
                ToolbarItem(placement: .primaryAction) {
                    Button("Done") {
                        hideView()
                    }
                }
            }

        }
        
    }
    
    // MARK: Functions
    
    // Makes this view go away
    func hideView() {
        showThisView = false
    }
    
}

struct ExerciseOneView_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseOneView(showThisView: .constant(true))
    }
}
