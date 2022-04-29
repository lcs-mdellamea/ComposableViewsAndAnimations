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
    
    @State private var circleScaleFactor: CGFloat = 1.0
    
    @State private var rectangleScaleFactor: CGFloat = 1.0
    
    @State private var triangleScaleFactor: CGFloat = 1.0
    
    @State private var blurryView = true
    
    @State private var blurredDiameter: CGFloat = 10.0
    
    
    //    @State private var unselectedView = true
    
    //MARK: Computed Properties
    
    var body: some View {
        
        HStack(spacing: 25) {
            
            Image(systemName: "circle.fill")
                .resizable()
                .frame(width: 50, height: 50)
                .blur(radius: blurredDiameter)
                .scaleEffect(circleScaleFactor)
                .onTapGesture {
                    selectedView = true
                    
                    blurryView = false
                    
                    if blurryView == false {
                        blurredDiameter = 0.0
                    }
                    
                    if circleScaleFactor < 2 {
                        // Increase the size of the view by 1.
                        circleScaleFactor += 1.0
                    } else {
                        circleScaleFactor = 1
                        selectedView = false
                    }
                        
            }
            
            Image(systemName: "rectangle.fill")
                .resizable()
                .frame(width: 50, height: 50)
                .blur(radius: blurredDiameter)
                .scaleEffect(rectangleScaleFactor)
                .onTapGesture {
                    selectedView = true
                    
                    blurryView = false
                    
                    if blurryView == false {
                        blurredDiameter = 0.0
                    }
                    
                    if rectangleScaleFactor < 2 {
                        // Increase the size of the view by 1.
                        rectangleScaleFactor += 1.0
                    } else {
                        rectangleScaleFactor = 1
                        selectedView = false
                    }
                        
            }
            
            Image(systemName: "arrowtriangle.up.fill")
                .resizable()
                .frame(width: 50, height: 50)
                .blur(radius: blurredDiameter)
                .scaleEffect(triangleScaleFactor)
                .onTapGesture {
                    selectedView = true
                    
                    blurryView = false
                    
                    if blurryView == false {
                        blurredDiameter = 0.0
                    }
                    
                    if triangleScaleFactor < 2 {
                        // Increase the size of the view by 1.
                        triangleScaleFactor += 1.0
                    } else {
                        triangleScaleFactor = 1
                        selectedView = false
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
