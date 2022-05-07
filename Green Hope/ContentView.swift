//
//  ContentView.swift
//  app
//
//  Created by aluno on 19/04/22.
//

import SwiftUI

struct Denuncia: View{
    var body: some View{
        Text("fasfa")
    }
}

struct ContentView: View {
    
    var body: some View {
        
        VStack(alignment: .center){
            HStack(alignment: .center){
                Text("Green Hope")
                    .font(.largeTitle)
                    .padding()
                Spacer()
            }
            Text("Notícias")
                .font(.system(size: 40, weight: .bold, design: .rounded))
            Image("Landscape_4")
                .resizable()
                .foregroundColor(.white)
                .background(.blue)
                .aspectRatio(contentMode: .fill)
                .frame(width: 300.0, height: 250.0, alignment: .center)
                .clipped()
            
            VStack(alignment: .leading){
                Text("Título da notícia")
                    .font(.system(size: 27, weight: .bold, design: .rounded))
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam molestie condimentum lobortis. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae[...]")
                    .font(.system(size: 22, weight: .light, design: .rounded))
            }
            .padding(.horizontal, 60)
            VStack(alignment: .center){
                Button(action:{
                    print("Clicked")
                }) {
                    Text("Ver mais")
                        .foregroundColor(.black)
                        .font(.system(size: 22, weight: .light, design: .rounded))
                        .padding(13)
                        .background(Color.green.opacity(0.2))
                        .cornerRadius(30)
                }

            }
            
                Spacer()
                
                }
        TabView{
            Denuncia()
            .tabItem{
                Image(systemName: "House")
                Text("Home")
            }
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

