//
//  OrderRowView.swift
//  Vic Pizza
//
//  Created by Sunimal Herath on 23/9/20.
//  Copyright © 2020 Sunimal Herath. All rights reserved.
//

import SwiftUI

struct OrderRowView: View {
    var body: some View {
        HStack{
            Text("Your order item here")
            Spacer()
            Text("$ 00.00")
        }
    }
}

struct OrderRowView_Previews: PreviewProvider {
    static var previews: some View {
        OrderRowView()
    }
}
