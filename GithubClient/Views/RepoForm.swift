//
//  RepoForm.swift
//  GithubClient
//
//  Created by Usuario invitado on 8/7/26.
//

import SwiftUI

struct RepoForm: View {
    @State private var repoName: String = ""
    @State private var repoDescription: String = ""
    var body: some View {
        NavigationStack{
            VStack{
                TextField("",
                    text: $repoName,
                    prompt: Text("Nombre del repositorio")
                    .foregroundStyle(.gray.opacity(0.6))
                )
         
                    .textFieldStyle(.roundedBorder)
                    .padding(.vertical)
                
                TextField("",
                     text: $repoDescription)
                    .textFieldStyle(.roundedBorder)
                    .lineLimit(4...10)
                    .padding(.vertical)
                
                Spacer()
                
                Button(action: {
                    print("Boton aplastado")
                }){
                    Label("Guardar Repo", systemImage:
                    "square.and.arrow.down")
                    .padding(.all, 4)
                }
                .buttonStyle(.borderedProminent)
                
            }
            .navigationTitle("Formulario de Repositorio")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    RepoForm()
}
