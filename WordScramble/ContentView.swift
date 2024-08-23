//
//  ContentView.swift
//  WordScramble
//
//  Created by Abdul Adhil on 23/08/24.
//

import SwiftUI


struct ContentView: View {
    
    let people = ["Abdul","Adhil","Nike"]
    
    var body: some View {
        
        List(people,id: \.self){
            Text("\($0)")
        }
//        List{
//            Section("Section 1"){
//                Text("Static Row 1")
//                Text("Static Row 2")
//            }
//           
//            Section("Section 2"){
//                ForEach(0..<5) {
//                    Text("Dynamic Row \($0)")
//                }
//            }
//            Section("Section 3"){
//                Text("Static Row 3")
//                Text("Static Row 4")
//            }
//            
//            
//        }
//        .listStyle(.grouped)
        
        // List can do that Form can’t is to generate its rows entirely from dynamic content without needing a ForEach.
//        List(0..<5) {
//            Text("Dynamic row \($0)")
//        }
       
    }
}

#Preview {
    ContentView()
}
