//
//  BreastPositions.swift
//  FYPNew
//
//  Created by Daniel Clarke on 14/03/2022.
//

import SwiftUI
import AVKit
import WebKit

struct BreastAttach: View {
    @Environment(\.presentationMode) private var presentationMode
    var body: some View {
        ScrollView{
            VStack(alignment: .leading){
                //Button("Close") {
                  //          presentationMode.wrappedValue.dismiss()
                    //    }
                //.navigationBarItems(leading: BackButton())
                HStack {
                    
                    VStack{
                        //Text("Positioning and attachment").font(Font.largeTitle).bold()
                    }
                    Spacer()
                }.padding([.leading, .trailing, .top])
            }
            VStack{
                Text("Positioning and attachment are the terms used to describe how you hold your baby at your breast so they can feed. Correct attachment and positioning in essential when undertaking breastfeeding. If not done correct it will be hard to feed or may not feed at all.").padding([ .leading, .trailing])
                Text("Attachment can also be referred to as ‘latching on’. When attached correctly you will find it more comfortable and there are some signs you have achieved this, such as seeing more of the darker nipple skin above the baby’s top lip.").padding([.top, .leading, .trailing])
                Text("In your early days of breastfeeding your nipple may feel tender as you get used to the new experience. Despite this, breastfeeding should _NOT_ be painful. ").padding([.top, .leading, .trailing])
                Text("If you are in Ireland and would like to speak to an expert on the matter, please visit the following link provided by the HSE.").bold().padding([.top, .leading, .trailing])
                Text("[Talk to an expert here!](https://www2.hse.ie/services/ask-our-breastfeeding-expert/)").padding([.top, .leading, .trailing])
            }
            VStack(alignment: .leading){
                
                Text("Steps to Attach Correctly").font(Font.title2).bold().padding([.top, .leading, .trailing])
                Text("Achieving correct attachment is essential for breastfeeding. You can follow the below steps with aid of a diagram to help. ") .padding([.top, .leading, .trailing])
                Image("Attachment").resizable().aspectRatio(contentMode: .fit).padding([.leading, .trailing])
                Group{
                    Text("Step 1").bold().padding([.leading, .trailing])
                    Text("Hold your baby close and keep their nose level with your nipple.").font(Font.system(size: 16)).padding([.leading, .trailing, .bottom])
                    Text("Step 2").bold().padding([.leading, .trailing])
                    Text("Tilt your baby’s head neck so their top lip brushes against your nipple, this will make them open their mouth wide. You can then bring them onto your breast.").font(Font.system(size: 16)).padding([.leading, .trailing, .bottom])
                    Text("Step 3").bold().padding([.leading, .trailing])
                    Text("Aim your nipple towards the roof of their mouth.").font(Font.system(size: 16)).padding([.leading, .trailing, .bottom])
                    Text("Step 4").bold().padding([.leading, .trailing])
                    Text("Your nipple and most of your areola should now be deep in your baby’s mouth. Their chin will also be pressed into your breast.").font(Font.system(size: 16)).padding([.leading, .trailing, .bottom])
                    Text("Step 5").bold().padding([.leading, .trailing])
                    Text("At this point ensure your baby’s nose is clear and allow easy breathing. If not, keep their nose at a tilt during attachment. \n_New-borns are nose breathers, if they feel they cannot breathe freely they will let go of your breast._").font(Font.system(size: 16)).padding([.leading, .trailing, .bottom])
                }
                Group {
                    Text("Step 6").bold().padding([.leading, .trailing])
                    Text("If your baby's nose does appear to be obstructed, you should move their bottom closer to you. This will help their head tilt and free up their nose.").font(Font.system(size: 16)).padding([.leading, .trailing, .bottom])
                    Text("Step 7").bold().padding([.leading, .trailing])
                    Text("The deeper you attach the more comfortable you will feel, and your baby will feed much easier.").font(Font.system(size: 16)).padding([.leading, .trailing, .bottom])
                    Text("Step 8").bold().padding([.leading, .trailing])
                    Text("You should see more darker nipple skin above the baby’s top lip than their bottom lip. Their cheeks will then begin to appear full, which will start them sucking quickly, then followed by longer slower sucks.").font(Font.system(size: 16)).padding([.leading, .trailing, .bottom])
                }
                Group{
                    Text("Step 9").bold().padding([.leading, .trailing])
                    Text("You will finally then hear them swallowing, and you now know you have achieved correct attachment.").font(Font.system(size: 16)).padding([.leading, .trailing, .bottom])
                }
                
                //Embed videos here
                
                VideoLink(thumbnail: Image("Unicef"), link: "https://www.youtube.com/watch?v=3nbTEG1fOrE")
                
                Text("Credit: [HSE Ireland 2022](https://www2.hse.ie/wellbeing/babies-and-children/breastfeeding/a-good-start/positioning-and-attachment/)").font(Font.footnote).padding()
            }
            
        }.navigationBarTitle("Attachment")
    }
}

struct BreastAttach_Previews: PreviewProvider {
    static var previews: some View {
        BreastAttach()
            .previewInterfaceOrientation(.portrait)
    }
}
