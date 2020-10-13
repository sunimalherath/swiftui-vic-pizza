//
//  MenuRowView.swift
//  Vic Pizza
//
//  Created by Sunimal Herath on 23/9/20.
//  Copyright © 2020 Sunimal Herath. All rights reserved.
//

import SwiftUI

struct MenuRowView: View {
    var menuItem: MenuItem = testMenuItem
    var body: some View {
        VStack(alignment: .leading){
            HStack(alignment: .top, spacing: 15) {
                Image("\(menuItem.id)_100w")
                    .cornerRadius(10)
                    //.border(Color("G4"),width: 2)
                    .clipShape(Capsule())
                    .shadow(color: Color.black.opacity(0.5), radius: 5, x: 0, y: 0)
                VStack(alignment:.leading, spacing: 5) {
                    Text(menuItem.name)
                        .font(.headline)
                        .fontWeight(.light)
                    RatingsView(count: menuItem.rating)
                }
                //Spacer()
            }
            Text(menuItem.description)
        }
    }
}

struct MenuRowView_Previews: PreviewProvider {
    static var previews: some View {
        MenuRowView()
    }
}

