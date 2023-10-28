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
                        .background(Color.black)
                        .cornerRadius(15)

                }
            }
            .padding(30)
            .multilineTextAlignment(.center)
            .onAppear {
                
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {
    NavigationView {
        NoItemsView()
            .navigationTitle("Nothing")
    }
}
