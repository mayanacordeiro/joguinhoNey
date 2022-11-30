//
//  ContentView.swift
//  teste
//
//  Created by mcor on 22/11/22.
//

import SwiftUI
import SpriteKit

struct ContentView: View {
    
    let screenWidth = UIScreen.main.bounds.width
    let screenHeight = UIScreen.main.bounds.height
    
    var myscene: SKScene{
        let scene = MyScene()
        scene.size = CGSize(width: screenWidth, height: screenHeight)
        scene.scaleMode = .aspectFill
        return scene
    }
//    @State private var tapped: Bool = false
    
    var body: some View {
        VStack{
            SpriteView(scene: myscene)
                //.edgesIgnoringSafeArea(.all)
        }
        
//        ZStack{
//            Image("Jogo2")
//                .resizable()
//                .aspectRatio(contentMode: .fit)
//                .gesture(TapGesture(count: 1)
//                    .onEnded({ () in
//                        print("tapped 2 times")
//                    })
//                )
            
            //.frame(width: 1000 , height: 700)
//            Rectangle()
//
//                .frame(height: 100)
//                .foregroundColor(.white)
//                .overlay(HStack {
//                    Image(systemName: "star.fill")
//                        .foregroundColor(.green)
//                    Image(systemName: "star.fill")
//                        .foregroundColor(.pink)
//                    Image(systemName: "star.fill")
//                        .foregroundColor(.green)
//                    Image(systemName: "star.fill")
//                        .foregroundColor(.pink)
//                    Image(systemName: "star.fill")
//                        .foregroundColor(.green)
//                }) .padding(100)
//                .offset(y: 350)
//
//                        Button(action: {
//                            print("Home")
//                        }) {
//                            VStack{
//                                Image(systemName: "house")
//                                    .foregroundColor(.red)
//                                Text("Home")
//                                    .font(.system(size: 20))
//                                    .fontWeight(.heavy)
//                                    .foregroundColor(.red)
//                                    //.padding(.horizontal)
//                            }
//                        }
//                        .background(Color.pink)
//                        .offset(x: -650, y: -350)
//
//                        Button(action: {
//                            print("Dica")
//                        }) {
//                            VStack{
//                                Image(systemName: "house")
//                                    .foregroundColor(.blue)
//                                Text("Dica")
//                                    .font(.system(size: 20))
//                                    .fontWeight(.heavy)
//                                    .foregroundColor(.blue)
//                                    //.padding(.horizontal)
//                            }
//                        }
//                        .background(Color.pink)
//                        .offset(x: 650, y: -350)
//
//                    }
            
        }
   }
    

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
