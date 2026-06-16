//
//  AuthService.swift
//  ShowTime
//
//  Created by Niko Holm on 15.6.2026.
//

import Foundation
import Supabase

final class AuthService {
    static let shared = AuthService()

    private let client = AppConfig.supabase

    private init() {}

    // user tries to make new account
    func signUp(email: String, password: String, displayName: String) async throws {
        let authResponse = try await client.auth.signUp(
            email: email,
            password: password
        )

        let userId = authResponse.user.id

        try await client
            .from("profile")
            .insert([
                "id": userId.uuidString,
                "display_name": displayName
            ])
            .execute()
    }

    func signIn(email: String, password: String) async throws {
        _ = try await client.auth.signIn(
            email: email,
            password: password
        )
    }

    func signOut() async throws {
        try await client.auth.signOut()
    }
}
