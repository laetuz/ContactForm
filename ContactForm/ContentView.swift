//
//  ContentView.swift
//  ContactForm
//
//  Created by Ryo Martin on 03/11/23.
//

import SwiftUI

struct ContentView: View {
    @State private var name = ""
    @State private var email = ""
    @State private var phone = ""
    @State private var subject = "Help"
    @State private var message = "Write message here..."
    @State private var includeLogs = false
    
    @State private var preferredContactMethod = ContactMethod.email
    
    enum ContactMethod {
        case email, phone
    }
    
    var body: some View {
        NavigationView{
            Form {
                Section("Intro"){
                    HStack{
                        Image(systemName: "globe")
                            .imageScale(.large)
                            .foregroundStyle(.tint)
                        Text("Hello, world!")
                    }
                }
                Section("What is your name?"){
                    TextField("Name", text: $name)
                }
                Section("How can we reach you?"){
                    Picker("Contact Method", selection: $preferredContactMethod){
                        Text("Email").tag(ContactMethod.email)
                                    Text("Phone").tag(ContactMethod.phone)
                    }
                    switch preferredContactMethod {
                    case .email:
                        TextField("Email Adress", text: $email)
                    case .phone:
                        TextField("phone", text: $phone)
                    }
                }.pickerStyle(SegmentedPickerStyle())
                Section("What can we help you with?"){
                    Picker("Subject", selection: $subject){
                        ForEach(["Help", "Suggestion", "Bug Report"], id: \.self){
                            subject in Text(subject)
                        }
                    }
                }
                Section("Briefly explain what's going on"){
                    TextEditor(text: $message)
                }
                Section(footer: Text("Shi")){
                    Toggle("Include Logs", isOn: $includeLogs)
                }
                
                Button("Submit") {
                    print("Subit Button Tapped")
                }
            }.navigationTitle("Contact us")
        }
    }
}

#Preview {
    ContentView()
}
