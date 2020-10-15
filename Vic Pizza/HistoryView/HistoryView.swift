//
//  HistoryView.swift
//  Vic Pizza
//
//  Created by Sunimal Herath on 23/9/20.
//  Copyright © 2020 Sunimal Herath. All rights reserved.
//

import SwiftUI

struct HistoryView: View {
    @State var imageID: Int = 1
    var body: some View {
        VStack{
            //ContentHeaderView()
            PageTitleView(title: "Pizza History")
            SelectedImageView(imageName: "\(imageID)_250w")
            HistoryListView(imageID: $imageID)
            Spacer()
        }
    }
}

struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            HistoryView()
            HistoryView()
                .colorScheme(.dark)                
        }
    }
}
