//
//  ContentView.swift
//  Interactive UI Practice 2
//
//  Created by Scholar on 7/12/23.
//

import SwiftUI

struct ContentView: View {
    @State private var name1 = ""
    @State private var name2 = ""
    @State private var titleText1 = "What is your first name?"
    @State private var titleText2 = "What is your last name?"
    var body: some View {
        ZStack {
            Color(.systemGray).ignoresSafeArea()
            VStack(spacing: 75.0) {
                Text(titleText1)
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.white)
            
                TextField("Type first name here...", text: $name1)
                    .multilineTextAlignment(.center).font(.title).border(Color.white, width: 1)
               
                Text(titleText2)
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.white)
                
                TextField("Type last name here...", text: $name2)
                    .multilineTextAlignment(.center).font(.title).border(Color.white, width: 1)
               
                Button("Submit Name") {
                    //print(name)
                    titleText1 = "Welcome \(name1)\(name2)"
                }.font(.title2)
                    .buttonStyle(.borderedProminent)
                    .tint(.purple)
            }.padding()
            
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
