//
//  WhySter.swift
//  FYPNew
//
//  Created by Daniel Clarke on 20/03/2022.
//

import SwiftUI

struct WhySter: View {
    var body: some View {
        ScrollView{
            VStack(alignment: .leading){
                HStack {
                    VStack{
                        
                    }
                    Spacer()
                }.padding([.leading, .trailing, .top])
                VStack(alignment: .leading){
                    // Why sterilise opening
                    Group{
                        Text("When babies are born, their brand new digestive and immune systems are unaccustomed to the millions of bacteria we come into contact with every day.\n \nWhile some immunity passes from mother to baby during pregnancy and breastfeeding, babies’ immature systems are still considerably more susceptible to infection from new and unfamiliar germs.").font(.system(size: 16)).padding(.bottom)
                        Text("For this reason, some experts recommend that parents sterilize baby bottles for the first few months of life. This will kill any germs, bacteria, or viruses that may be lurking in a bottle’s nooks and crannies, and keep your baby from getting sick.").font(.system(size: 16)).padding(.bottom)
                        Text("Sterilizing your baby’s bottles is especially important if:").bold()
                        //LIST OF REASONS
                        VStack(alignment: .leading){
                            Text("**1.** You’re using secondhand or hand-me-down bottles for the first time.").font(.system(size: 16))
                            Text("**2.** Your baby was born prematurely or has health problems.").font(.system(size: 16))
                            Text("**3.** Your baby has been ill.").font(.system(size: 16))
                            Text("**4.** Your home does not have safe, clean drinking water.").font(.system(size: 16))
                        }.padding()
                    }.padding([.leading, .trailing])
                    // What can happen if I don't sterilise
                    Text("What Can Possibly Happen If I Do Not Sterilise My Baby's Bottles?").font(Font.title2).bold().padding([.leading, .trailing, .top, .bottom])
                    Group{
                        Text("If bottles are not properly sterilized, your baby can be exposed to bacteria and germs that can cause:").font(.system(size: 16))
                        // LIST OF THINGS
                        HStack(alignment: .center){
                            HStack{
                                VStack(alignment: .leading){
                                    Text("‣ __Stomach Flu/Illness__").font(.system(size: 16))
                                    Text("‣ __Hepatitis A__").font(.system(size: 16))
                                    Text("‣ __Food poisoning__").font(.system(size: 16))
                                }.padding()
                            }
                            HStack(spacing: 5){
                                VStack{
                                    Text("‣ __Diarrhea__").font(.system(size: 16))
                                    Text("‣ __Vomiting__").font(.system(size: 16))
                                    Text("‣ __Rotavirus__").font(.system(size: 16))
                                }
                            }
                        }.padding(.bottom)
                        Text("Please Note:").bold().padding(.bottom, 1)
                        Text("_Even if your baby can fight off the germs or bacteria associated with these illnesses, common side effects of the symptoms of vomiting and diarrhea include dehydration, which can be very dangerous for babies_").font(.system(size: 16))
                        
                    }.padding([.leading, .trailing])
                    // How Often
                    Group{
                        
                    }
                    Text("Credit: [momlovesbest.com](https://momlovesbest.com/feeding/bottles/sterilize-baby-bottles)").font(Font.footnote).padding()
                }
            }
        }.navigationTitle("Why Sterilise?")
    }
}

struct WhySter_Previews: PreviewProvider {
    static var previews: some View {
        WhySter()
    }
}
