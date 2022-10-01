//
//  ContentView.swift
//  YTMusic
//
//  Created by User16 on 2022/10/1.
//

import SwiftUI

struct ContentView: View {
    @State private var scale: Double = 0
    @State private var selectedIndex = 0
    let roles = ["Song", "Video"]
    var body: some View {
        NavigationView {
            ZStack (alignment: .topLeading) {
                VStack(spacing:10) {
                    VStack {
                        Image("MusicArt")
                            .resizable()
                            .frame(width:350, height:350)
                    }
                    Spacer()
                    HStack(spacing: 130) {
                        Button(action:{}, label:  {
                            Image(systemName: "hand.thumbsdown")
                        })
                        .padding(.leading)
                        .foregroundColor(.white)
                        .font(.system(size:25))
                        
                        Text("怪物")
                            .font(.largeTitle)
                            .bold()
                            .foregroundColor(.white)
                        
                        Button(action:{}, label:  {
                            Image(systemName: "hand.thumbsup")
                        })
                        .padding(.trailing)
                        .foregroundColor(.white)
                        .font(.system(size:25))
                    }
                    VStack {
                        Text("YOASOBI")
                            .font(.caption)
                            .foregroundColor(.white)
                    }
                    Spacer()
                    VStack {
                        Slider(value: $scale, in:0...5)
                            .accentColor(.white)
                    }
                    HStack(spacing: 340){
                        Text("0:00")
                            .foregroundColor(.white)
                            .font(.caption)
                        Text("3:26")
                            .foregroundColor(.white)
                            .font(.caption)
                    }
                    Spacer()
                    HStack (spacing: 25){
                        Button(action:{}, label:  {
                            Image(systemName: "shuffle")
                        })
                        .padding(.trailing)
                        .font(.system(size: 25))
                        .foregroundColor(.white)
                        Button(action:{}, label:  {
                            Image(systemName:"backward.end.fill")
                        })
                        .padding(.trailing)
                        .font(.system(size: 25))
                        .foregroundColor(.white)
                        
                        Button(action:{}, label:  {
                            Image(systemName:"play.circle.fill")
                        })
                        .font(.system(size: 55))
                        .foregroundColor(.white)
            
                        Button(action:{}, label:  {
                            Image(systemName:"forward.end.fill")
                        })
                        .padding(.leading)
                        .font(.system(size: 25))
                        .foregroundColor(.white)
                        
                        Button(action:{}, label:  {
                            Image(systemName:"repeat")
                        })
                        .padding(.leading)
                        .font(.system(size: 25))
                        .foregroundColor(.white)
                        
                    }
                    HStack (spacing:95) {
                        Button ("UP NEXT") {
                        } .font(.system(size: 20))
                        Button ("LYRICS") {
                        } .font(.system(size: 20))
                        Button ("RELATED") {
                        } .font(.system(size: 20))
                    }
                    .background(Rectangle()
                                    .size(width: 500,height:100)
                                    .foregroundColor(Color(red: 88/255, green: 13/255, blue: 14/255)))
                }
            }
            .aspectRatio(1, contentMode: .fit)
            .padding()
            .toolbar{
            ToolbarItem(placement:.navigationBarLeading) {
                VStack(alignment:.leading) {
                    Button(action: {}, label: {
                        Image(systemName: "chevron.down")
                        })
                    .padding(.leading)
                    .foregroundColor(.white)
                    }
                }
                ToolbarItem(placement:.principal) {
                    VStack {
                        Picker("Song", selection: $selectedIndex) {
                            Text(roles[0]).tag(0)
                            Text(roles[1]).tag(1)
                        }
                        .frame(width: 200)
                        .opacity(0.8)
                    }
                }
            ToolbarItem(placement:.navigationBarTrailing) {
                VStack(alignment:.trailing) {
                    Button(action: {}, label: {
                        Image(systemName: "ellipsis")
                        })
                    .padding(.trailing)
                    .foregroundColor(.white)
                    }
                }
            }
            .background(Image("redla")).scaledToFill()
        }
        .accentColor(.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
