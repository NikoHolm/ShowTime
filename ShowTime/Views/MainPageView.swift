//
//  MainPageView.swift
//  Showtime
//
//  Created by Niko Holm on 12.6.2026.
//

import SwiftUI

struct MainPageView: View {
    var body: some View {
        ZStack{
            LinearGradient(
                colors: [Color.black, Color(red: 0.05, green: 0, blue: 0)],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            
            .ignoresSafeArea()
            
            Circle()
                .fill(.red.opacity(0.50))
                .frame(width: 75, height: 100)
                .blur(radius: 40)
                .offset(x: -120, y: -250)
            
            Circle()
                .fill(.red.opacity(0.25))
                .frame(width: 75, height: 260)
                .blur(radius: 50)
                .offset(x: 140, y: 180)
            Circle()
                .fill(.red.opacity(0.45))
                .frame(width: 75, height: 260)
                .blur(radius: 50)
                .offset(x: -50, y: 0)
            
            
            VStack {
                Text("home_title")
                    .font(.title)
                    .foregroundStyle(.red)
                    .padding()
                    .opacity(0.5)
                
                NavigationLink {
                    SignUpView()
                } label: {
                    Text("Sign Up")
                        .font(.system(size: 26, weight: .bold, design: .rounded))
                        .opacity(1)
                        .font(.headline)
                        .foregroundStyle(Color.black)
                        .frame(maxWidth: 200)
                        .padding()
                        .background(
                            LinearGradient(
                                colors: [.black, .red, .black],
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing
                            )
                            
                        )
                        .clipShape(RoundedRectangle(cornerRadius: 16))
                    
                        .opacity(0.7)
                }
                NavigationLink {
                    LogInView()
                } label: {
                    Text("Log In")
                        .font(.system(size: 26, weight: .bold, design: .rounded))
                        .foregroundStyle(Color.black)
                        .opacity(1)
                        
                        .frame(maxWidth: 200, maxHeight: 30)
                        .padding()
                        .background(
                            LinearGradient(
                                colors: [.black, .red, .black],
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing
                            )
                            
                        )
                        .clipShape(RoundedRectangle(cornerRadius: 16))
                    
                        .opacity(0.7)
                }
            }
        }
    }
}
#Preview {
    MainPageView()
}
