//
//  BreastPositions.swift
//  FYPNew
//
//  Created by Daniel Clarke on 15/03/2022.
//

import SwiftUI

struct BreastPositions: View {
    var body: some View {
        ScrollView{
            VStack(alignment: .leading){
                HStack {
                    VStack{
                        
                    }
                    Spacer()
                }.padding([.leading, .trailing, .top])
            }
            VStack(alignment: .leading){
                Text("Before starting breastfeeding, it is important to find a comfortable position for both yourself and your baby. There are some tips and rules to this, but ultimately it is very personal, and you will need to explore what works for you.\n \n **Try the following positions to see which works best for you and your baby.**").padding()
            }
            VStack{
                // LAID BACK
                Group{
                    Text("Laid Back").font(Font.title2).bold().padding([.top, .trailing, .leading])
                    Text("Laid back is a great breastfeeding position for most people. It is a very easy position to relax in, thus making it a very good position to use in the early days of feeding.").padding()
                    Image("LaidBack").resizable().aspectRatio(contentMode: .fit).frame(width: 300).padding()
                    Text("Laid-back is a great position to try if you are having difficulties with breastfeeding.\n \n**Here are a few tips to help you get your technique just right:** \n \n __1.__ Shift your hips forward in the chair or bed to enter a semi-reclined position. You can then lay your baby down on your body and ensure there is no gaps. If there are gaps you may need to readjust. \n \n__2.__ Next, lay your baby front down and their cheek resting next to your breast\n \n__3.__ Your baby will now either self-attach or you may need to help them as previously discussed in the attachment section.\n \n__4.__ You can use your arms to support the baby and use pillows to support where not possible with your arms. ").padding()
                    Text("**VERY IMPORTANT:** _If using this position, never ever fall asleep with your baby on a sofa or armchair as this increases the risk of sudden infant death syndrome (cot death)_").padding([.bottom, .trailing, .leading])
                }
                
                // CROSS CRADLE
                Group{
                    Text("Cross Cradle").font(Font.title2).bold().padding([.top, .trailing, .leading])
                    Image("CrossCradle").resizable().aspectRatio(contentMode: .fit).frame(width: 300).padding()
                    Text("Steps to getting this technique just right:").bold()
                    Text("**1.** Hold your baby on top and use a pillow to support their neck, back and shoulders which allows them to tilt their head back.\n \n**2.** It is important to not hold or cover the back of your baby’s head, this can result in failed attachment due to them pushing back. It is essential for this reason to keep their head free of obstruction.\n \n**3.** It may help you to use your hand to shape your breast, creating an oblong shape and helping attachment.\n \n**4.** You can now use your other hand to support your baby’s back").padding()
                }
                
                // FOOTBALL HOLD
                Group{
                    Text("Football Hold").font(Font.title2).bold().padding([.top, .trailing, .leading])
                    Text("The football hold is especially a good position if you have had a caesarean birth.").frame(maxWidth: .infinity, alignment: .leading).padding()
                    Image("FootballHold").resizable().aspectRatio(contentMode: .fit).frame(width: 300).padding()
                    Text("Steps to getting this technique just right:").bold()
                    Text("**1.** Start by supporting your baby’s neck, back and shoulders with your hands and wrists.\n \n**2.** Lay your baby’s back along your forearm.\n \n**3.** Your baby should now be facing you with their nose near your nipple.\n \n**4.** Guide your nipple into your baby’s mouth. You can now support your breast with your other hand allowing more control and comfort.").padding()
                }
                
                // SIDE LYING
                Group{
                    Text("Side Lying").font(Font.title2).bold().padding([.top, .trailing, .leading])
                    Text("Side Lying involves lying down. It is good for night feeds").frame(maxWidth: .infinity, alignment: .leading).padding()
                    Image("Side").resizable().aspectRatio(contentMode: .fit).frame(width: 300).padding()
                    Text("Steps to getting this technique just right:").bold()
                    Text("**1.** Lay down with your baby facing towards you, making sure your neck and back are supported and comfortable. Your baby’s chest should be facing towards your chest.\n \n**2.** Place your arm that you’re lying on under your head or support your baby’s head or body with it, this depends on what you find most comfortable.\n \n**3.** You can also use a pillow at this stage to help support your baby’s back.\n \n**4.** Your baby’s nose will now be near your nipple, they will smell the milk, open their mouth and in turn latch to the nipple. \n \n **5.** It is important to ensure your baby is attached correctly in this position. ").padding()
                }
                
                
                
                // POSITIONS VIDEO.... INSERT HERE
                VideoLink2(thumbnail: Image("HSE"), link: "https://www.youtube.com/watch?v=ogd2LQ666Iw")
                
                VStack(alignment: .leading){
                    Text("Credit: [HSE Ireland 2022](https://www2.hse.ie/wellbeing/babies-and-children/breastfeeding/a-good-start/positioning-and-attachment/)").font(Font.footnote).padding()
                }
            }
        }.navigationBarTitle("Positions")
    }
}

struct VideoLink2 : View {
    var thumbnail : Image
    var link: String
    var body: some View {
        VStack {
            Link(destination: URL(string: link)!){
                ZStack{
                    thumbnail.resizable().aspectRatio(contentMode: .fit)
                }//.padding()
            }
        }.cornerRadius(10).padding()
    }
}

struct BreastPositions_Previews: PreviewProvider {
    static var previews: some View {
        BreastPositions()
            .previewInterfaceOrientation(.portrait)

    }
}
