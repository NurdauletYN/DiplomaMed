//
//  homeView2.swift
//  LoginUI
//
//  Created by macbook air on 10/22/21.
//  Copyright © 2021 Ian Solomein. All rights reserved.
//

import SwiftUI

struct homeView2: View {
    @State var showLoginView: Bool = false
    var body: some View {
                VStack {
                    if showLoginView {
                        homeView()
                    } else {
                        Button(action: {self.showLoginView = true}, label: {
                            Image(systemName: "house.circle.fill").frame(width: 200, height: 200)
                        })
                    }
                }
            }
    }


struct homeView2_Previews: PreviewProvider {
    static var previews: some View {
        homeView2()
    }
}
