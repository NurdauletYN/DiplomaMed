//
//  heartView.swift
//  LoginUI
//
//  Created by macbook air on 10/20/21.
//  Copyright © 2021 Ian Solomein. All rights reserved.
//

import SwiftUI

struct heartView: View {
    @State var searchtext = ""
    @State var isSearching = false
    var body: some View {
        
           
          
               NavigationView {
               ScrollView {
                   
                   HStack {
                        
                       HStack {
                           TextField("Search", text: $searchtext)
                               .padding(.leading, 35)
                       }
                       .padding()
                       .background(Color(.systemGray5))
                       .cornerRadius(20.0)
                       .padding(.horizontal)
                       .onTapGesture(perform: {
                           isSearching = true
                       })
                       .overlay(
                           HStack{
                           Image(systemName: "magnifyingglass")
                               Spacer()
                               if isSearching{
                                   Button(action: { searchtext = "" }, label: {
                                       Image(systemName: "xmark.circle.fill")
                                           .padding(.vertical)
                                   }
                                   )
                                   
                               }
                           }
                               .padding(.horizontal, 36)
                               .foregroundColor(.gray)
                       )
                       if isSearching {
                           Button(action: {
                               isSearching = false
                               searchtext = ""
                               
                                   UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
                               
                           }, label: {
                               Text("Cancel")
                                   .padding(.trailing)
                                   .padding(.leading, -16)
                           })
                               .transition(.move(edge: .trailing))
                               .animation(.spring())
                       }

                   }
                   

                   ForEach((0..<20).filter({ "\($0)".contains(searchtext) ||  searchtext.isEmpty }), id: \.self) { num in
                       
                       HStack {
                           Text("\(num)")
                               Spacer()
                       }.padding()
                       
                       Divider()
                           .background(Color(.systemGray4))
                           .padding(.leading)
                   }
               }
               
               }
           }
       }


struct heartView_Previews: PreviewProvider {
    static var previews: some View {
        heartView()
    }
}
