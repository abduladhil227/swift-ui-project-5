//
//  ContentView.swift
//  WordScramble
//
//  Created by Abdul Adhil on 23/08/24.
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
    //t’s common to want to look in a bundle for a file you placed there. This uses a new data type called URL
    //URLs are a bit more powerful than just storing web addresses – they can also store the locations of files, which is why they are useful here.
    //If we want to read the URL for a file in our main app bundle, we use Bundle.main.url()
    func testBundles(){
        
        if let fileURL = Bundle.main.url(forResource: "somefile", withExtension: "txt"){
            
            if let fileContent = try? String(contentsOf: fileURL){
                //
            }
        }
    }
}

#Preview {
    ContentView()
}
