//
//  MenuRowView.swift
//  Vic Pizza
//
//  Created by Sunimal Herath on 23/9/20.
//  Copyright © 2020 Sunimal Herath. All rights reserved.
//

import SwiftUI

struct MenuRowView: View {
    var body: some View {
        List(0..<5) { item in
            HStack(alignment: .top, spacing: 15) {
                Image("1_100w")
                VStack(alignment:.leading, spacing: 5) {
                    Text("Vic Chicken Pizza")
                        .font(.headline)
                        .fontWeight(.light)
                    RatingsView()
                }
                //Spacer()
            }
        }
    }
}

struct MenuRowView_Previews: PreviewProvider {
    static var previews: some View {
        MenuRowView()
    }
}

