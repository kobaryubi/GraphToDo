//
//  ApolloClientModel.swift
//  GraphToDo
//
//  Created by Masahiko Kobayashi on 2023/11/26.
//

import Foundation
import Apollo

struct ApolloClientModel {
    let client = ApolloClient(url: URL(string: "http://localhost:8080/query")!)
}
