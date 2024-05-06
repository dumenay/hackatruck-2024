//
//  ListView.swift
//  Aula01
//
//  Created by Turma01-5 on 06/05/24.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        NavigationView {
            List{
                NavigationLink(destination: RosaView()){
                    Text("Rosa")
                }
                NavigationLink(destination: AzulView()){
                    Text("Azul")
                }
                NavigationLink(destination: CinzaView()){
                    Text("Cinza")
                }
            }
            .navigationTitle("List")
        }
    }
}

#Preview {
    ListView()
}
