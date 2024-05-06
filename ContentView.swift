//
//  Aula03_1.swift
//  Aula01
//
//  Created by Turma01-5 on 06/05/24.
//

import SwiftUI

struct Aula03_1: View {
    var body: some View {
        TabView{
            RosaView()
                .tabItem{
                    Label("Rosa", systemImage: "paintbrush")
                }
            AzulView()
                .tabItem{
                    Label("Azul", systemImage: "paintpalette")
                }
            CinzaView()
                .tabItem{
                    Label("Cinza", systemImage: "paintbrush.pointed")
                }
            ListView()
                .tabItem{
                    Label("Account", systemImage: "list.bullet")
                }
        }
        .onAppear(){
            UITabBar.appearance().backgroundColor = .white
        }
    }
}
    
#Preview {
    Aula03_1()
}
