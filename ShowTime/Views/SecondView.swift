//
//  SecondView.swift
//  Showtime
//
//  Created by Niko Holm on 13.6.2026.
//

import SwiftUI

struct SecondView: View {
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
                NavigationLink{
                    SignUpView()
                } label: {
                    Text("create_account")
                        .font(.title)
                        .padding()
                        .foregroundStyle(Color.red)
                        .opacity(0.55)
                    
                }
            }
        }
    }
}

    
#Preview {
    SecondView()
}
