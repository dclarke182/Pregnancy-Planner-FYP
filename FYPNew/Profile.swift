//
//  Profile.swift
//  FYPNew
//
//  Created by Daniel Clarke on 23/03/2022.
//

import SwiftUI

struct ProfileView: View {
    @EnvironmentObject var viewModel: AppViewModel
    var profile: ProfileHost
    
    var body: some View {
        ScrollView {
            VStack{
                //Text(profile.fname, profile.lname)
                 //   .bold()
                 //   .font(.title)
                Text("Welcome Back!")
                    .bold()
                    .font(.title)
                    .padding()
                VStack{
                Image(systemName: "person.circle").resizable().aspectRatio(contentMode: .fit).frame(height: 100)
                }.padding()
                Text("User Details:").font(Font.title3).bold().padding()
                VStack(alignment: .leading){
                Text("**Name:** \(profile.fname) \(profile.lname)").padding(5)
                Text("**Week of Pregnancy:** \(profile.weeks)").padding(5)
                }
            }
        }.navigationTitle("Profile")
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(profile: ProfileHost.default)
    }
}
