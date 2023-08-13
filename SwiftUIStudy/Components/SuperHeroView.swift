//
//  SuperHeroView.swift
//  SwiftUIStudy
//
//  Created by Nourhan hosny on 07/08/2023.
//

import SwiftUI

struct SuperHeroView: View {
    var gradientColor: [Color] = [Color("Hulk1"),Color("Hulk2")]
    @State var isAlertPresented: Bool = false
    @State var isScale: Bool = false
    var superH: Superhero
    var hapticImbact = UIImpactFeedbackGenerator(style: .heavy)
    var body: some View {
        ZStack {
            Image(superH.image)
             .resizable()
             .scaledToFit()
             .scaleEffect( isScale ? 1 : 0.5)
             .animation(.easeInOut(duration:1), value: isScale)
            VStack{
                Text(superH.title)
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .scaleEffect(isScale ? 1 : 0.5)
                    .animation(.easeInOut(duration: 1.2), value: isScale)
                   
                Button {
                    // SomeAction
                    isAlertPresented.toggle()
                    hapticImbact.impactOccurred()
                    playSound(sound: "chimeup", type: "mp3")
                } label: {
                    HStack{
                        Text(superH.message)
                            .fontWeight(.heavy)
                            .foregroundColor(.white)
                            .font(.title3)
                        Image("ten")
                        .tint(.white)
                    }// Label
                    .padding()
                    .background(LinearGradient(colors: superH.gradientColors, startPoint: .bottomTrailing, endPoint: .topLeading))
                    .clipShape(Capsule())
                    .alert(isPresented: $isAlertPresented) {
                        Alert(title:  Text("Super Hero") , message:  Text("This is \(superH.title)"),dismissButton: .default(Text("Ok")))
                    }
                    
                }// label
                .offset(x: 0 , y: isScale ? 0 : 200)
                .animation(.easeIn(duration: 1.5), value: isScale)
                   

            }// VStack
            .offset(x:0 , y: 150)
     
             
        }// ZStack
        .frame(width: 325 , height: 554 , alignment: .center)
        .background(LinearGradient(colors: superH.gradientColors, startPoint: .topLeading, endPoint: .bottomTrailing))
         .cornerRadius(18)
         .shadow(color: .black, radius: 2)
         .onAppear() {
             isScale.toggle()
         }
        
    }
}

struct SuperHeroView_Previews: PreviewProvider {
    static var previews: some View {
        SuperHeroView(superH: Superhero(title: "Test", image: "hulk", message: "tet", gradientColors: [Color("ColorIronman01"),Color("ColorIronman02")]))
    }
}
