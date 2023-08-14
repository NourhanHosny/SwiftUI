//
//  ContentView.swift
//  SwiftUIStudy
//
//  Created by Nourhan hosny on 07/08/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        let superHeros: [Superhero] = superherosData
        VStack {
          
            Text("Super Heros")
                .fontWeight(.heavy)
                .font(.largeTitle)
                .foregroundColor(.red)
            ScrollView(.horizontal){
                
                HStack{
                    ForEach(superHeros) { item in
                        //SuperHeroView(superH: item)
                        CardView()
                    }
                }//: hstack
                .padding(16)
            }//: scrollView
           
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
