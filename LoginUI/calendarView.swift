//
//  calendarView.swift
//  LoginUI
//
//  Created by macbook air on 10/20/21.
//  Copyright © 2021 Ian Solomein. All rights reserved.
//

import SwiftUI
import MapKit

struct calendarView: View {
    
    @ObservedObject var locationManager = LocationManager()
    @State private var landmarks: [Landmark] = [Landmark]()
    @State private var search: String = ""
    @State private var tapped: Bool = false
    @State var searchtext = ""
    @State var isSearching = false
    
    private func getLandmarks() {
        
        let request = MKLocalSearch.Request()
                request.naturalLanguageQuery = search
                
                let search = MKLocalSearch(request: request)
                search.start { (response, error) in
                    if let response = response {
                        
                        let mapItems = response.mapItems
                        self.landmarks = mapItems.map {
                            Landmark(placemark: $0.placemark)
                }
                
            }
            
        }
        
    }
    
    
    var body: some View {
        VStack {
            ZStack {
                if #available(iOS 14.0, *) {
                    MapView(landmarks: landmarks).ignoresSafeArea()
                } else {
                    // Fallback on earlier versions
                }
            }
                VStack{
                        HStack {
                            
                                        HStack {
                                            VStack{
                                                TextField("Search", text: $search, onEditingChanged: { _ in }){self.getLandmarks()}
                                                
                                            }.padding(.leading, 35)
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
                                                    Button(action: { search = "" }, label: {
                                                        Image(systemName: "xmark.circle.fill")
                                                            .padding(.vertical)
                                                    }
                                                    )
                                                    
                                                }
                                            }
                                                .padding(.horizontal, 34)
                                                .foregroundColor(.gray)
                                        )
                            
                            HStack { if isSearching {
                                Button(action: {
                                    isSearching = false
                                        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
                                    
                                }, label: {
                                    Text("Cancel").foregroundColor(.black)
                                        .frame(height: 54.3)
                                        .frame(maxWidth: 100)
                                        .background(
                                            RoundedRectangle(cornerRadius: 20, style: .continuous).fill(Color.gray)
                                                
                                        )
                                        .cornerRadius(12)
                                        .padding(.trailing)
                                        .padding(.leading, -16)
                                })
                                    .transition(.move(edge: .trailing))
                                    .animation(.spring())
                            }}}}.padding(.vertical, -100)
        }
            }

    }

struct calendarView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
