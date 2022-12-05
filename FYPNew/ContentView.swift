//
//  ContentView.swift
//  App
//
//  Created by Daniel Clarke on 07/02/2022.
//

import SwiftUI
import CoreData
import FirebaseAuth
import FirebaseFirestore
import EventKit
import EventKitUI

 class AppViewModel: ObservableObject {
    
    let auth = Auth.auth()
    let db = Firestore.firestore()
    
    @Published var signedIn = false
    
    var isSignedIn: Bool {
        return auth.currentUser != nil
    }
    
    func signIn(email: String, password: String){
        auth.signIn(withEmail: email, password: password) { [weak self] result, error in
            guard result != nil, error == nil else {
                return
            }
            DispatchQueue.main.async{
                // Success
                self?.signedIn = true
            }
        }
    }
     
     func setuserDetails(firstname: String, lastname: String, weeks: Int){
         var ref: DocumentReference? = nil
         ref = db.collection("users").addDocument(data: [
             "first": firstname,
             "last": lastname,
             "weeks": weeks,
         ]) { err in
             if let err = err {
                 print("Error adding document: \(err)")
             } else {
                 print("Document added with ID: \(ref!.documentID)")
             }
         }
     }
    
    
    func signUp(email: String, password: String){
        auth.createUser(withEmail: email, password: password) { [weak self] result, error in
            guard result != nil, error == nil else {
                return
            }
            DispatchQueue.main.async{
                // Success
                self?.signedIn = true
            }
        }
        
    }
    
    func signOut(){
        
        try? auth.signOut()
        
        self.signedIn = false
    }
}
 



struct ContentView: View {
    
    let database = Firestore.firestore()
    
    @EnvironmentObject var viewModel: AppViewModel
    
    var body: some View {
        NavigationView {
            
            if viewModel.signedIn {
                MainView()
            }
            else {
                SignInView()
            }
        }
        .onAppear {
            viewModel.signedIn = viewModel.isSignedIn
        }
    }
}

struct SignInView: View {
    @State var email = ""
    @State var password = ""
    
    @EnvironmentObject var viewModel: AppViewModel
    
    var body: some View {
        VStack{
            VStack{
                TextField("Email Address", text: $email)
                    .disableAutocorrection(true)
                    .autocapitalization(.none)
                    .padding()
                    .background(Color(.secondarySystemBackground))
                SecureField("Password", text: $password)
                    .disableAutocorrection(true)
                    .autocapitalization(.none)
                    .padding()
                    .background(Color(.secondarySystemBackground))
                
                Button(action: {
                    
                    viewModel.signIn(email: email, password: password)
                    
                }, label: {
                    Text("Sign In")
                        .foregroundColor(Color.white)
                        .frame(width: 200, height: 50)
                        .background(Color(red: 252 / 255, green: 136 / 255, blue: 155 / 255))
                        .cornerRadius(20)
                        .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.black, lineWidth: 1))
                        .padding()
                    
                })
                
                NavigationLink("Create Account", destination: SignUpView())
                    .padding([.leading,.trailing])
            }
            .padding()
            Spacer()
        }
        .navigationTitle("Sign In")
    }
}

struct SignUpView: View {
    @State var email = ""
    @State var password = ""
    
    @EnvironmentObject var viewModel: AppViewModel
    
    var body: some View {
        VStack{
            VStack{
                TextField("Email Address", text: $email)
                    .disableAutocorrection(true)
                    .autocapitalization(.none)
                    .padding()
                    .background(Color(.secondarySystemBackground))
                SecureField("Password", text: $password)
                    .disableAutocorrection(true)
                    .autocapitalization(.none)
                    .padding()
                    .background(Color(.secondarySystemBackground))
                
                Button(action: {
                    
                    viewModel.signUp(email: email, password: password)
                    
                }, label: {
                    Text("Sign Up")
                        .foregroundColor(Color.white)
                        .frame(width: 200, height: 50)
                        .background(Color(red: 252 / 255, green: 136 / 255, blue: 155 / 255))
                        .cornerRadius(20)
                        .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.black, lineWidth: 1))
                    
                })
            }
            .padding()
            Spacer()
        }
        .navigationTitle("Create Account")
    }
}

 /* struct MainView: View {
    var body: some View {
        TabView{
            Settings()
                .tabItem(){
                    Image(systemName: "gear")
                    Text("Settings")
                }
            Calendar()
                .tabItem(){
                    Image(systemName: "calendar.circle.fill")
                    Text("Calendar")
                }
        }
    }
}
  */

struct ExampleCalendarView: View {

    var body: some View {

        ExampleMonthlyCalendarView(
            ascVisits: Visit.mocks(
                start: .daysFromToday(-30*36),
                end: .daysFromToday(30*36)),
            initialMonth: .daysFromToday(0))

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let viewModel = AppViewModel()
        ContentView()
            .environmentObject(viewModel)
        
    }
}

