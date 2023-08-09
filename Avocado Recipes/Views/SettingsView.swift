//
//  SettingsView.swift
//  Avocado Recipes
//
//  Created by Matteo Buompastore on 08/08/23.
//

import SwiftUI

struct SettingsView: View {
    
    //MARK: - PROPERTIES
    @State private var enableNotifications = true
    @State private var backgroundRefresh = false
    
    //MARK: - BODY
    var body: some View {
        VStack {
            VStack(alignment: .center, spacing: 5) {
                
                Image("avocado")
                    .resizable()
                    .scaledToFit()
                    .padding(.top)
                    .frame(width: 100, height: 100, alignment: .center)
                    .shadow(color: Color("ColorBlackTransparentLight"), radius: 8, x: 0, y: 4)
                
                Text("Avocados".uppercased())
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                    .foregroundColor(Color("ColorGreenAdaptive"))
                
                
                
            } //: VSTACK
            .padding()
            
            Form {
                
                //MARK: - SECTION 1
                Section {
                    Toggle(isOn: $enableNotifications) {
                        Text("Enable notifications")
                    }
                    Toggle(isOn: $backgroundRefresh) {
                        Text("Background Refresh")
                    }
                } header: {
                    Text("General Settings")
                } //: SECTION 1
                
                Section {
                    if enableNotifications {
                        HStack {
                            Text("Product")
                                .foregroundColor(.gray)
                            
                            Spacer()
                            
                            Text("Avocado Recipes")
                        }
                        
                        HStack {
                            Text("Compatibility")
                                .foregroundColor(.gray)
                            
                            Spacer()
                            
                            Text("iPhone & iPad")
                        }
                        
                        HStack {
                            Text("Developer")
                                .foregroundColor(.gray)
                            
                            Spacer()
                            
                            Text("Mat Buompy")
                        }
                        
                        HStack {
                            Text("Designer")
                                .foregroundColor(.gray)
                            
                            Spacer()
                            
                            Text("Mat Buompy")
                        }
                        
                        HStack {
                            Text("Version")
                                .foregroundColor(.gray)
                            
                            Spacer()
                            
                            Text("1.0.0")
                        }
                        
                    } else {
                        HStack {
                            Text("Personal Message")
                                .foregroundColor(.gray)
                            
                            Spacer()
                            
                            Text("Happy Coding!")
                        }
                    }
                    
                    
                    
                } header: {
                    Text("Application")
                } //: SECTION 2

            }
            .tint(.accentColor)
            
        } //: VSTACK
        .frame(maxWidth: 640)
    }
}


//MARK: - PREVIEW
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
