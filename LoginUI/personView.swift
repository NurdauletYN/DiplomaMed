//
//  personView.swift
//  LoginUI
//
//  Created by macbook air on 10/20/21.
//  Copyright © 2021 Ian Solomein. All rights reserved.
//

import SwiftUI

struct personView: View {
    @State var index = 0
    
    var body: some View {
        VStack{
            
            HStack(){
                
                Button(action: {
                    
                }) {
                    
                   
                }
                
                Text("Profile")
                    .font(.title)
                    .padding()
                
                Spacer()
                
                
                VStack{
                
                            
                            Button(action: {
                                UserDefaults.standard.set(false, forKey: "status")
                                NotificationCenter.default.post(name:
                                                                    NSNotification.Name("statusChange"), object: nil)
                            }){
                                Text("Logout")
                            }
                        }
            }
            .padding()
            
            HStack{
                
                VStack(spacing: 0){
                    
                    Rectangle()
                    .fill(Color("Color"))
                    .frame(width: 80, height: 3)
                    .zIndex(1)
                    
                    
                    // going to apply shadows to look like neuromorphic feel...
                    
                    Image("nurd")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .padding(.top, 6)
                    .padding(.bottom, 4)
                    .padding(.horizontal, 8)
                    .background(Color("Color1"))
                    .cornerRadius(10)
                    .shadow(color: Color.black.opacity(0.1), radius: 5, x: 8, y: 8)
                    .shadow(color: Color.white.opacity(0.5), radius: 5, x: -8, y: -8)
                }
                
                VStack(alignment: .leading, spacing: 12){
                    
                    Text("Nurdaulet")
                        .font(.title)
                        .foregroundColor(Color.black.opacity(0.8))
                    
                    Text("co-Founder of Darmen Technology")
                        .foregroundColor(Color.black.opacity(0.7))
                        .padding(.top, 8)
                    
                    Text("n.yerkinbekov@gmail.com")
                        .foregroundColor(Color.black.opacity(0.7))
                }
                .padding(.leading, 20)
                
                Spacer(minLength: 0)
            }
            .padding(.horizontal, 20)
            .padding(.top, 10)
            
            Spacer()
            // Tab Items...
            
            ScrollView{
                VStack{
                    HStack{
                        Image("name")
                            .resizable()
                            .frame(width:70, height: 70)
                            .padding()
                        Text("Name")
                        Spacer()
                        Text("Nurdaulet")
                            .position(x: 130, y: 50)
                        Spacer()
                    }
                    .background(Color(#colorLiteral(red: 0.9269981983, green: 0.9066763259, blue: 0.9156738522, alpha: 1)))
                    
                    .cornerRadius(50)
                    .padding()
                    HStack{
                        Image("date")
                            .resizable()
                            .frame(width:70, height: 70)
                            .padding()
                            
                        
                        Text("Date of birth")
                        
                        Spacer()
                        Text("31.12.2000")
                        Spacer()
                    }
                    .background(Color(#colorLiteral(red: 0.9269981983, green: 0.9066763259, blue: 0.9156738522, alpha: 1)))
                    
                    .cornerRadius(50)
                    .padding()
                    
                    HStack{
                        Image("gender")
                            .resizable()
                            .frame(width:70, height: 70)
                            .padding()
                            
                        
                        Text("Gender")
                        
                        Spacer()
                        Text("Male")
                        Spacer()
                    }
                    .background(Color(#colorLiteral(red: 0.9269981983, green: 0.9066763259, blue: 0.9156738522, alpha: 1)))
                    
                    .cornerRadius(50)
                    .padding()
                    
                    HStack{
                        Image("person")
                            .resizable()
                            .frame(width:70, height: 70)
                            .padding()
                            
                        
                        Text("Weigth")
                        
                        Spacer()
                        Text("78kg")
                        Spacer()
                    }
                    .background(Color(#colorLiteral(red: 0.9269981983, green: 0.9066763259, blue: 0.9156738522, alpha: 1)))
                    
                    .cornerRadius(50)
                    .padding()
                    

                    HStack{
                        Image("person")
                            .resizable()
                            .frame(width:70, height: 70)
                            .padding()
                            
                        
                        Text("Height")
                        
                        Spacer()
                        Text("180")
                        Spacer()
                    }
                    .background(Color(#colorLiteral(red: 0.9269981983, green: 0.9066763259, blue: 0.9156738522, alpha: 1)))
                    
                    .cornerRadius(50)
                    .padding()
                    
                    
                        
                    
                        
                }
            }
        }.background(Color(#colorLiteral(red: 1, green: 0.9406956768, blue: 0.9494711099, alpha: 1)))
        .edgesIgnoringSafeArea(.all)
        
    }
    }


struct personView_Previews: PreviewProvider {
    static var previews: some View {
        personView()
    }
}
