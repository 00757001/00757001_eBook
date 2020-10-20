//
//  heroView.swift
//  00757001_eBook
//
//  Created by HungJie on 2020/10/16.
//

import SwiftUI

struct heroView: View {
    var body: some View {
        NavigationView {
            List{
                ForEach(0..<heros.count) { (i) in
                    NavigationLink(destination: heroIntro(image: heros[i].icon, name: heros[i].Cname, intro: heros[i].intro)) {
                            heroList(icon: heros[i].icon, Cname: heros[i].Cname, Ename: heros[i].Ename)
                        }
                }
                
            }
            .navigationBarTitle("英雄介紹")
        }
        
    }
}

struct heroList : View {
    
    var icon : String
    var Cname : String
    var Ename : String
    
    var body: some View{
        
        HStack(spacing:20){
            Image(icon)
                .resizable()
                .scaledToFit()
                .frame(width: 125, height: 125)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.red, lineWidth: 3))
                .shadow(radius: 5)
                .offset(x:5)
            
            VStack(alignment:.center){
                Text(Cname)
                    .font(.system(size: 20))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                
                Text(Ename)
                    .font(.system(size: 20))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
            }.frame(width: 165, height: 30, alignment: .center)
            
            Spacer()
        }
        .background(Color.black)
        .cornerRadius(10)
    }
}

struct heroIntro: View{
    
    @State private var heroshow = false
    var image: String
    var name : String
    var intro :String
    
    var body: some View{
        VStack{
            VStack{
                if heroshow{
                    Image(image+"0")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 400, height: 400)
                        .border(Color.black,width:5)
                        .shadow(radius: 15)
                        .transition(.opacity)
                }
                
            }.animation(.linear(duration: 1))
            
            
            Text(intro)
                .padding(10)
                .font(.system(size: 20))
        }
        .navigationTitle(name)
        
        .onAppear {
            self.heroshow = true
        }
        .onDisappear {
            self.heroshow = false
                    
        }
    }
}




struct heroView_Previews: PreviewProvider {
    static var previews: some View {
        heroView()
            .preferredColorScheme(.light)
    }
}
