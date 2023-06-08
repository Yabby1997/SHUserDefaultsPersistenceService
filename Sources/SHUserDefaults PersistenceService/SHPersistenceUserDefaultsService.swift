//
//  SHPersistenceUserDefaultsService.swift
//  
//
//  Created by USER on 2023/06/08.
//

import Foundation
import SHPersistenceServiceInterface

final class SHPersistenceUserDefaultsService: SHPersistenceServiceInterface {
    private let decoder = JSONDecoder()
    private let encoder = JSONEncoder()

    func load<DTO: Codable>(key: String) -> [DTO] {
        guard let data = UserDefaults.standard.data(forKey: key),
              let dto = try? decoder.decode([DTO].self, from: data) else { return [] }
        return dto
    }

    @discardableResult
    func save<DTO: Codable>(key: String, objects: [DTO]) -> Bool {
        guard let data = try? encoder.encode(objects) else { return false }
        UserDefaults.standard.setValue(data, forKey: key)
        return true
    }
}
