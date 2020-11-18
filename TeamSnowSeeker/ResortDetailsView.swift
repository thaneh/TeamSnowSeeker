//
//  ResortDetailsView.swift
//  TeamSnowSeeker
//
//  Created by Joshua Buhler on 11/18/20.
//

import SwiftUI

struct ResortDetailsView: View {
    
    let resort:Resort
    
    var size: String {
        switch resort.size {
        case 1:
            return "Small"
        case 2:
            return "Average"
        default:
            return "Large"
        }
    }
    
    var price:String {
        return String(repeating: "💰", count: resort.price)
    }
    
    var body: some View {
        VStack {
            Text("Size: \(size)")
            Text("Price: \(price)")
        }
    }
}

struct ResortDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ResortDetailsView(resort: Resort.example)
    }
}
