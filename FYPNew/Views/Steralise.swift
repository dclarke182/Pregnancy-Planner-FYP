//
//  Steralise.swift
//  FYPNew
//
//  Created by Daniel Clarke on 02/03/2022.
//

import SwiftUI

struct Steralise: View {
    var body: some View {
        ScrollView{
            VStack(alignment: .leading){
                HStack {
                    VStack(alignment: .leading){
                    }
                    Spacer()
                }.padding([.leading, .trailing, .top, .bottom])
            }
            
            Text("Learn more about Sterilising:").font(Font.title2).bold()
                .padding(.top)
            ButtonViewS(title: "Why Should I Sterilise Baby Bottles?", target4: WhySter())
            ButtonViewS(title: "Which Method Is Right For Me?", target4: SterMethods())//.padding(.bottom)
            ButtonViewS(title: "How Do I Correctly Perform Each Method?", target4: SterTut()).padding(.bottom)
            
        }
    }
    func Load(){}
}


struct ButtonViewS <TargetView4: View> : View {
    var title : String
    var target4 : TargetView4
    var body: some View {
        VStack {
            NavigationLink(destination: target4){
                    Text(title)
                        .foregroundColor(Color.white)
                        .frame(width: 340, height: 50)
                        .background(Color(red: 252 / 255, green: 136 / 255, blue: 155 / 255))
                        .cornerRadius(20)
                        .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.black, lineWidth: 1))
                
            }.padding()
                .navigationBarTitle("Steralising")
        }
    }
}


struct Steralise_Previews: PreviewProvider {
    static var previews: some View {
        Steralise()
    }
}
