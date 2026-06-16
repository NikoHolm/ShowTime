//
//  LogInView.swift
//  Showtime
//
//  Created by Niko Holm on 14.6.2026.
//
import SwiftUI


struct LogInView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var errorMessage = ""
    
    var body: some View {
        ZStack {
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
            
            VStack(spacing: 16) {
                TextField("Email", text: $email)
                    .textFieldStyle(.roundedBorder)
                
                SecureField("Password", text: $password)
                    .textFieldStyle(.roundedBorder)
                
                Button {
                    Task {
                        do{
                            try await AuthService.shared.signIn(email: email, password: password)
                            
                        } catch{
                            errorMessage = error.localizedDescription
                        }
                        
                        print("do login action")
                    }
                } label: {
                    Text("Sign In")
                        .foregroundStyle(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(.red)
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                }
                if !errorMessage.isEmpty {
                    Text(errorMessage)
                        .foregroundStyle(.red)
                        .font(.footnote)
                }
            }
            .padding()
        }
    }
}
#Preview {
    LogInView()
}
