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
                        Text("Home").font(.system(size: 30, weight: .bold, design: .rounded))
                        Image(systemName: "house")
                    }
                ContactView()
                    .tabItem {
                        Text("Pills").font(.system(size: 30, weight: .bold, design: .rounded))
                        Image(systemName: "pills")
                    }
                
                calendarView()
                    .tabItem {
                        Text("Map").font(.system(size: 30, weight: .bold, design: .rounded))
                        Image(systemName: "map")
                    }
                personView()
                    .tabItem {
                        Text("Profile").font(.system(size: 30, weight: .bold, design: .rounded))
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
