//  /*
//
//  Project: TodoList
//  File: NoItemsView.swift
//  Created by: Elaidzha Shchukin
//  Date: on 28.10.2023
//
//  */

import SwiftUI

struct NoItemsView: View {
    @State var animate: Bool = false
    let secondaryAccentColor = Color("SecondaryAccentColor")
    
    var body: some View {
        
        ScrollView {
            VStack(spacing: 10) {
                Text("It's empty here!")
                    .font(.system(size: 25, weight: .semibold, design: .rounded))
                
                Text("I think you should click the add button and add a bunch of items to your todo list!")
                    .font(.system(size: 17, weight: .medium, design: .rounded))
                
                NavigationLink(destination: AddView(alertTitle: String())) {
                    Text("Add something!")
                        .foregroundColor(.white)
                        .font(.system(size: 20, weight: .semibold, design: .rounded))
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(animate ? secondaryAccentColor : Color.accentColor)
                        .cornerRadius(15)
                }
                .padding(.horizontal, animate ? 25 : 75)
                .shadow(
                    color: animate ? secondaryAccentColor.opacity(0.7) : Color.accentColor.opacity(0.7),
                    radius: animate ? 30 : 10,
                    x: 0,
                    y: animate ? 25 : 75)
                .scaleEffect(animate ? 1.1 : 1.0)
                .offset(y: animate ? -5 : 0)
            }
            .padding(30)
            .multilineTextAlignment(.center)
            .onAppear(perform: addAnimation)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
    
    func addAnimation() {
        guard !animate else { return }
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
            withAnimation(
            Animation
                .easeInOut(duration: 2.0)
                .repeatForever()
            ) {
                animate.toggle()
            }
        }
    }
}

#Preview {
    NavigationView {
        NoItemsView()
            .navigationTitle("Nothing")
    }
}
