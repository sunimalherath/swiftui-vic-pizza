//
//  RootTabView.swift
//  Vic Pizza
//
//  Created by Sunimal Herath on 15/10/20.
//  Copyright © 2020 Sunimal Herath. All rights reserved.
//

import SwiftUI

struct RootTabView: View {
    var body: some View {
        TabView{
            ContentView(orderModel: OrderModel())
                .tabItem{
                    Image(systemName: "cart")
                    Text("Order")
                }
            HistoryView()
                .tabItem {
                    Image(systemName: "book")
                    Text("History")
                }
        }
        .accentColor(Color("B1"))
    }
}

struct RootTabView_Previews: PreviewProvider {
    static var previews: some View {
        RootTabView().environmentObject(UserPreferences())
    }
}
