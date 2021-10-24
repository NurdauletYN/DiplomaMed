//
//  mainUi.swift
//  LoginUI
//
//  Created by macbook air on 10/21/21.
//  Copyright © 2021 Ian Solomein. All rights reserved.
//

import SwiftUI

struct mainUi: View {
    var body: some View {
       
            TabView{
                homeView()
                    .tabItem {
                        Image(systemName: "smiley.fill")
                    }
                heartView()
                    .tabItem {
                        Image(systemName: "heart")
                    }
                
                calendarView()
                    .tabItem {
                        Image(systemName: "calendar")
                    }
                personView()
                    .tabItem {
                        Image(systemName: "person")
                    }
            }
}

struct mainUi_Previews: PreviewProvider {
    static var previews: some View {
        mainUi()
    }
}
}
