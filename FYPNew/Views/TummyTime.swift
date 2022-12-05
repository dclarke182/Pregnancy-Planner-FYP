//
//  TummyTime.swift
//  FYPNew
//
//  Created by Daniel Clarke on 02/03/2022.
//

import SwiftUI

struct TummyTime: View {
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
                        Text("New-Borns").font(Font.title2).bold().padding(.bottom)
                        Text("__This ranges between 1-3 months old.__ \n \nStarting your new-born with tummy time will help with your baby developing neck control, muscle movement and strengthening and skills such as sitting up, crawling and walking.\n \nYou start by facing them belly-down, either on your lap or chest, for a few minutes at a time a few times a day. This allows them to practice skills such as strengthening their shoulder, neck and muscles and lifting their head.").font(.system(size: 16)).padding(.bottom)
                        Text("You can find video tutorials below:").bold()
                        
                        Text("New-Borns").font((Font.headline)).bold().padding([.top])
                        VideoLink(thumbnail: Image("TumNew"), link: "https://www.youtube.com/watch?v=Mud8cjWHyII")
                        
                        Text("0-3 Months").font((Font.headline)).bold()
                        VideoLink(thumbnail: Image("Tum3"), link: "https://www.youtube.com/watch?v=jMEcqzgkoWU")
                    }.padding([.leading,.trailing])
                    Group{
                        Text("Older Babies").font(Font.title2).bold().padding([.top, .bottom])
                        Text("__This ranges between to 4-7 months.__ \n \nTummy time helps them to further lift their chest and head and straighten their arms thus strengthen their muscles further.\n \n__Your baby still should be supervised when practising tummy time.__\n\nInstead of having your baby on you, you can place them instead on a blanket or a soft mat on the floor and allow them to practise for 3 to 5 minutes per day.\nHowever, this position may get frustrating for your child, so make sure to keep it brief and then gradually lengthen the overall time. It also may be a good idea to practise tummy time once your baby is changed and fed. \n \nThe more your baby gets used to it the easier and longer they will be able to practise tummy time. \n \nA great thing to help stimulate your baby is to place a toy or something to capture your baby’s attention, in which captures their attention.").font(.system(size: 16)).padding(.bottom)
                        
                        Text("4-7 Months").font((Font.headline)).bold()
                        
                        VideoLink(thumbnail: Image("Tum4"), link: "https://www.youtube.com/watch?v=EpVPGf2O0eU")
                        
                    }.padding([.leading,.trailing])
                }
            }
        }.navigationBarTitle("Tummy Time")
    }
}

struct TummyTime_Previews: PreviewProvider {
    static var previews: some View {
        TummyTime()
    }
}
