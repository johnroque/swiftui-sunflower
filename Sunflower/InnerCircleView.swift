//
//  InnerCircleView.swift
//  Sunflower
//
//  Created by John Roque Jorillo on 6/3/20.
//  Copyright © 2020 JohnRoque Inc. All rights reserved.
//

import SwiftUI

struct InnerCircleView: View {
    
    @State private var scaleInOut = false
    @State private var rotateInOut = false
    @State private var moveInOut = false
    
    var body: some View {
        ZStack {
            Spacer()
            ZStack {
                
                ZStack {
                    
                    Circle()
                        .fill(LinearGradient(gradient: Gradient(colors: [.black, .orange]), startPoint: .top, endPoint: .bottom))
                        .frame(width: 80, height: 80)
                        .offset(y: moveInOut ? -60 : 0)
                    
                    Circle()
                        .fill(LinearGradient(gradient: Gradient(colors: [.black, .orange]), startPoint: .bottom, endPoint: .top))
                        .frame(width: 80, height: 80)
                        .offset(y: moveInOut ? 60 : 0)
                    
                }
                
                
                ZStack {
                    
                    Circle()
                        .fill(LinearGradient(gradient: Gradient(colors: [.black, .orange]), startPoint: .top, endPoint: .bottom))
                        .frame(width: 80, height: 80)
                        .offset(y: moveInOut ? -60 : 0)
                    
                    Circle()
                        .fill(LinearGradient(gradient: Gradient(colors: [.black, .orange]), startPoint: .bottom, endPoint: .top))
                        .frame(width: 80, height: 80)
                        .offset(y: moveInOut ? 60 : 0)
                    
                }
                .rotationEffect(.degrees(60))
                
                ZStack {
                    
                    Circle()
                        .fill(LinearGradient(gradient: Gradient(colors: [.black, .orange]), startPoint: .top, endPoint: .bottom))
                        .frame(width: 80, height: 80)
                        .offset(y: moveInOut ? -60 : 0)
                    
                    Circle()
                        .fill(LinearGradient(gradient: Gradient(colors: [.black, .orange]), startPoint: .bottom, endPoint: .top))
                        .frame(width: 80, height: 80)
                        .offset(y: moveInOut ? 60 : 0)
                    
                }
                .rotationEffect(.degrees(120))
                
                ZStack {
                    
                    Circle()
                        .fill(LinearGradient(gradient: Gradient(colors: [.black, .orange]), startPoint: .top, endPoint: .bottom))
                        .frame(width: 80, height: 80)
                        .offset(y: moveInOut ? -60 : 0)
                    
                    Circle()
                        .fill(LinearGradient(gradient: Gradient(colors: [.black, .orange]), startPoint: .bottom, endPoint: .top))
                        .frame(width: 80, height: 80)
                        .offset(y: moveInOut ? 60 : 0)
                    
                }
                .rotationEffect(.degrees(90))
                
                ZStack {
                    
                    Circle()
                        .fill(LinearGradient(gradient: Gradient(colors: [.black, .orange]), startPoint: .top, endPoint: .bottom))
                        .frame(width: 80, height: 80)
                        .offset(y: moveInOut ? -60 : 0)
                    
                    Circle()
                        .fill(LinearGradient(gradient: Gradient(colors: [.black, .orange]), startPoint: .bottom, endPoint: .top))
                        .frame(width: 80, height: 80)
                        .offset(y: moveInOut ? 60 : 0)
                    
                }
                .rotationEffect(.degrees(30))
                
                ZStack {
                    
                    Circle()
                        .fill(LinearGradient(gradient: Gradient(colors: [.black, .orange]), startPoint: .top, endPoint: .bottom))
                        .frame(width: 80, height: 80)
                        .offset(y: moveInOut ? -60 : 0)
                    
                    Circle()
                        .fill(LinearGradient(gradient: Gradient(colors: [.black, .orange]), startPoint: .bottom, endPoint: .top))
                        .frame(width: 80, height: 80)
                        .offset(y: moveInOut ? 60 : 0)
                    
                }
                .rotationEffect(.degrees(-30))
            }
            .rotationEffect(.degrees(rotateInOut ? 90 : 0))
            .scaleEffect(scaleInOut ? 1: 1/8)
            .animation(Animation.easeInOut.repeatForever(autoreverses: true).speed(1/12))
            .onAppear() {
                self.rotateInOut.toggle()
                self.scaleInOut.toggle()
                self.moveInOut.toggle()
            }
        }
    }
}

struct InnerCircleView_Previews: PreviewProvider {
    static var previews: some View {
        InnerCircleView()
    }
}
