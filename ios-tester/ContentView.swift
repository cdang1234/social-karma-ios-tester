//
//  ContentView.swift
//  ios-tester
//
//  Created by Christopher Dang on 4/5/22.
//

import SwiftUI
import SocialKarma

struct ContentView: View {
    var body: some View {
        ZStack {
            SocialKarma.init(apiKey: "foobar")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
