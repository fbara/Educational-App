//
//  ContentView.swift
//  Educational App
//
//  Created by Frank Bara on 2/9/20.
//  Copyright © 2020 BaraLabs. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isAdShowing = true
    
    var body: some View {
        TabView{
            NavigationView {
                ScrollView(.vertical) {
                    TopView()
                    
                }
            }.tabItem {
                Image(systemName: "house.fill")
                
            }.tag(1)
            Text("Tab Content 2").tabItem { Image(systemName: "book.fill")}.tag(2)
            Text("Tab Content 3").tabItem { Image(systemName: "square.fill") }.tag(3)
            Text("Tab Content 4").tabItem { Image(systemName: "person.fill") }.tag(4)
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

// Make new .swift file
struct TopView: View {
    var body: some View {
        HStack {
            SearchView()
            TopButtonView()
        }
        .padding(.horizontal)
    }
}

struct SearchView: View {
    @State private var search = ""
    
    var body: some View {
        ForEach(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
            ZStack {
                Rectangle()
                    .foregroundColor(Color(.systemGray5))
                    .cornerRadius(12)
                    .frame(height: 60)
                
                
                HStack {
                    ExtractedView()
                    
                    Image(systemName: "magnifyingglass")
                        .font(Font.system(size: 22).weight(.bold))
                        .padding()
                        .foregroundColor(.white)
                        .background(Color(.systemIndigo))
                        .cornerRadius(12)
                }
                .padding(.horizontal)
            }
        }
    }
}

struct TopButtonView: View {
    var body: some View {
        Button(action: buttonAction) {
            Image(systemName: "slider.horizontal.3")
                .font(Font.system(size: 22).weight(.bold))
                .frame(width: 60, height: 60)
                .foregroundColor(Color(.label))
                .background(Color(.systemGray5))
        }
    }
    
    func buttonAction() {
        print("Button tapped!")
    }
}

struct ExtractedView: View {
    var body: some View {
        TextField("Search", text: $search)
    }
}
