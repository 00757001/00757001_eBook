




//
//  ContentView.swift
//  00757001_eBook
//
//  Created by HungJie on 2020/10/14.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            MainView()
                .tabItem{
                    Image(systemName: "house.fill")
                    Text("主頁")
                }
            heroView()
                .tabItem{
                    Image(systemName: "person.3.fill")
                    Text("角色介紹")
                }
            InfoView()
                .tabItem{
                    Image(systemName: "info.circle.fill")
                    Text("更多")
                }
        }
        .accentColor(Color(red: 171/255, green: 19/255, blue: 0))
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.light)
    }
}

