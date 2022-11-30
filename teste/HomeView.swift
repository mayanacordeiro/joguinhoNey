//
//  HomeView.swift
//  teste
//
//  Created by mcor on 24/11/22.
//

import SwiftUI

struct HomeView: View {
    let columns = [
        GridItem(.fixed(400), spacing: 30),
        GridItem(.fixed(400), spacing: 30),
        GridItem(.fixed(400), spacing: 30),
        GridItem(.fixed(400), spacing: 30)
    ]
    
    var body: some View {
        HStack{
            ScrollView(.horizontal) {
                LazyVGrid(columns: columns) {
                    Circle().frame(width: 300, height: 300)
                    Circle().frame(width: 300, height: 300)
                    Circle().frame(width: 300, height: 300)
                    Circle().frame(width: 300, height: 300)
                }
            }
            
        }
    }
}



struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
