//
//  ContentView.swift
//  Test
//
//  Created by Daniel Fore on 7/11/20.
//  Copyright © 2020 Daniel Fore. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var users: [User] = [
        User(name: "Daniel", drink: "Bulleit Rye", location: "Streets Pub & Grub", timestamp: ""),
        User(name: "Chris", drink: "Buffalo Trace", location: "Tank House", timestamp: ""),
        User(name: "Helios", drink: "Milk", location: "Dan's House", timestamp: "")
    ]
    
    var body: some View {
        TabView {
            List(users) { user in
                UserCard(user: user)
            }
            .tabItem {
                VStack {
                    Image(systemName: "rectangle.stack.person.crop")
                        .font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/)
                    Text("Boiz")
                }
            }.tag(1)

            VStack {
                Text("Test")
            }.tabItem {
                VStack {
                    Image(systemName: "person.circle")
                        .font(.title2)
                    Text("Profile")
                }
            }.tag(2)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(users: testData)
    }
}

struct UserCard: View {
    var user: User
    
    var body: some View {
        VStack(alignment: .center) {
            Image(user.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .background(Color.gray)
                .frame(width: 343.0, height: 363.0)
            
            VStack(alignment: .center, spacing: 0.0) {
                Text(user.name)
                    .font(.largeTitle)
                HStack() {
                    Spacer()
                    Image(systemName: "location")
                    Text("\(user.location), 5 minutes ago")
                    Spacer()
                }
                .foregroundColor(.secondary)
                .font(/*@START_MENU_TOKEN@*/.subheadline/*@END_MENU_TOKEN@*/)
                .padding(.bottom)

                
            }
            .background(Color.white)
        }
        .background(/*@START_MENU_TOKEN@*/Color.white/*@END_MENU_TOKEN@*/)
        .cornerRadius(/*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
        .shadow(color: Color.init(hue: 0, saturation: 0, brightness: 0, opacity: 0.3), radius: 1, y: 0)
        .shadow(radius: 6, y: 3)
    }
}
