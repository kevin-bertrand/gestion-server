//
//  String.swift
//  
//
//  Created by Kevin Bertrand on 24/11/2022.
//

import Fluent
import Foundation

extension String {
    var fieldKey: FieldKey {
        .string(self)
    }
    
    var toDate: Date? {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        return formatter.date(from: self)
    }
}
