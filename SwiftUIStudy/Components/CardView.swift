//
//  CardView.swift
//  SwiftUIStudy
//
//  Created by Nourhan hosny on 14/08/2023.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        
        ZStack{
            HStack(spacing: 20) {
                VStack() {
                    Image("person")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10)
                    .frame(width: 120,height: 100)
                    
                    Text("Nourhan hosny")
                        .foregroundColor(.yellow)
                        .lineLimit(2)
                        .fontWeight(.medium)
                        .frame(width: 100)
                    
                }//: VStack
            
                
                VStack(spacing: 5) {
                    ForEach(0..<5) { item in
                        ContactInfoView(imageName: "person.crop.circle", titleText: "01284677156")
                    }
                }
            }.padding()
            
            
        }//: ZStack
        .background(.black)
        .cornerRadius(10)
    
        
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
