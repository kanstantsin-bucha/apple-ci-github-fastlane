#!/usr/bin/swift

import Foundation

let environment = ProcessInfo.processInfo.environment
let fileManager = FileManager.default
let configPath = "\(fileManager.currentDirectoryPath)/Desktop/Generated"
let path = "\(configPath)/AppConfig.swift"

print("Writing app config to: \(path)")
let url = URL(fileURLWithPath: path)
let newLine = "\n"
let tab = "    "

func readConfigValue(for key: String) throws -> String {
    guard let value = environment[key] else {
        throw ScriptError.noValueForKeyFound(key)
    }
    return value
}

struct AppConfigDescription {
    let name: String
    let properties: [Property]
        
    func composeProtocol() -> String {
        var protocolString = "protocol \(name) {" + newLine
        for property in properties {
            for description in property.descriptions {
                protocolString += tab + "/// " + description + newLine
            }
            protocolString += tab + property.protocolProperty + newLine
        }
        protocolString += "}" + newLine
        return protocolString
    }
    
    func composeImplementation() -> String {
        var implString = "struct \(name)Impl: \(name) {" + newLine
        for property in properties {
            implString += tab + property.structProperty + newLine
        }
        implString += "}" + newLine
        return implString
    }
}

struct Property {
    let name: String
    let value: Value
    let descriptions: [String]
    
    var structProperty: String {
        "let \(name) = " + value.valueString
    }
    
    var protocolProperty: String {
        "var \(name): \(value.typeString) { get }"
    }
}

extension Property {
    enum Value {
        case string(String)
        case bool(Bool)
        
        var valueString: String {
            switch self {
            case .string(let value):
                return "\"\(value)\""
            case .bool(let value):
                return "\(value)"
            }
        }
        
        var typeString: String {
            switch self {
            case .string:
                return "String"
            case .bool:
                return "Bool"
            }
        }
    }
}

do {
    var properties = [Property]()
    
    properties.append(.init(
        name: "sentryDsn",
        value: .string(try readConfigValue(for: "SENTRY_DSN")),
        descriptions: ["Used to configure sentry sdk"])
    )
    
    let config = AppConfigDescription(name: "AppConfig", properties: properties)

    var file = ""
    file += config.composeProtocol() + newLine
    file += config.composeImplementation()
    
    try? fileManager.createDirectory(at: URL(fileURLWithPath: configPath), withIntermediateDirectories: true)
    guard let data = file.data(using: .utf8) else {
        throw ScriptError.stringToDataFailed
    }
    try data.write(to: url)
} catch {
    print("Failed to write config: \(error)")
    exit(1)
}

enum ScriptError: Error, LocalizedError {
    case stringToDataFailed
    case noValueForKeyFound(String)
    
    var errorDescription: String? {
        switch self {
        case .stringToDataFailed:
            return "Swift code string failed to convert into the .utf8 data"
        case .noValueForKeyFound(let key):
            return "No value for the \(key) key found in the environment"
        }
    }
}
                               
print("Success!")
exit(0)
