//
//  SterTut.swift
//  FYPNew
//
//  Created by Daniel Clarke on 18/03/2022.
//

import SwiftUI

struct SterTut: View {
    var body: some View {
        ScrollView{
            VStack(alignment: .leading){
                HStack {
                    VStack{
                    }
                    Spacer()
                }.padding([.leading, .trailing, .top])
                VStack(alignment: .leading){
                    Text("Regardless of the sterilization method you choose, the first step is always to clean your bottles in hot, soapy water to remove milk residue. After your bottles are cleaned and rinsed, you can move on to sterilizing them.")
                    //METHODS
                    Group{
                        Text("The Microwave Method").font(Font.title2).bold()
                        Text("1. Ensure your microwave is grime-free and clean.\n \n2. Half-fill the bottles with water.\n \n3. Place all nipples, and other accessories into a glass bowl filled with water, ensuring they’re all fully submerged.\n \n4. Place them in and microwave for 1 minute 30 seconds on 800-900W.\n \n5. Allow to cool before removing.").font(.system(size: 16)).padding(.horizontal)
                        Text("You can also use microwaving devices like in the following video tutorial").font(.system(size: 16))
                        VideoLink(thumbnail: Image("Microwave"), link: "https://www.youtube.com/watch?v=Iy-drzZ-ygo").frame(height: 200, alignment: .leading)
                    }.padding(.vertical)
                    Group{
                        Text("The Boiling Water Method").font(Font.title2).bold()
                        Text("1. Place the bottles and accessories into a pot of adequate size and fill with water until fully submerged.\n \n2. You can use a spoon or utensil to hold any floating items under.\n \n3. Once the water reaches its boiling point, keep the items under for 10 minutes.\n \n4. Allow to cool and dry.").font(.system(size: 16)).padding(.horizontal)
            
                        Text("**Important Note:** \n\n*If using this method, ensure to check with your bottle’s manufacturer to ensure the boiling-water method will not harm your bottles. This can potentially cause plastic bottles to melt or glass bottles to crack if they weren’t manufactured to withstand this level of heat.\nThe heat can also cause nipples and pacifiers to break down more quickly.*").font(.system(size: 15))
                        
                        VideoLink(thumbnail: Image("Boiling"), link: "https://www.youtube.com/watch?v=H6KbXd3x-sk").frame(height: 200, alignment: .leading).padding(.bottom)
                    }.padding(.vertical)
                    Group{
                        Text("The Cold Water Method").font(Font.title2).bold()
                        Text("You can use a sterilisation tablet in cold water as a convenient option. It can also be very useful for travel as previously seen. These tablets can also come in a liquid form, which can be less useful when travelling through airports, therefore it is important to assess your options correctly.").font(.system(size: 16))
                        Text("1. Fill container with cold water and submerge your bottles and accessories\n \n2. Add your tablet or liquid and allow to sit for time specified by manufacturer’s instructions.\n \n3. Dry bottles.").font(.system(size: 16)).padding(.horizontal)
                        Text("An example can be seen in the below video:").font(.system(size: 16))
                        VideoLink(thumbnail: Image("Cold"), link: "https://www.youtube.com/watch?v=1Bzsx2EV6kk").frame(height: 200, alignment: .leading).padding(.bottom)
                    }.padding(.vertical)
                    Group{
                        Text("Electric Steam Steriliser Method").font(Font.title2).bold()
                        Text("If you have the space, and electric steam seriliser is a quick and efficient method to use.").font(.system(size: 16))
                        Text("1. Place bottles in the steriliser \n \n2. Follow device instructions by adding water and setting mode/timer\n \n3. Dry bottles and accessories.").font(.system(size: 16)).padding(.horizontal)
                        VideoLink(thumbnail: Image("Steam"), link: "https://www.youtube.com/watch?v=FiHDzlfL7jQ").frame(height: 200, alignment: .leading).padding(.bottom)
                    }.padding(.vertical)
                    Group{
                        Text("UV Steriliser Method").font(Font.title2).bold()
                        Text("All germs and bacteria are killed using UV light, meaning this is a very clean and hassle-free method.").font(.system(size: 16))
                        Text("1. Place your bottle in the sterilizer.\n \n2. Press the start button.").font(.system(size: 16)).padding(.horizontal)
                        Text("If you’re traveling, there are portable, single-bottle UV sterilizers available that could give you peace of mind on your travels.").font(.system(size: 16))
                        VideoLink(thumbnail: Image("UV"), link: "https://www.youtube.com/watch?v=X91dliOEYkg").frame(height: 200, alignment: .leading).padding(.bottom)
                    }.padding(.vertical)
                    Group{
                        Text("The Dishwasher Method").font(Font.title2).bold()
                        Text("**Important Note:** _Before carrying out this method, ensure if your dishwasher has a sanitize cycle and NSF/ANSI Standard 184 Certification. \nYou’ll need to check with your manufacturer or your owner’s manual to see if your dishwasher has this certification._ \n \nIf it does, you can use it to sanitize your baby’s bottles by doing the following:").font(.system(size: 16))
                        Text("1. Place the bottles in the top rack.\n \n2. Place any nipples, rings, pacifiers, and other accessories in a dishwasher basket.\n \n3. Run a sanitize cycle.").font(.system(size: 16)).padding(.horizontal)
                        VideoLink(thumbnail: Image("Bleach"), link: "https://www.youtube.com/watch?v=Be9DAVCHBuw").frame(height: 200, alignment: .leading).padding(.bottom)
                    }.padding(.vertical)
                    Group{
                        Text("The Diluted Bleach Method").font(Font.title2).bold()
                        Text("Be mindful of using bleach. You may want to use gloves while handling such liquids.").font(.system(size: 16))
                        Text("1. Fill a container or bowl with 4 litres of water.\n \n2. Add 2 teaspoons of bleach and mix thoroughly.\n \n3. Place all bottles and accessories into the solution and allow to soak for 2 minutes.\n \n4. Scrub using a baby bottle brush or something similar, ensuring bottles are adequately covered and washed.\n \n5. Air dry. ").font(.system(size: 16)).padding(.horizontal)
                        VideoLink(thumbnail: Image("Bleach"), link: "https://www.youtube.com/watch?v=Be9DAVCHBuw").frame(height: 200, alignment: .leading).padding(.bottom)
                    }.padding(.vertical)
                    
                    Text("Credit: [momlovesbest.com](https://momlovesbest.com/feeding/bottles/sterilize-baby-bottles)").font(Font.footnote).padding()
                }.padding()
            }
        }.navigationTitle("Sterilisation Instructions")
    }
}

struct VideoLink : View {
    var thumbnail : Image
    var link: String
    var body: some View {
        VStack {
            Link(destination: URL(string: link)!){
                ZStack{
                    thumbnail.resizable().aspectRatio(contentMode: .fit)
                }//.padding()
            }
        }.cornerRadius(30).padding()
    }
}

struct SterTut_Previews: PreviewProvider {
    static var previews: some View {
        SterTut()
    }
}
