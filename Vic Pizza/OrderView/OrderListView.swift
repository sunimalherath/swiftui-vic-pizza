//
//  OrderListView.swift
//  Vic Pizza
//
//  Created by Sunimal Herath on 23/9/20.
//  Copyright © 2020 Sunimal Herath. All rights reserved.
//

import SwiftUI

struct OrderListView: View {
    var body: some View {
        VStack {
            Text("Your Order")
            
            List(0..<5) { item in
                HStack{
                    Text("Your order item here")
                    Spacer()
                    Text("$ 00.00")
                }
            }
        }
    }
}

struct OrderListView_Previews: PreviewProvider {
    static var previews: some View {
        OrderListView()
    }
}
