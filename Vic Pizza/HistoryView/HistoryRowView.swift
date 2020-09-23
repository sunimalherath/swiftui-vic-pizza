//
//  HistoryRowView.swift
//  Vic Pizza
//
//  Created by Sunimal Herath on 23/9/20.
//  Copyright © 2020 Sunimal Herath. All rights reserved.
//

import SwiftUI

struct HistoryRowView: View {
    var body: some View {
        HStack(alignment: .top, spacing: 15){
            Image("1_100w")
            VStack{
                Text("VIC Chicken")
            }
        }
    }
}

struct HistoryRowView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryRowView()
    }
}
