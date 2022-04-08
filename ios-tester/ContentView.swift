//
//  ContentView.swift
//  ios-tester
//
//  Created by Christopher Dang on 4/5/22.
//

import SwiftUI
import SocialKarma

struct ContentView: View {
    @State private var showingSheet = false

    var body: some View {
        Button("Report") {
            showingSheet.toggle()
        }
        .sheet(isPresented: $showingSheet) {
            SocialKarma.init(apiKey: "foobar")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
