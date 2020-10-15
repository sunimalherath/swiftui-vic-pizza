//
//  HistoryRowView.swift
//  Vic Pizza
//
//  Created by Sunimal Herath on 23/9/20.
//  Copyright © 2020 Sunimal Herath. All rights reserved.
//

import SwiftUI

struct HistoryRowView: View {
    var historyItem: HistoryItem
    var body: some View {
        HStack(alignment: .top, spacing: 15){
            Image("\(historyItem.id)_100w")
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .shadow(color: Color.black.opacity(0.5), radius: 5, x: 0, y: 0)
            VStack{
                Text(historyItem.name)
                    .font(.title)
            }
            Spacer()
        }.overlay(
            Image(systemName: "chevron.right.square")
                .foregroundColor(Color("G3"))
                .font(.title)
                .padding(),
            alignment: .trailing
        )
    }
}

struct HistoryRowView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryRowView(historyItem: HistoryModel().historyItems[0])
    }
}
