//
//  ContentView.swift
//  BucketList
//
//  Created by Akash Sheelavant on 5/5/25.
//

import SwiftUI
import MapKit

struct ContentView: View {
    var body: some View {
        MapReader { proxy in
            Map()
                .onTapGesture { position in
                    if let coordinate = proxy.convert(position, from: .local) {
                        print(coordinate)
                    }
                }
        }
    }
}

#Preview {
    ContentView()
}
