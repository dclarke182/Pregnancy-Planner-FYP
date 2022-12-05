//
//  WhyBreast.swift
//  FYPNew
//
//  Created by Daniel Clarke on 28/03/2022.
//

import SwiftUI

struct WhyBreast: View {
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
                        Text("It is never too early or soon to research breastfeeding for your baby. It may be best to explore this topic as thoroughly as possible in advance to be fully preprared for the decision when it comes.\n \nUltimately you can leave this decision up until your baby has arrived, but it is best to have an idea and decision made before.").font(.system(size: 16)).padding(.bottom)
                        Text("Benefits of Breastfeeding").font(Font.title3).bold().padding([.top, .bottom])
                        Text("**1.** Your breast milk is perfectly designed for your baby \n \n**2.** Breast milk protects your baby from infections and diseases\n \n**3.** Breastfeeding provides health benefits for you\n \n**4.** Breast milk is available for your baby whenever your baby needs it\n \n**5.** Breastfeeding can build a strong emotional bond between you and your baby\n \n**6.** Formula milk does not provide the same protection from illness and does not give you any health benefits.").font(.system(size: 16))
                    }.padding([.leading, .trailing])
                    Group{
                        Text("Health Benefits").font(Font.title3).bold().padding([.top, .bottom])
                        Text("Breastfeeding has long-term benefits for your baby, lasting right into adulthood.\n \nAny amount of breast milk has a positive effect. The longer you breastfeed, the longer the protection lasts and the greater the benefits.").font(.system(size: 16)).padding(.bottom)
                        Text("Breastfeeding can help to reduce your baby's risk of:").font(.system(size: 16)).bold().padding(.bottom)
                        Text("**1.** Infections, with fewer visits to hospital as a result\n \n**2.** Diarrhoea and vomiting, with fewer visits to hospital as a result\n \n**3.** Sudden infant death syndrome (SIDS)\n \n**4.** Obesity \n \n**5.** Cardiovascular disease in adulthood").font(.system(size: 16)).padding(.bottom)
                        Text("Some studies have also found that breastfeeding for at least 6 months may reduce your baby's chance of getting childhood leukaemia. But more research is needed into this. \n \nGiving nothing but breast milk is recommended for about the first 6 months (26 weeks) of your baby's life. \n \nAfter that, giving your baby breast milk alongside solid foods for as long as you and your baby want will help them grow and develop healthily.\n \nBreast milk adapts as your baby grows to meet your baby's changing needs.").font(.system(size: 16)).padding(.top)
                    }.padding([.leading, .trailing])
                    Text("Credit: [NHS 2022](https://www.nhs.uk/conditions/baby/breastfeeding-and-bottle-feeding/breastfeeding/benefits/)").font(Font.footnote).padding()
                }
            }
        }.navigationTitle("Why Breastfeed?")
    }
}

struct WhyBreast_Previews: PreviewProvider {
    static var previews: some View {
        WhyBreast()
    }
}
