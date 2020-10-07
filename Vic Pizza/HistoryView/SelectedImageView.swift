//
//  SelectedImageView.swift
//  Vic Pizza
//
//  Created by Sunimal Herath on 7/10/20.
//  Copyright © 2020 Sunimal Herath. All rights reserved.
//

import SwiftUI

struct SelectedImageView: View {
    var imageName: String
    var body: some View {
        Image(imageName)
            .resizable()
            .scaledToFit()
            .cornerRadius(30)
            .shadow(color: Color.black.opacity(0.5), radius: 5, x: 0, y: 0)
    }
}

struct SelectedImageView_Previews: PreviewProvider {
    static var previews: some View {
        SelectedImageView(imageName: "1_250w")
    }
}
