//
//  ContactInfoView.swift
//  SwiftUIStudy
//
//  Created by Nourhan hosny on 14/08/2023.
//

import SwiftUI

struct ContactInfoView: View {
    var imageName: String
    var titleText:String
    
    var body: some View {
        HStack {
            Image(systemName: imageName)
                .foregroundColor(.yellow)
             Text(titleText)
                .fontWeight(.medium)
                .foregroundColor(.yellow)
        }
    }
}

struct ContactInfoView_Previews: PreviewProvider {
    static var previews: some View {
        ContactInfoView(imageName: "person.crop.circle", titleText: "Nourhan Hosny")
    }
}
