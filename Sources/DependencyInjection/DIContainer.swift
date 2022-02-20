//
//  DIContainer.swift
//  
//
//  Created by Daniel Prastiwa on 20/02/22.
//

import Foundation

typealias FactoryClosure = (DICProtocol) -> AnyObject

protocol DICProtocol {
    func register<Service>(type: Service.Type, factoryClosure: @escaping FactoryClosure)
    func resolve<Service>(type: Service.Type) -> Service?
}

// Dependency Injection Container
final class DIC: DICProtocol {
    static let shared = DIC()
    
    private init() {}
    
    var services = Dictionary<String, FactoryClosure>()
    
    func register<S>(type: S.Type, factoryClosure: @escaping FactoryClosure) {
        services["\(type)"] = factoryClosure
    }
    
    func resolve<S>(type: S.Type) -> S? {
        return services["\(type)"]?(self) as? S
    }
}
