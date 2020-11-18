//
//  ContentView.swift
//  TeamSnowSeeker
//
//  Created by Thane Heninger on 11/18/20.
//

import SwiftUI

struct ContentView: View {
    let resorts:[Resort] = Resort.allResorts
    
    var body: some View {
        NavigationView {
            List(resorts) { resort in
                NavigationLink(destination: Text(resort.name)) {
                    Image(resort.country)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 40, height: 25)
                        .clipBorder(RoundedRectangle(cornerRadius: 5), lineWidth: 1)

                    VStack(alignment: .leading) {
                        Text(resort.name)
                            .font(.headline)
                        Text("\(resort.runs) runs")
                            .foregroundColor(.secondary)
                    }
                }
            }
            .navigationBarTitle("Resorts")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
