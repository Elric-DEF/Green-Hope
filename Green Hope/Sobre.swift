//
//  Sobre.swift
//  Green Hope
//
//  Created by aluno on 19/04/22.
//

import SwiftUI

struct Sobre: View {
    var body: some View {
        NavigationView{
            VStack(alignment: .leading){
                
                Text("Nós somos uma empresa desenvolvendo uma aplicação de fácil utilização para o usuário, sem fins lucrativos voltada a proteção do meio ambiente. Nosso app é capaz de apresentar notícias atualizadas sobre desmatamentos criminosos que estão acontecendo no território brasileiro, além disso se tem a opção de fazer denúncias escritas e por imagens e ainda contactar órgãos de proteção ambiental de sua preferência.")

            }
            .navigationTitle("Sobre o app")
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
                                .background(.black)
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
                                .background(.blue)
                                .clipShape(Circle())
                        }
                    )
                    
                }
            }
        }
    }
}

struct Sobre_Previews: PreviewProvider {
    static var previews: some View {
        Sobre()
    }
}
