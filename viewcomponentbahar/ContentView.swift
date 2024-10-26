//
//  ContentView.swift
//  viewcomponentbahar
//
//  Created by Radhita Keniten on 26/10/24.
//

import SwiftUI


struct ProfileView: View {
    var body: some View {
        VStack(spacing: 20) {
            // Profile Image and Background
            ZStack {
                Color.black
                    .frame(height: 140)
                    .edgesIgnoringSafeArea(.top)
                
                VStack {
                    Image("bahar")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .foregroundColor(.white)
                        .background(Color.gray)
                        .clipShape(Circle())
                        .offset(y: -10)
                }
            }
            // Spacing between profile image and name
                       Spacer().frame(height: 30)
                       
                       // Name and Username
                       VStack(spacing: 5) {
                           Text("Bahar Al Hamid")
                               .font(.title)
                               .fontWeight(.bold)
                           
                           Text("@Bahar")
                               .foregroundColor(.gray)
                           
                           Text("Bandung • Joined March 2023")
                               .foregroundColor(.gray)
                               .font(.footnote)
                       }
                       .padding(.top, -90)
            HStack(spacing: 15) {
                            Button(action: {}) {
                                HStack {
                                    Image(systemName: "person.badge.plus")
                                        .foregroundColor(.black)
                                    Text("Follow")
                                        .foregroundColor(.black)
                                }
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(Color(.systemGray6))
                                .cornerRadius(10)
                            }
                            
                            Button(action: {}) {
                                HStack {
                                    Image(systemName: "message")
                                        .foregroundColor(.black)
                                    Text("Message")
                                        .foregroundColor(.black)
                                }
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(Color(.systemGray6))
                                .cornerRadius(10)
                            }
                            
                            Button(action: {}) {
                                HStack {
                                    Image(systemName: "ellipsis")
                                        .foregroundColor(.black)
                                    Text("More")
                                        .foregroundColor(.black)
                                }
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(Color(.systemGray6))
                                .cornerRadius(10)
                            }
                        }
                        .padding(.horizontal)
            
            // Bio
            Text("CEO System D, Because your satisfaction is everything & Standing out from the rest, and that's what we want you to be as well.")
                .font(.body)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
            
            
            // Information Section
            Text("Information")
                .font(.title2)
                .bold()
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)
            VStack(alignment: .leading, spacing: 15) {
                HStack {
                    Image(systemName: "globe")
                        .foregroundColor(.gray)
                    Text("Website")
                        .foregroundColor(.gray)
                    Spacer()
                    Text("wwwBaharycom")
                        .foregroundColor(.black)
                }
                
                HStack {
                    Image(systemName: "envelope")
                        .foregroundColor(.gray)
                    Text("Email")
                        .foregroundColor(.gray)
                    Spacer()
                    Text("Hello@adalahbaharcom")
                        .foregroundColor(.black)
                }
                
                HStack {
                    Image(systemName: "phone")
                        .foregroundColor(.gray)
                    Text("Phone")
                        .foregroundColor(.gray)
                    Spacer()
                    Text("+62 517 218 92 00")
                }
                
                HStack {
                    Image(systemName: "calendar")
                        .foregroundColor(.gray)
                    Text("Joined")
                        .foregroundColor(.gray)
                    Spacer()
                    Text("26 March, 2023")
                }
            }
            .padding()
            .background(Color(.systemGray6))
            .cornerRadius(10)
            .padding(.horizontal)
            
            // Skills Tags with Alignment Adjustment
                       LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())], spacing: 10) {
                           ForEach(["UI Designer", "UX Designer", "Design System", "Product", "Successful"], id: \.self) { skill in
                               Text(skill)
                                   .frame(maxWidth: .infinity)
                                   .padding(8)
                                   .background(Color(.systemGray5))
                                   .cornerRadius(8)
                           }
                       }
                       .padding(.horizontal)
                       
                       Spacer()
        }
    }
}

struct ContentView: View {
    var body: some View {
        ProfileView()
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#Preview {
    ContentView()
}
