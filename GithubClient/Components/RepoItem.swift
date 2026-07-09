//
//  RepoItem.swift
//  GithubClient
//
//  Created by Usuario invitado on 9/7/26.
//
import SwiftUI
struct RepoItem: View {
    var body: some View {
        HStack {
            Image (uiImage: .gitHubLogo)
                .resizable()
                .frame(width: 80, height: 80)
            VStack (alignment: .leading){
                Text("Nombre del Repositorio")
                    .font(.title2)
                    .foregroundStyle(.red)
                Text("Lorem Iptum es un textro de relleno para representar la descripcion de un repo")
                    .foregroundStyle(.black)
                    .font(.caption)
                    .padding(.top, 0.2)
                HStack {
                    Text("Lenguaje")
                        .foregroundStyle(.red)
                    Spacer()
                    Text("Swift")
                }
                .font(.caption2)
                .padding(.top, 0.1)
            }
            .padding(.leading)
        }
    }
}

#Preview {
    RepoItem()
}
