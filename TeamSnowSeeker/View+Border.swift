//
//  View+Border.swift
//  TeamSnowSeeker
//
//  Created by Clinton Perry on 11/18/20.
//

import Foundation
import SwiftUI

extension View {

    func clipBorder<S: Shape>(_ shape: S, lineWidth: CGFloat) -> some View {

        self.clipShape(shape)

            .overlay(shape.stroke(Color.black, lineWidth: lineWidth))

    }

}
