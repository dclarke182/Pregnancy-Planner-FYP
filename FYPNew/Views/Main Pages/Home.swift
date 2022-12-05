//
//  Profile.swift
//  FYPNew
//
//  Created by Daniel Clarke on 09/02/2022.
//

import SwiftUI

struct HomeView: View {
    let date = Date()
    @State private var showProfile = false
    var body: some View {
        ScrollView{
            VStack(alignment: .leading){
                HStack {
                    VStack(alignment: .leading){
                        Text(date, style: .date).foregroundColor(.gray).bold()
                        Text("Today").font(Font.largeTitle).bold()
                    }
                    Spacer()
                    Button{
                        showProfile.toggle()
                    }label: {
                        Image(systemName: "person.circle").resizable().frame(width: 40, height: 40, alignment: .trailing)
                    }
                }.padding([.leading, .trailing, .top])
                    .sheet(isPresented:$showProfile){
                        ProfileView(profile: ProfileHost.default)
                        // .environmentObject(modelData)
                    }
                
                // CALLS OF VIEWS
                
                // COUNT DOWN OF WEEKS WORK IN PROGRESS
                
                // WeeklyView(week: "Week 10", desc2: "Size of baby this week", pic2: Image("Bottle")).frame(height: 200, alignment: .leading)
                
                InformationView(title: "Breastfeeding", header: "Nutrition", desc: "Explore options and see what is right for you and your baby", pic: Image("Breast"), target: Breastfeeding()).frame(height: 550, alignment: .leading)
                
                InformationView(title: "Bottle Steralisation", header: "Nutrition", desc: "Find out ways to keep your baby's bottles sterile in a safe and healthy way", pic: Image("Bottle") ,target: Steralise()).frame(height: 550, alignment: .leading)
                
                InformationView(title: "Tummy Time", header: "Exercise", desc: "Practice great exercise for baby and parent alike!", pic: Image("Tummy"), target: TummyTime()).frame(height: 500, alignment: .leading)
            }
        }
        
    }
    func Load(){
        // Target
        //NavigationLink(destination: Profile())
    }
}


//struct ButtonView2 <TargetView3: View> : View {
//  var target3: TargetView3
//var body: some View {
//  VStack {
//    NavigationLink(destination: target3)
//}
// }
//}

// WEEKLY COUNT DOWN VIEW
struct WeeklyView : View {
    var week : String
    var desc2 : String
    var pic2: Image
    
    var body: some View {
        VStack {
            ZStack{
                
                pic2.resizable()//scaledToFit().aspectRatio(contentMode: .fit)
                //LinearGradient(gradient: Gradient(colors: [.clear, Color.black.opacity(0.5)]), startPoint: .top, endPoint: .bottom)
                VStack(alignment: .leading){
                    Text(week).foregroundColor(Color.black.opacity(0.9)).font(Font.title2).bold()
                    Spacer()
                    Text(desc2).foregroundColor(Color.black)
                    
                }.padding()
            }
        } .cornerRadius(20).padding()
    }
}

struct InformationView <TargetView: View> : View {
    var title : String
    var header : String
    var desc : String
    var pic : Image
    var target : TargetView
    var body: some View {
        VStack {
            NavigationLink(destination: target){
                ZStack{
                    
                    pic.resizable()//scaledToFit().aspectRatio(contentMode: .fit)
                    LinearGradient(gradient: Gradient(colors: [.clear, Color.black.opacity(0.5)]), startPoint: .top, endPoint: .bottom)
                    VStack(alignment: .leading){
                        Text(header).foregroundColor(Color.black.opacity(0.7)).bold()
                        Text(title).foregroundColor(Color.black.opacity(0.9)).font(Font.title).bold()
                        Spacer()
                        Text(desc).foregroundColor(Color.white)
                        
                    }.padding()
                }
            }
        } .cornerRadius(30).padding()
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .previewInterfaceOrientation(.portrait)
    }
}
