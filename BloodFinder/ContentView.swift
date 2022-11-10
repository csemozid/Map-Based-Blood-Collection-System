//
//  ContentView.swift
//  BloodFinder
//
//  Created by Md. Abdul Mozid on 4/4/22.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedIndex = 0
    var icons = ["house", "drop", "person"]
    var body: some View {
        VStack {
            ZStack {
                switch selectedIndex {
                case 0:
                    HomeView()
//                    NavigationView {
//                        Text("First")
//                            .navigationTitle("Home")
//                    }
                case 1:
                    BloodSelectionView()
                        
                    
                case 2:
                    NavigationView {
                        VStack {
                            
                            Text("Welcome to Blood Finder")
                                .foregroundColor(.red)
                                //.padding(.bottom)
                            Text("❤️")
                                .font(.system(size: 50))
                                .padding(20)
                            Text("Donate Blood Save Lives")
                                .foregroundColor(.red)
                                //.padding(.top)
                            .padding(.bottom, 100)
                           
                            //Spacer()
                            

                            NavigationLink(destination:
                                LoginView()
                            , label: {
                                Text("Login")
                                    .foregroundColor(.red)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 4)
                                            .stroke(Color.red, lineWidth: 1)
                                            .frame(width: 200, height: 30)
                                        )
                            })
                                
                            .padding(22)
                            //.buttonStyle(.borderedProminent)
                            
                            NavigationLink(destination:
                                SignupView()
                            , label: {
                                Text("Signup")
                                    .foregroundColor(.red)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 4)
                                            .stroke(Color.red, lineWidth: 1)
                                            .frame(width: 200, height: 30)
                                        )
                            })
                                
                            //.buttonStyle(.borderedProminent)
                                //.border(Color.red)
                                
                        
                            .padding(.bottom)
                            .navigationTitle("Profile")
                            }
                            
                       
                        
                    }
                    
                default:
                    NavigationView {
                        Text("First")
                            .navigationTitle("Home")
                    }
                }
            }
            
            Spacer()
            Divider()
                .padding(.bottom, 12)
            HStack {
                ForEach(0..<3) { num in
                    Button(action: {
                        selectedIndex = num
                    }, label: {
                        Spacer()
                        if num == 1 {
                            ZStack {
                                Circle()
                                    .fill(Color.red)
                                    .frame(width: 90, height: 90)
                                Image(systemName: icons[num])
                                    .font(.system(size: 50, weight: .light))
                                    .foregroundColor(selectedIndex == num ? Color(.white) : .white)
                                //Text("Tab Bar")
                            }
                            .padding(.bottom, 20)

                        }
                        else {
                            Image(systemName: icons[num])
                                .font(.system(size: 30, weight: .bold))
                                .foregroundColor(selectedIndex == num ? Color(.red) : .gray)
                            //Text("Tab Bar")

                        }
                        
                        Spacer()
                    })
                    
                }
           }
            .frame(maxHeight: 35)
        }
        
    }
}


//TabView {
//    Text("Home View")
//    .tabItem {
//        Image(systemName: "house")
//        Text("Home")
//    }
//    Text("Search View")
//    .tabItem {
//        Image(systemName: "magnifyingglass")
//        Text("Search")
//    }
//    Text("Profile View")
//    .tabItem {
//        Image(systemName: "person")
//        Text("Profile")
//    }
//}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
