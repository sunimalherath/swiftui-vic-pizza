//
//  RatingsView.swift
//  Vic Pizza
//
//  Created by Sunimal Herath on 23/9/20.
//  Copyright © 2020 Sunimal Herath. All rights reserved.
//

import SwiftUI

struct RatingsView: View {
    var count: Int = 4
    
    var rating: [String] {
        let symbolName = "\(count).circle"
        return Array(repeating: symbolName, count: count)
    }
    
    var body: some View {
        HStack {
            ForEach(rating, id:\.self) {item in
                Image(systemName: item)
                    .font(.headline)
                    .foregroundColor(Color("G4"))
            }
        }
    }
}


struct RatingsView_Previews: PreviewProvider {
    static var previews: some View {
        RatingsView(count: 5)
    }
}
