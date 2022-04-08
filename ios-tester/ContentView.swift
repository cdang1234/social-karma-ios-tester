//
//  ContentView.swift
//  ios-tester
//
//  Created by Christopher Dang on 4/5/22.
//

import SwiftUI
import SocialKarma

struct ContentView: View {
    var buttonLayout: AnyView = AnyView(Text("Report")
        .padding(10)
        .overlay(
            RoundedRectangle(cornerRadius: 10.0)
                .stroke(lineWidth: 5.0)
        )
    )
    
    var body: some View {
        ZStack {
            SocialKarma.init(
                apiKey: "foobar",
                buttonLayout: buttonLayout
            )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
