//
//  InfoView.swift
//  00757001_eBook
//
//  Created by HungJie on 2020/10/19.
//

import SwiftUI
import UIKit
import AVFoundation
import MediaPlayer
import SafariServices

struct InfoView: View {
    
    @State var show = false
    
    var body: some View {
        NavigationView{
            List(){
                Section(header: CustomHeader2(name: "漫威官網")) {
                    VStack {
                        Button(action: {
                                
                                self.show.toggle()
                            }){
                                Image("Marvel")
                                    .resizable()
                                    .scaledToFit()
                                    .offset(y:5)
                        }
                        Text("").offset(y:3)
                    }
                    
                    .sheet(isPresented: $show){
                        SafariView(url:URL(string: "https://www.marvel.com")!)
                    }
                    .buttonStyle(PlainButtonStyle())
                }
                Section(header: CustomHeader2(name: "其他資源")) {
                    HStack{
                        Link(destination: URL(string: "https://apps.apple.com/tw/developer/marvel-entertainment/id350027742")!, label: {
                                    VStack {
                                        Image("App")
                                            .resizable()
                                            .scaledToFit()
                                    }
                        })
                        .buttonStyle(PlainButtonStyle())
                        
                        Link(destination: URL(string: "https://www.youtube.com/channel/UCvC4D8onUfXzvjTOM-dBfEA")!, label: {
                                    VStack {
                                        Image("youtube")
                                            .resizable()
                                            .scaledToFit()
                                            .offset(y: -5)
                                    }
                        })
                        .buttonStyle(PlainButtonStyle())
                        
                        Link(destination: URL(string: "https://zh-tw.facebook.com/Marvel")!, label: {
                                    VStack {
                                        Image("facebook")
                                            .resizable()
                                            .scaledToFit()
                                            .scaleEffect(1.4)
                                    }
                        })
                        .buttonStyle(PlainButtonStyle())
                    }
                }
                Section(header: CustomHeader2(name: "更換Icon")){
                    HStack {
                        Button(action: {
                            UIApplication.shared.setAlternateIconName(nil)
                        }) {
                            Image("icon0")
                                .resizable()
                                .scaledToFit()
                        }.buttonStyle(PlainButtonStyle())
                        
                        Button(action: {
                                UIApplication.shared.setAlternateIconName("icon1")
                        }) {
                            Image("icon1")
                                .resizable()
                                .scaledToFit()
                            }.buttonStyle(PlainButtonStyle())
                        
                        Button(action: {
                            UIApplication.shared.setAlternateIconName("icon2")
                        }) {
                            Image("icon2")
                                .resizable()
                                .scaledToFit()
                            }.buttonStyle(PlainButtonStyle())
                    }
                }
                Section(header: CustomHeader2(name: "音樂")){
                    ForEach(0 ..< 3) { (i) in
                        Music(name: MusicName[i])
                    }
                    
                }
            }
            .navigationBarTitle("更多資訊")
        }
    }
}

struct Music : View {
    @State var play = true
    var name : String
    let player = AVPlayer()
    let commandCenter = MPRemoteCommandCenter.shared()
    
    var body: some View{
        HStack(){
            Button(action: {
                let fileUrl = Bundle.main.url(forResource:name, withExtension: "mp3")
                let playerItem = AVPlayerItem(url: fileUrl!)
                self.player.replaceCurrentItem(with: playerItem)
                self.play.toggle()
                if self.play{
                    self.player.pause()
                }
                else{
                    self.player.play()
                }
                commandCenter.playCommand.addTarget { event in
                    if self.player.rate == 0.0 {
                            self.player.play()
                            return .success
                    }
                    return .commandFailed
                }
                                
                self.commandCenter.pauseCommand.addTarget { event in
                    if self.player.rate == 1.0 {
                            self.player.pause()
                            return .success
                    }
                    return .commandFailed
                }
            }){
                Image(systemName: play ? "play.circle.fill" : "pause.circle.fill")
                    .resizable()
                    .frame(width:40,height:40)
                    .foregroundColor(Color(red: 171/255, green: 19/255, blue: 0))
            }.buttonStyle(PlainButtonStyle())
            
            
            Text(name)
                .font(.system(size: 25))
                .fontWeight(.bold)
                .foregroundColor(.black)
                
                
            Spacer()
            
        }
        .padding(10)
        .background(Color.white)
        .cornerRadius(15)
    }
}


struct CustomHeader2: View {
    let name: String
    var body: some View {
        ZStack {
            Color(red:234/255, green: 236/255, blue: 238/255).edgesIgnoringSafeArea(.all)
            HStack {
                Text(name)
                    .font(.system(size: 20))
                    .bold()
                    .foregroundColor(Color.black)
                Spacer()
            }
            .frame(width: 370)
            Spacer()
        }.frame(width:410, height: 33)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView()
            
    }
}
