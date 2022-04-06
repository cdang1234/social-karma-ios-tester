//
//  ContentView.swift
//  ios-tester
//
//  Created by Christopher Dang on 4/5/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            ReportForm(apiKey: "Hello World")
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ReportForm: View {
    @State var apiKey: String
    @State var report: String = ""
    @State var placeholder: String = "Additional information (optional)"
    
    var body: some View {
        VStack {
            ZStack {
                if self.report.isEmpty {
                        TextEditor(text: $placeholder)
                            .font(.body)
                            .foregroundColor(.gray)
                            .disabled(true)
                            .padding()
                            .frame(height:250)
                }
                TextEditor(text: $report)
                    .font(.body)
                    .opacity(self.report.isEmpty ? 0.25 : 1)
                    .padding()
                    .frame(height:250)
            }
            
            Button(action: {
                print("\(apiKey)")
            }) {
                Text("Submit")
                    .padding(10.0)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10.0)
                            .stroke(lineWidth: 2.0)
                    )
            }
            
            Text("Powered by Social Karma")
                .font(.system(size: 12.0))
                .padding(10)
        }
    }
}

struct ReportFormPreview: PreviewProvider {
    static var previews: some View {
        ReportForm(apiKey: "Test")
    }
}
