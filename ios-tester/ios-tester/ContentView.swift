//
//  ContentView.swift
//  ios-tester
//
//  Created by Christopher Dang on 4/5/22.
//

import SwiftUI

struct ContentView: View {
    @State var report: String = ""
    @State var placeholder: String = "Tell us more..."
    
    var body: some View {
        ZStack {
            if self.report.isEmpty {
                    TextEditor(text: $placeholder)
                        .font(.body)
                        .foregroundColor(.gray)
                        .disabled(true)
                        .padding()
            }
            TextEditor(text: $report)
                .font(.body)
                .opacity(self.report.isEmpty ? 0.25 : 1)
                .padding()
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
