//
//  ContentView.swift
//  BuildingListAndNavigation
//
//  Created by SHUBHAM AGARWAL on 25/01/20.
//  Copyright © 2020 SHUBHAM AGARWAL. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var showFavroiteOnly = false
    @State var actressArr = actressArray
    
    var body: some View {
        NavigationView {
            
            List {
                Toggle(isOn: $showFavroiteOnly) {
                    Text("Favorite Only")
                }
                
                ForEach(actressArr.indices) { index in
                    
                    if !self.showFavroiteOnly || self.actressArr[index].isFavorite {
                        NavigationLink(destination: DetailView(actress: self.$actressArr[index])) {
                            ActressView(actress: self.actressArr[index])
                        }
                    }
                    
                }
                
            }.navigationBarTitle(Text("Actresses"))
            
//            List(actressArray, id: \.id) { actress in
//                NavigationLink(destination: DetailView(actress: actress)) {
//                    ActressView(actress: actress)
//                }
//            }.navigationBarTitle(Text("Actresses"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
