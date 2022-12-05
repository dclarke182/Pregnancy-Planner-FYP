//
//  MainView.swift
//  FYPNew
//
//  Created by Daniel Clarke on 09/02/2022.
//

import SwiftUI
import ElegantCalendar

struct MainView: View {
    @State var currentDate: Date = Date()

    var body: some View {
        
        TabView{
            HomeView()
                .tabItem(){
                    Image(systemName: "house.circle.fill")
                    Text("Home")
                }
                .navigationBarTitle("")
                .navigationBarHidden(true)
            ExampleCalendarView()
                .tabItem(){
                    Image(systemName: "calendar.circle.fill")
                    Text("Calendar")
                }
                .navigationBarTitle("")
                .navigationBarHidden(true)
            Notifications()
                .tabItem(){
                    Image(systemName: "bell.fill")
                    Text("Notifications")
                }
            Settings()
                .tabItem(){
                    Image(systemName: "gear")
                    Text("Settings")
                }
                .navigationBarTitle("")
                .navigationBarHidden(true)
        }
        .navigationBarTitle("")
        .navigationBarHidden(true)
    }
        
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
