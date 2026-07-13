//
//  HomeView.swift
//  clipit
//
//  Created by Vasili Dallas on 7/12/26.
//  Last modified on 7/13/26

import SwiftUI
import SwiftData

// big prototype circle that's not actually a button
struct HomeView: View {
    var body: some View {
        Circle()
            .fill(.blue)
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
