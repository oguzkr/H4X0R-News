//
//  Extensions.swift
//  H4X0R News
//
//  Created by Oğuz Karatoruk on 16.06.2022.
//

import SwiftUI

extension Binding where Value == Bool {
    public func not() -> Binding<Bool> {
        return Binding<Bool>(get:{ !self.wrappedValue },
            set: { self.wrappedValue = !$0})
    }
}
