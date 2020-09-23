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
            Image("pizza-logo")
                .resizable()
                .frame(width: 200.0, height: 200.0)
                .scaledToFit()
            Text("Order Pizza")
                .font(.largeTitle)
            Text("Menu")
            
            List(0..<5) { item in
                HStack(alignment: .top, spacing: 15) {
                    Image("1_100w")
                    VStack {
                        Text("Vic Chicken Pizza")
                        HStack {
                            ForEach(0..<4) {item in
                                Image("Pizza Slice")
                            }
                        }
                    }
                    Spacer()
                }
            }
            
            Text("Your Order")
            
            List(0..<5) { item in
                HStack{
                    Text("Your order item here")
                    Spacer()
                    Text("$ 00.00")
                }
            }
            
            Spacer()
        }
    .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            ContentView()
            ContentView().previewDevice("iPad Pro (10.5-inch)")
        }
    }
}
