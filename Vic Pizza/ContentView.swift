//
//  ContentView.swift
//  Vic Pizza
//
//  Created by Sunimal Herath on 12/9/20.
//  Copyright © 2020 Sunimal Herath. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ContentHeaderView()
            PageTitleView(title: "Order Pizza")
            MenuListView()
            OrderListView()
            
            Spacer()
        }
    .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            ContentView()
                //.environment(\.sizeCategory,.accessibilityExtraLarge)
            ContentView()
                .colorScheme(.dark)
                .previewDevice("iPad Pro (10.5-inch)")
        }
    }
}
