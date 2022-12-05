//
//  Breastfeeding.swift
//  FYPNew
//
//  Created by Daniel Clarke on 02/03/2022.
//

import SwiftUI

struct Breastfeeding: View {
    var body: some View {
        ScrollView{
            VStack(alignment: .leading){
                HStack {
                    VStack(alignment: .leading){
                       // Text("Breastfeeding").font(Font.largeTitle).bold()
                    }
                    Spacer()
                }.padding([.leading, .trailing, .top, .bottom])
            }
            
            Text("Select a Topic to Explore Below:").font(Font.title2).bold()
                .padding(.top)
            
                // TOPIC BUTTONS
            ButtonView(title: "Why Choose Breastfeeding", target2: WhyBreast())
            
            ButtonView(title: "Breastfeeding Attachment Tips", target2: BreastAttach())
            
            ButtonView(title: "Breastfeeding Positions and Holds", target2: BreastPositions()).padding(.bottom)

            
        }
    }
    func Load(){}
}

struct ButtonView <TargetView2: View> : View {
    var title : String
    var target2 : TargetView2
    var body: some View {
        VStack {
            NavigationLink(destination: target2){
                    Text(title)
                        .foregroundColor(Color.white)
                        .frame(width: 300, height: 50)
                        .background(Color(red: 252 / 255, green: 136 / 255, blue: 155 / 255))
                        .cornerRadius(20)
                        .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.black, lineWidth: 1))
                
            }.padding()
                .navigationBarTitle("Breastfeeding")
        }
    }
}






struct Breastfeeding_Previews: PreviewProvider {
    static var previews: some View {
        Breastfeeding()
            .previewInterfaceOrientation(.portrait)

    }
}
