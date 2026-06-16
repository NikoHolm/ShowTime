//
//  AppConfig.swift
//  ShowTime
//
//  Created by Niko Holm on 15.6.2026.
//


import Foundation
import Supabase

enum AppConfig {
    static let supabaseURL: URL = {
        guard let string = Bundle.main.object(forInfoDictionaryKey: "SUPABASE_URL") as? String,
              let url = URL(string: string) else {
            fatalError("Missing SUPABASE_URL")
        }
        return url
    }()

    static let supabaseAnonKey: String = {
        guard let key = Bundle.main.object(forInfoDictionaryKey: "SUPABASE_KEY") as? String else {
            fatalError("Missing SUPABASE_KEY")
        }
        return key
    }()

    static let supabase = SupabaseClient(
        supabaseURL: supabaseURL,
        supabaseKey: supabaseAnonKey
    )
}
