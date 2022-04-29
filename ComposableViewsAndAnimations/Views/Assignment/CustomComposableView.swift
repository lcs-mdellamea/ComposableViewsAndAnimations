//
//  CustomComposableView.swift
//  ComposableViewsAndAnimations
//
//  Created by Russell Gordon on 2021-02-24.
//

import SwiftUI

struct CustomComposableView: View {
    
    //MARK: Stored Properties
    
    @State private var selectedView = false
    
    // View Scaling Variables
    
    @State private var circleScaleFactor: CGFloat = 1.0
    
    @State private var rectangleScaleFactor: CGFloat = 1.0
    
    @State private var triangleScaleFactor: CGFloat = 1.0
    
    // View Blurring Variables
    
    @State private var circleBlurryView = true
    
    @State private var rectangleBlurryView = true
    
    @State private var triangleBlurryView = true
    
    //
    
    @State private var circleBlurredDiameter: CGFloat = 10.0
    
    @State private var rectangleBlurredDiameter: CGFloat = 10.0
    
    @State private var triangleBlurredDiameter: CGFloat = 10.0
    
    
    //    @State private var unselectedView = true
    
    //MARK: Computed Properties
    
    var body: some View {
        
        HStack(spacing: 25) {
            
            Image(systemName: "circle.fill")
                .resizable()
                .frame(width: 50, height: 50)
                .blur(radius: circleBlurredDiameter)
                .scaleEffect(circleScaleFactor)
                .onTapGesture {
                    selectedView = true
                    
                    circleBlurryView = false
                    
                    if circleBlurryView == false {
                        circleBlurredDiameter = 0.0
                    }
                    
                    if circleScaleFactor < 2 {
                        // Increase the size of the view by 1.
                        circleScaleFactor += 1.0
                    } else {
                        circleScaleFactor = 1
                        selectedView = false
                    }
                    
                    if selectedView == false {
                        circleBlurredDiameter = 10.0
                    }
                        
            }
            
            Image(systemName: "rectangle.fill")
                .resizable()
                .frame(width: 50, height: 50)
                .blur(radius: rectangleBlurredDiameter)
                .scaleEffect(rectangleScaleFactor)
                .onTapGesture {
                    selectedView = true
                    
                    rectangleBlurryView = false
                    
                    if rectangleBlurryView == false {
                        rectangleBlurredDiameter = 0.0
                    }
                    
                    if rectangleScaleFactor < 2 {
                        // Increase the size of the view by 1.
                        rectangleScaleFactor += 1.0
                    } else {
                        rectangleScaleFactor = 1
                        selectedView = false
                    }
                    
                    if selectedView == false {
                        rectangleBlurredDiameter = 10.0
                    }
                        
            }
            
            Image(systemName: "arrowtriangle.up.fill")
                .resizable()
                .frame(width: 50, height: 50)
                .blur(radius: triangleBlurredDiameter)
                .scaleEffect(triangleScaleFactor)
                .onTapGesture {
                    selectedView = true
                    
                    triangleBlurryView = false
                    
                    if triangleBlurryView == false {
                        triangleBlurredDiameter = 0.0
                    }
                    
                    if triangleScaleFactor < 2 {
                        // Increase the size of the view by 1.
                        triangleScaleFactor += 1.0
                    } else {
                        triangleScaleFactor = 1
                        selectedView = false
                    }
                    
                    if selectedView == false {
                        triangleBlurredDiameter = 10.0
                    }
                        
            }
        }
    }
    
    struct CustomComposableView_Previews: PreviewProvider {
        static var previews: some View {
            CustomComposableView()
        }
    }
}
