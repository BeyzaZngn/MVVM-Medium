//
//  UserViewModel.swift
//  MVVM-Medium
//
//  Created by Beyza Zengin on 7.10.2025.
//

import Foundation

class UserViewModel {
    
    private var user: User?
    
    // View'in göstereceği veriler
    var userName: String {
        user?.name ?? "Bilinmiyor"
    }
    
    var userAgeText: String {
        if let age = user?.age {
            return "Yaş: \(age)"
        } else {
            return "Yaş bilgisi yok"
        }
    }
    
    // Modeli "hazırlayan" fonksiyon
    func fetchUser() {
        // Burada normalde bir API çağrısı olabilirdi.
        // Biz örnek olması için sabit bir kullanıcı atıyoruz.
        self.user = User(name: "Ahmet", age: 28)
    }
}


