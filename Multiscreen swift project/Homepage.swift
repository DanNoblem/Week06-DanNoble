//
//  File.swift
//  Multiscreen swift project
//
//  Created by Daniel Wai on 2/14/23.
//

import SwiftUI

struct homepage: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink {
                    Welcome()
                } label: {
                    Text("Welcome")
                };
                NavigationLink{
                    Sounds()
                } label: {
                    Text("Sound")
                };
                NavigationLink{
                    MovieView()
                } label: {
                    Text("Movies")
                }
            }.navigationTitle("Homepage")
            
        }
        }
    }

struct Homepage_Preview: PreviewProvider {
  static var previews: some View {
    homepage()
  }
}



