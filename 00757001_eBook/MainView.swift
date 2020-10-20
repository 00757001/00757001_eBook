//
//  MainView.swift
//  00757001_eBook
//
//  Created by HungJie on 2020/10/14.
//

import SwiftUI
import UIKit
import SafariServices

struct MainView: View {
    let comics = 7
    var body: some View {
        NavigationView{
            List{
                Section(header: CustomHeader1(name: "經典漫畫封面")) {
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 13){
                            ForEach(1 ..< comics + 1) { (i) in
                                Image("comic\(i)")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width:200)
                                    .animation(.default)
                                
                            }
                        }
                        .padding(.horizontal,5)
                    }
                }
                Section(header: CustomHeader1(name: "主要英雄團體")){
                    ForEach(0..<groups.count) { (i) in
                        NavigationLink(destination: groupIntroList(image: groups[i].image, name: groups[i].Cname, intro: groups[i].intro,url: groups[i].url, people: groups[i].people,enemies:groups[i].enemies)) {
                                groupList(image: groups[i].cover, Cname: groups[i].Cname, Ename: groups[i].Ename)
                            }
                    }
                    
                    
                }
            }
            .navigationTitle("Homepage")
        }
        
    }
}


struct groupList : View {
    var image : String
    var Cname : String
    var Ename : String
    
    var body: some View{
        
        VStack{
            Image(image)
                .resizable()
                .scaledToFit()
                .frame(height: 200)
                .clipped()
 
            Group{
                Text(Cname)
                    .font(.system(size: 20))
                    .fontWeight(.bold)
                    
                
                Text(Ename)
                    .font(.custom("Marvel-Regular",size:25))
                    .fontWeight(.bold)
            }
            .offset(y:-2)
                
        }
        .scaledToFill()
        .background(LinearGradient(gradient: Gradient(colors: [Color.white, Color.red]), startPoint: UnitPoint(x: 0, y: 0), endPoint: UnitPoint(x: 1, y: 1)))
        .cornerRadius(10)
        
        
    }
}

struct groupIntroList : View {
    
    @State private var PhotoShow = false
    @State var show = false
    @State private var rotateDegree: Double = 0
    
    var image : String
    var name : String
    var intro : String
    var url : String
    var people : Int
    var enemies : [String] = []
    
    
    
    var body: some View{
        
        List{
            Image(image)
                .resizable()
                .scaledToFit()
                .scaleEffect(0.8)
                .rotationEffect(.degrees(rotateDegree))
                          .animation(
                            .easeIn(duration: 2)
                          )
                          .onAppear {
                                rotateDegree = 360
                        }
                
            Section(header: Text("主要登場角色")) {
                TabView{
                    ForEach(0..<people){ (i) in
                        Image(image + "\(i)")
                            .resizable()
                            .scaledToFit()
                            .border(Color.red,width:3)
                    }
                }
                .background(Color.black)
                .cornerRadius(15)
                .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.black, lineWidth: 2))
                .frame(height: 300)
                .tabViewStyle(PageTabViewStyle())
                
            }
            
            Section(header: Text("團體介紹")){
                Text(intro)
                    .padding(10)
                    
                    .font(.system(size: 20))
            }
            Section(header: Text("大反派照片牆")){
                ScrollView(.vertical){
                    let columns = [
                        GridItem(),
                        GridItem()
                    ]
                    LazyVGrid(columns : columns){
                        ForEach(enemies.indices){ (i) in
                            VStack{
                                Image(image + "\(i+people)")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height:280)
                                    .clipped()
                                Text(enemies[i])
                                    .font(.system(size: 22))
                                    .fontWeight(.bold)
                            }
                        }
                    }
        
                }   
            }
            Section(header: Text("更多資料")){
                Button(action: {
                        self.show.toggle()
                    }){
                        Image("wiki")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 100, height: 100)
                        Text("維基百科")
                    }
                .sheet(isPresented: $show){
                        SafariView(url:URL(string: url)!)
                }
                .buttonStyle(PlainButtonStyle())
            }
        }
        .navigationTitle(name)
        
        
    }
}

struct CustomHeader1: View {
    let name: String
    var body: some View {
        ZStack {
            Color(red: 84/255, green: 153/255, blue: 199/255).edgesIgnoringSafeArea(.all)
            HStack {
                Text(name)
                    .font(.system(size: 25))
                    .bold()
                    .foregroundColor(Color.black)
                Spacer()
            }
            .frame(width: 370)
            Spacer()
        }.frame(width:410, height: 33)
    }
}

struct SafariView: UIViewControllerRepresentable {
    let url: URL
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) -> SFSafariViewController {
        return SFSafariViewController(url: url)
    }
    
    func updateUIViewController(_ uiViewController: SFSafariViewController,
                                context: UIViewControllerRepresentableContext<SafariView>) {
        
    }
    
}



struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
            
    }
}
