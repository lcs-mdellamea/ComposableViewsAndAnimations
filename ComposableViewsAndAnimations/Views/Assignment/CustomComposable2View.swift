//
//  CustomComposable2View.swift
//  ComposableViewsAndAnimations
//
//  Created by Madison Dellamea on 4/26/22.
//

import SwiftUI

struct CustomComposable2View: View {
    
    //MARK: Stored Properties
    //    @State var blurredShape = 10
    //    @State var notBlurredShape = 0
    
    @State private var overText = false
    
    //MARK: Computed Properties
    
    var body: some View {
        
        HStack(spacing: 25) {
            
            Image(systemName: "circle.fill")
                .resizable()
                .frame(width: 50, height: 50)
                .blur(radius: 10)
            
            Image(systemName: "square.fill")
                .resizable()
                .frame(width: 50, height: 50)
                .blur(radius: 10)
            
            Image(systemName: "arrowtriangle.up.fill")
                .resizable()
                .frame(width: 50, height: 50)
                .blur(radius: 10)
            
            //
            
            Text("Tap me!")
                .font(.largeTitle)
                .hoverEffect(.lift)
                .onTapGesture {
                    print("Text tapped")
            }
        }
    }
    
    struct CustomComposable2View_Previews: PreviewProvider {
        static var previews: some View {
            CustomComposable2View()
        }
    }
}
