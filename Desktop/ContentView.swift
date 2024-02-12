//
//  ContentView.swift
//  Desktop
//
//  Created by Kanstantsin Bucha on 20/10/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#if DEBUG

struct ContentViewPreview: PreviewProvider {
    static var previews: ContentView {
        ContentView()
    }
}

#endif
