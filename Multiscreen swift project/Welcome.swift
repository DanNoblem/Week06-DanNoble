//
//  ContentView.swift
//  Multiscreen swift project
//
//  Created by Daniel Wai on 2/14/23.
//

import SwiftUI
import UIKit

struct Welcome: View {
    var body: some View {
        VStack(spacing: 0){
            Text("Welcome!")
            Text("Ver 0.0")
            NavigationView{

                NavigationLink{
                    homepage()
                } label: {
                    Text("Continue")
                }

            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Welcome()
    }
}
