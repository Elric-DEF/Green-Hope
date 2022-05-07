//
//  Denuncias.swift
//  Green Hope
//
//  Created by aluno on 19/04/22.
//

import SwiftUI

struct Denuncias: View {
    @State var input: String = ""
    @FocusState var textFieldEnabled: Bool
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                /*HStack(alignment: .center){
                    Text("Green Hope")
                        .font(.largeTitle)
                        .padding()
                    Spacer()
                }
                */
                    
                VStack(alignment: .leading){
                    Text("Faça uma denúncia:")
                        .font(.system(size: 22, weight: .light, design: .rounded))
                    TextField(
                        "Insira uma denúncia aqui",
                        text: $input
                    )
                    .focused($textFieldEnabled)
                    Divider()
                        .frame(height: 1.5)
                        .background(Color.blue)
                        .padding(.bottom, 25)
                    Text("Adicione uma foto da denúncia:")
                        .padding(.bottom, 10)
                    Button(action:{
                        print("Clicked")
                    }) {
                        Image(systemName: "plus")
                            .padding()
                            .foregroundColor(.white)
                            .background(.blue)
                            .clipShape(Circle())
                        
                    }
                    
                    Text("Caso deseje fazer uma ligação:")
                        .padding(.top, 25)
                        .padding(.bottom, 1)
                    Text("""
    0800-61-8080
    0800-275-2233
    """)
                }
                .padding()
                
                Spacer()
                    .navigationTitle("Denuncias")
                
                .toolbar {
                    ToolbarItemGroup(placement: .bottomBar) {
                        NavigationLink(
                            destination: {
                                ContentView()
                            },
                            label: {
                                Image(systemName: "doc.fill.badge.plus")
                                    .padding()
                                    .foregroundColor(.white)
                                    .background(.black)
                                    .clipShape(Circle())
                            }
                        )
                        Spacer()
                        NavigationLink(
                            destination: {
                                Denuncias()
                            },
                            label: {
                                Image(systemName: "doc.fill.badge.plus")
                                    .padding()
                                    .foregroundColor(.white)
                                    .background(.blue)
                                    .clipShape(Circle())
                            }
                        )
                        Spacer()
                        NavigationLink(
                            destination: {
                                Sobre()
                            },
                            label: {
                                Image(systemName: "doc.fill.badge.plus")
                                    .padding()
                                    .foregroundColor(.white)
                                    .background(.black)
                                    .clipShape(Circle())
                            }
                        )
                        
                    }
                }
        }
        }
        
}
}
struct Denuncias_Previews: PreviewProvider {
    static var previews: some View {
        Denuncias()
    }
}


