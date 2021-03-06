//
//  Home.swift
//  boilermake7ios
//
//  Created by Chirayu Garg on 1/25/20.
//  Copyright © 2020 boilermake7ios. All rights reserved.
//

import SwiftUI

struct Home: View {
    var user: StructUser
    var orders: [StructOrder]
    var body: some View {
        NavigationView {
            List {
                VStack(alignment: .leading) {
                    Text("Hi, There!")
                        .font(.largeTitle)
                    Text("What would you like to eat?")
                        .font(.title)
                }
                //Spacer()
                VStack(alignment: .leading) {
                    Text("New Orders")
                        .font(.largeTitle)
                        //.multilineTextAlignment(.leading)
                    ScrollView (.horizontal) {
                        HStack(alignment: .top) {
                            Vendor1()
                                .frame(width: 320.0, height: 200.0)
                                .offset(y: -15)
                            Vendor2()
                                .frame(width: 320.0, height: 200.0)
                                .offset(y: -15)
                        }
                        
                    }
                    
                   //Spacer()
                }
                //Spacer()
                VStack(alignment: .leading) {
                    Text("Your Orders")
                        .font(.largeTitle)
                        .multilineTextAlignment(.leading)
                    VStack {
                        CardList(Orders: self.orders)
                            .frame(width: 350.0, height: 90.0)
                    }
//                    Card()
//                        //.padding(12.0)
//                        .frame(width: 380.0, height: 90.0)
//                    Card()
//                        //.padding(12.0)
//                        .frame(width: 380.0, height: 90.0)
//                    Card()
//                        //.padding(12.0)
//                        .frame(width: 380.0, height: 90.0)
//                    Card()
//                        //.padding(12.0)
//                        .frame(width: 380.0, height: 90.0)
                }
            }
            .navigationBarTitle(Text("Home"))
            //.navigationBarHidden(true)
        }
        //.navigationBarTitle(Text("Hi, There!"))
    }
}

//struct Home_Previews: PreviewProvider {
//    static var previews: some View {
//        //Home()
//    }
//}
