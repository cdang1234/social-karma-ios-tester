//
//  ContentView.swift
//  ios-tester
//
//  Created by Christopher Dang on 4/5/22.
//

import SwiftUI

struct ContentView: View {
    @State var report: String = ""
    
    var body: some View {
        VStack(alignment: .leading) {
            TextField("Enter report...", text: $report)
                .textFieldStyle(MyTextFieldStyle())
                .font(Font.system(size: 16, design: .default))
                .multilineTextAlignment(.leading)
        }.frame(maxWidth: .infinity, maxHeight: .infinity).border(Color.red).padding()
    }
}


struct MyTextFieldStyle: TextFieldStyle {
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
        .padding(20)
        .background(
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .stroke(Color.gray, lineWidth: 3)
                .frame(height: 400)
        )
        .padding()
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
