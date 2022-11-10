//
//  SignupView.swift
//  BloodFinder
//
//  Created by Md. Abdul Mozid on 5/4/22.
//

import Foundation
import SwiftUI

struct SignupView: View {
    @State private var name = ""
    @State private var password: String = ""
    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("Full Name", text: $name)
                    TextField("Email", text: $name)
                    TextField("Phone", text: $name)
                }
                Section {
                    TextField("Blood Group", text: $name)
                    TextField("Last Donation Date", text: $name)
                }
                Section {
                    SecureField("Enter Password", text: $password)
                    SecureField("Confirm password", text: $password)
                }
            }
            Button("Signup"){
                
            }
                .navigationTitle("Signup")
                .navigationBarTitleDisplayMode(.inline)
        }
        .ignoresSafeArea()
        
    }
    
}
