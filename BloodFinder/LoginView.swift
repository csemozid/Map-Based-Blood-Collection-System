//
//  LoginView.swift
//  BloodFinder
//
//  Created by Md. Abdul Mozid on 5/4/22.
//

import Foundation
import SwiftUI

struct LoginView: View {
    @State private var name = ""
    @State private var password: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                Form {
                    TextField("Phone Number", text: $name)
                    SecureField("Enter a password", text: $password)
                }
                Button("Login") {
                    print("Button tapped!")
                }
                Spacer()
            }
            //Text("Login Form")
                .navigationTitle("Login")
                .navigationBarTitleDisplayMode(.inline)
        }
        .ignoresSafeArea()
    }
    
}
