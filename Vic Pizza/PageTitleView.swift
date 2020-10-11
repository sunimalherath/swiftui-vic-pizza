//
//  PageTitleView.swift
//  Vic Pizza
//
//  Created by Sunimal Herath on 23/9/20.
//  Copyright © 2020 Sunimal Herath. All rights reserved.
//

import SwiftUI

struct PageTitleView: View {
    var title: String
    var isDisplayingOrder: Bool! = nil
    var body: some View {
        HStack {
            Spacer()
            Text(title)
                .font(.largeTitle)
                .fontWeight(.heavy)
        }
        .padding(.trailing)
        .overlay(
            Image(systemName: isDisplayingOrder ?? false ? "chevron.up.square" : "chevron.down.square")
                .font(.title)
                .foregroundColor(isDisplayingOrder != nil ? Color("G4") : .clear)
                .padding(),
            alignment: .leading
        )
        .foregroundColor(Color("G4"))
        .background(Color("G1"))
    }
}

struct PageTitleView_Previews: PreviewProvider {
    static var previews: some View {
        PageTitleView(title: "Order Pizza")
    }
}
