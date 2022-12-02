//
//  File.swift
//  
//
//  Created by Justin Purnell on 11/22/22.
//

import Foundation

public func archive(_ library: Library, to path: URL = .userDirectory) {
    let encoder = JSONEncoder()
    let libraryData = encoder.encode(library)
    let libraryString = String(data: libraryData, encoding: .utf8)
    libraryString.write(toFile: path, atomically: true, encoding: .utf8)
}

public func load(from path: URL) -> Library {
    let decoder = JSONDecoder()
    let library = decoder.decode(Library.self, from: Data(contentsOf: path, options: [.mappedIfSafe]))
    return library
}
