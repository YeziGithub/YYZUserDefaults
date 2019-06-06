//
//  YYZUserDefaultsExt.swift
//  YYZUserDefaults
//
//  Created by yezi on 2019/6/6.
//  Copyright © 2019 yezi. All rights reserved.
//

import Foundation

protocol YYZUserDefaultsExt {
    associatedtype yyKeys: RawRepresentable
}

enum YYZUserDefaultsValueType {
    case string
    case integer
    case float
    case double
    case bool
    case url
    case array
    case dictionary
    case data
    case stringArray
}

extension YYZUserDefaultsExt where yyKeys.RawValue == String {
    static func set<T>(_ value: T, forKey key: yyKeys) {
        let akey = key.rawValue
        UserDefaults.standard.set(value, forKey: akey)
    }
    
    static func get<T>(valueType: YYZUserDefaultsValueType, forKey key: yyKeys) -> T {
        let akey = key.rawValue
        switch valueType {
        case .string:
            return UserDefaults.standard.string(forKey: akey) as! T
        case .integer:
            return UserDefaults.standard.integer(forKey: akey) as! T
        case .float:
            return UserDefaults.standard.float(forKey: akey) as! T
        case .double:
            return UserDefaults.standard.double(forKey: akey) as! T
        case .bool:
            return UserDefaults.standard.bool(forKey: akey) as! T
        case .url:
            return UserDefaults.standard.url(forKey: akey) as! T
        case .array:
            return UserDefaults.standard.array(forKey: akey) as! T
        case .dictionary:
            return UserDefaults.standard.dictionary(forKey: akey) as! T
        case .data:
            return UserDefaults.standard.data(forKey: akey) as! T
        case .stringArray:
            return UserDefaults.standard.stringArray(forKey: akey) as! T
        }
    }
    
    static func removeObject(forkey key:yyKeys) {
        let akey = key.rawValue
        UserDefaults.standard.removeObject(forKey: akey)
    }
}

extension UserDefaults {
    struct account: YYZUserDefaultsExt {
        enum yyKeys: String {
            case phone
            case isLogin
            case name
        }
        
    }
}


