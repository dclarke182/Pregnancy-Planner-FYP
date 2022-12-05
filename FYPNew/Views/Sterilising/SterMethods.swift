//
//  SterMethods.swift
//  FYPNew
//
//  Created by Daniel Clarke on 20/03/2022.
//

import SwiftUI

struct SterMethods: View {
    var body: some View {
        ScrollView{
            VStack(alignment: .leading){
                HStack {
                    VStack{
                    }
                    Spacer()
                }.padding([.leading, .trailing, .top])
                VStack(alignment: .leading){
                    Group{
                        //INTRO
                        Text("This topic is very important, and we will explore your options and find which best suits you and your baby. \n \nUltimately, this choice comes down to your lifestyle and own personal needs. The goal is to provide all the information you need to make your own informed decision, and to feel confident you made the right one.").font(.system(size: 16)).padding([.bottom], 30)
                        Text("Let's start by outlining your options:").font(Font.headline).bold()
                    }
                    // LIST OF METHODS
                    Group{
                        Text("**‣** Microwaving the bottles").font(.system(size: 14)).padding([.top], 15)
                        Text("**‣** Boiling them in water").font(.system(size: 14)).padding([.top], 5)
                        Text("**‣** Sterilizing in cold water").font(.system(size: 14)).padding([.top], 5)
                        Text("**‣** Using an electric steam baby bottle sterilizer").font(.system(size: 14)).padding([.top], 5)
                        Text("**‣** Using a UV sterilizer").font(.system(size: 14)).padding([.top], 5)
                        Text("**‣** Washing in the dishwasher").font(.system(size: 14)).padding([.top], 5)
                        Text("**‣** Using a diluted bleach solution").font(.system(size: 14)).padding([.top], 5)
                    }.padding([.leading], 20)
                    
                    //BREAK DOWN EACH METHOD ADV
                    Group{
                        Text("Each of these methods give a healthy and sterilised bottle, the choice of which is best is completely personal and depends on situations.\n \nThese can be broken mainly into the following categories.").font(.system(size: 16)).padding([.top], 25)
                        Text("__The Cheapest Options__").font(Font.headline).padding([.top], 25)
                        Group{
                            Text("**‣** The Microwave Method").font(.system(size: 14)).padding([.top], 10)
                            Text("**‣** The Boiling Water Method").font(.system(size: 14)).padding([.top], 5)
                            Text("**‣** Diluted Bleach Soak").font(.system(size: 14)).padding([.top], 5)
                            Text("**‣** The Dishwasher Method").font(.system(size: 14)).padding([.top], 5)
                        }.padding(.leading)
                    }
                    Group{
                        Text("__Chemical Free Options__").font(Font.headline).padding([.top], 40)
                        Text("**AVOID** the following").font(.system(size: 16)).padding([.top], 10)
                        Group{
                            Text("**‣** Sterilizing in cold water with a sterilization tablet").font(.system(size: 14)).padding([.top], 5)
                            Text("**‣** Diluted Bleach Soak").font(.system(size: 14)).padding([.top], 5)
                        }.padding(.leading)
                    }
                    Group{
                        Text("__Ease and Convenice Options__").font(Font.headline).padding([.top], 40)
                        Group{
                            Text("**‣** UV Steriliser").font(.system(size: 14)).padding([.top], 10)
                            Text("**‣** Electric Steam Steriliser").font(.system(size: 14)).padding([.top], 5)
                            Text("**‣** The Microwave Method").font(.system(size: 14)).padding([.top], 5)
                        }.padding(.leading)
                    }
                    Group{
                        Text("__Travelling Options__").font(Font.headline).padding([.top], 40)
                        Group{
                            Text("**‣** The Cold Water Method").font(.system(size: 14)).padding([.top], 10)
                            Text("**‣** Travel Sized UV Steriliser").font(.system(size: 14)).padding([.top, .bottom], 5)
                        }.padding(.leading)
                    }
                    Text("Credit: [momlovesbest.com](https://momlovesbest.com/feeding/bottles/sterilize-baby-bottles)").font(Font.footnote).padding()
                }.padding()
            }
        }.navigationTitle("Methods of Sterilising")
    }
}
struct SterMethods_Previews: PreviewProvider {
    static var previews: some View {
        SterMethods()
    }
}
