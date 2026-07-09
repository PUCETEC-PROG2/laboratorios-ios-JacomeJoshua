//
//  Profile.swift
//  GithubClient
//
//  Created by Usuario invitado on 8/7/26.
//

import SwiftUI

struct Profile: View {
    var body: some View {
        NavigationStack{
            VStack{
                Text("Joshua Jacome")
                    .font(.title)
                Image(uiImage: .gitHubLogo)
                    .resizable()
                    .scaledToFit()
                Text("joshuajacomeruiz")
                    .font(.headline)
                    .padding(.vertical)
                Text("Est es un descripcion del perfil o bueno un texto quemado para poder defnir la plantilla del texto que va a estar aqui de forma  sencilla")
                    .font(.caption)
            }
            .padding()
            .navigationTitle("Perfiles")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    Profile()
}
