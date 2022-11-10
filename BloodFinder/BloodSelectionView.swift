//
//  BloodSelectionView.swift
//  BloodFinder
//
//  Created by Md. Abdul Mozid on 6/4/22.
//

import Foundation
import SwiftUI

struct BloodSelectionView: View {
    var bloodGroups = ["A+", "B+", "AB+", "O+", "A-", "B-", "AB-", "O-", "❤️"]
    @State var bloodGroupCount = 9
    var body: some View {
        NavigationView {
            VStack{
                    ScrollView {
                        Text("Select Blood Group")
                            .font(.title)
                            .padding(.top, 50)
                            .padding(.bottom, 15)
                        LazyVGrid(columns: [GridItem(.adaptive(minimum: 80))]) {
                            ForEach (bloodGroups[0..<bloodGroupCount], id: \.self) {bloodgroup in
                                switch bloodgroup {
                                case "A+":
                                    NavigationLink(destination:
                                        LoginView()
                                    , label: {
                                        CardView(thing: bloodgroup)
                                            .aspectRatio(3/3, contentMode: .fit)
                                            .padding(.top, 20)
                                    })
                                default:
                                    NavigationLink(destination:
                                        HomeView()
                                    , label: {
                                        CardView(thing: bloodgroup)
                                            .aspectRatio(3/3, contentMode: .fit)
                                            .padding(.top, 20)
                                    })
                                }
                                
                                
                                
                            }
                        }
                    }
                .padding(.vertical)
                .foregroundColor(.red)

                .padding(.all)
            }
            .padding(.horizontal)
            .ignoresSafeArea()
        }
       
//        NavigationView {
//            Text("Blood List")
//        }
    }
}


struct CardView: View {
    var thing: String
    var body: some View{
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 200) //Circle().frame(width: 90, height: 90)
            shape
                .fill()
                .foregroundColor(.white)
            shape
                .strokeBorder(lineWidth: 2)
            Text(thing)
                .font(.largeTitle)
        }
    }
}
