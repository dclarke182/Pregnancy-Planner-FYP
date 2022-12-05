//
//  Notifications.swift
//  FYPNew
//
//  Created by Daniel Clarke on 09/02/2022.
//

import SwiftUI

struct Notifications: View {
    var body: some View {
        //ScrollView{
           // VStack(alignment: .center){
                HStack{
                    VStack(alignment: .center){
                        Text("_You currently have no notifications_")
                    }
                }.padding([.leading, .trailing, .top]).navigationTitle("Notifications")
           // }
       // }
    }
}

struct Notifications_Previews: PreviewProvider {
    static var previews: some View {
        Notifications()
    }
}
