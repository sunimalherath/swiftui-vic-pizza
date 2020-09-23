//
//  RatingsView.swift
//  Vic Pizza
//
//  Created by Sunimal Herath on 23/9/20.
//  Copyright © 2020 Sunimal Herath. All rights reserved.
//

import SwiftUI

struct RatingsView: View {
    var body: some View {
        HStack {
            ForEach(0..<4) {item in
                Image("Pizza Slice")
            }
        }
    }
}


struct RatingsView_Previews: PreviewProvider {
    static var previews: some View {
        RatingsView()
    }
}
