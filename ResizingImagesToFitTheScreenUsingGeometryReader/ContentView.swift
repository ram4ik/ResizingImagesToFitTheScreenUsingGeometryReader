//
//  ContentView.swift
//  ResizingImagesToFitTheScreenUsingGeometryReader
//
//  Created by ramil on 01.11.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            GeometryReader { geo in
                Image("img")
                    .resizable()
                    .aspectRatio(contentMode: .fill) // or .fit
                    //.frame(width: 300, height: 300)
                    //.clipped()
                    .frame(width: geo.size.width)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
