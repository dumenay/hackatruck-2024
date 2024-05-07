//
//  Aula04_1.swift
//  Aula01
//
//  Created by Turma01-5 on 07/05/24.
//

import SwiftUI

struct Song : Identifiable {
    var id: Int
    var name : String
    var artist : String
    var capa : String
}

struct Aula04_1: View {
    var arrayMusicas = [
        Song(id:1, name:"Pipoca com Sal", artist:"Palhaço Caçarola", capa:"https://yt3.googleusercontent.com/P6sGD1U4U-ibNJGC6xWHz_6mwvaEcNHg_f5vA4VPUemed-F7N5fQ0jsp8-DVv4kojApjIfSs=s900-c-k-c0x00ffffff-no-rj"),
        Song(id:2, name:"Conexão Zona Sul (ft. Racionais MC)", artist:"Rarirama", capa:"https://i1.sndcdn.com/artworks-000146434973-dvvtef-t240x240.jpg"),
        Song(id:3, name:"Sou Foda", artist:"Os Avassaladores", capa:"https://i1.sndcdn.com/artworks-000473952849-w96bci-t500x500.jpg"),
        Song(id:4, name:"boppin", artist:"bxnji", capa:"https://i.ytimg.com/vi/94T7A5aOHOo/hqdefault.jpg?sqp=-oaymwEmCOADEOgC8quKqQMa8AEB-AGoA4ACwAKKAgwIABABGHIgQyhtMA8=&rs=AOn4CLBofXU1yoILh-qtoPnKu33U46g2FA"),
        Song(id:5, name:"Estrelar", artist:"A k i n a", capa:"https://lastfm.freetls.fastly.net/i/u/ar0/426de1b42a73b527fd3a11b0d95abb48.jpg"),
        Song(id:6, name:"Escalon", artist:"Anime de Japan", capa:"https://i.kfs.io/album/global/186227830,0v1/fit/500x500.jpg"),
        Song(id:7, name:"pink", artist:"deko + yameii", capa:"https://i1.sndcdn.com/artworks-C8y8KyHe7cToYsWI-XY0USg-t500x500.jpg"),
        Song(id:8, name:"HARDY BOYS", artist:"mikeeysmind", capa:"https://i.scdn.co/image/ab67616d0000b273accec479119bad9d1d1781a6"),
        Song(id:9, name:"Refrigerante com Droga", artist:"GYPE STRIKE", capa:"https://is1-ssl.mzstatic.com/image/thumb/Music116/v4/41/c1/af/41c1af15-8bd7-fe4a-543b-3b288b9ca5f7/735910658750_cover.jpg/600x600bf-60.jpg"),
        Song(id:10, name:"Musica", artist:"Artista", capa:"link")
    ]
    var body: some View {
        ZStack{
            ScrollView{
                VStack{
                    Spacer()
                    AsyncImage(url: URL(string: "https://i.pinimg.com/736x/7f/34/a0/7f34a09fee02bf4b8bdaa745416c210d.jpg" )) { image in
                        image
                            .resizable()
                        
                    } placeholder: {
                        Color.black
                    }
                    .frame(width: 200, height: 200)
                    Spacer()
                }
                Spacer()
                VStack{
                    HStack(){
                        Text("batidao stronda 2009")
                            .foregroundColor(.white)
                            .font(.system(size: 30))
                            .fontWeight(.bold)
                            .offset(x: 10)
                        Spacer()
                    }
                    HStack{
                        AsyncImage(url: URL(string: "https://conteudo.imguol.com.br/c/esporte/60/2022/08/03/iran-santana-o-luva-de-pedreiro-1659552598392_v2_450x600.jpg.webp" )) { image in
                            image
                                .resizable()
                            
                        } placeholder: {
                            Color.black
                        }
                        .frame(width: 30, height: 30)
                            .offset(x: -115, y: -5)
                        Text("diabodevil666")
                            .foregroundColor(.white)
                            .font(.system(size: 15))
                            .fontWeight(.bold)
                            .offset(x: -110, y: -5)
                    }
                }
                VStack(spacing: -3){
                    ForEach(arrayMusicas) { musica in
                        NavigationLink(destination: Aula04_1()){
                            HStack{
                                AsyncImage(url: URL(string: musica.capa)) { image in
                                    image
                                        .resizable()
                                    
                                } placeholder: {
                                    Color.black
                                }
                                .frame(width: 60, height: 60)
                                
                                Text("\(musica.name)\n\(musica.artist)")
                                    .foregroundColor(.white)
                                    .font(.system(size: 15))
                                    .fontWeight(.bold)
                                    .multilineTextAlignment(.leading)
                                Spacer()
                            }
                        }
                    }
                }
            }
        }
        .background(LinearGradient(gradient:
        Gradient(colors: [Color("verder"), Color("izcuro")]),
        startPoint: .top, endPoint: .center))
    }
}

#Preview {
    Aula04_1()
}
