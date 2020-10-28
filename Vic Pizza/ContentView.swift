//
//  ContentView.swift
//  Vic Pizza
//
//  Created by Sunimal Herath on 12/9/20.
//  Copyright © 2020 Sunimal Herath. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var orderModel: OrderModel
    @State var isMenuDisplayed: Bool = true
    var body: some View {
        VStack {
//            ContentHeaderView()
//                .layoutPriority(2)
            Button(action: { self.isMenuDisplayed.toggle() }) {
                PageTitleView(title: "Order Pizza", isDisplayingOrder: isMenuDisplayed)
            }
            
            MenuListView(orderModel: orderModel)
                .layoutPriority(isMenuDisplayed ? 1.0 : 0.5)
            OrderListView(orderModel: orderModel)
                .animation(.spring())
                .layoutPriority(isMenuDisplayed ? 0.5 : 1.0)                
            //Spacer()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            ContentView(orderModel: OrderModel())
                //.environment(\.sizeCategory,.accessibilityExtraLarge)
            ContentView(orderModel: OrderModel())
                .environmentObject(UserPreferences())
                .colorScheme(.dark)
                .previewDevice("iPad Pro (10.5-inch)")
        }
    }
}
