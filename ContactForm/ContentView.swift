//
//  ContentView.swift
//  ContactForm
//
//  Created by Ryo Martin on 03/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Form {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }.padding()
    }
}

#Preview {
    ContentView()
}
