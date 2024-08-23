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
    
    func testString(){
        let input = "a b c"
        let letters = input.components(separatedBy: " ")
        
        let input2 = """
        a
        b
        c
        """
        let letters2 = input2.components(separatedBy: "\n")
        
        let letter = letters2.randomElement()
        
        let trimmed = letter?.trimmingCharacters(in: .whitespacesAndNewlines)
        
        //misspelled word in a string
        
        let word = "swift"
        //1. instance of UI text checker - it is from UI kit
        //We don’t need to write Objective-C to use it, but there is a slightly unwieldy API for Swift users.
        
        let checker = UITextChecker()
        
        //2.how much of our string we want to check
        
        //Objective-C does not use this method of storing letters
        //which means we need to ask Swift to create an Objective-C string range using the entire length of all our characters
        
        //UTF-16 is what’s called a character encoding – a way of storing letters in a string. We use it here so that Objective-C can understand how Swift’s strings are stored; it’s a nice bridging format for us to connect the two.
        
        let range = NSRange(location: 0,length: word.utf16.count)
        
        //3.we can ask our text checker to report where it found any misspellings in our word
        //passing in the range to check, a position to start within the range (so we can do things like “Find Next”), whether it should wrap around once it reaches the end, and what language to use for the dictionary
        
        let misspelledRange = checker.rangeOfMisspelledWord(in: word, range: range, startingAt: 0, wrap: false, language: "en")
        
        //That sends back another Objective-C string range, telling us where the misspelling was found.
        //there’s still one complexity here: Objective-C didn’t have any concept of optionals, so instead relied on special values to represent missing data.
        
//        /if there was no spelling mistake because the string was spelled correctly – then we get back the special value NSNotFound.
        

        let allGood = misspelledRange.location == NSNotFound
    }
}

#Preview {
    ContentView()
}
