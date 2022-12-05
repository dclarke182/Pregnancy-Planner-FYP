//
//  Settings.swift
//  FYPNew
//
//  Created by Daniel Clarke on 09/02/2022.
//

import SwiftUI

struct Settings: View {
    @EnvironmentObject var vm: AppViewModel
    var body: some View {
         VStack{
            Text("You are Signed In ")
            Button(action: {
                vm.signOut()
            }, label: {
                Text("Sign Out")
                    .foregroundColor(Color.white)
                    .frame(width: 200, height: 50)
                    .background(Color(red: 252 / 255, green: 136 / 255, blue: 155 / 255))
                    .cornerRadius(20)
                    .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.black, lineWidth: 1))
            })
        } 
    }
}

struct Settings_Previews: PreviewProvider {
    static var previews: some View {
        Settings()
    }
}
