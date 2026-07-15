//
//  RepoListViewController.swift
//  GithubClient
//
//  Created by Usuario invitado on 15/7/26.
//

import Foundation
@MainActor
class RepoListViewController: ObservableObject{
    @Published var repos: [Repository] = []
    @Published var errorMsg: String?
    @Published var isloading: Bool = false
    
    private let GithubService: GithubService
    init( service: GithubService = .shared){
        self.GithubService = service
    }
    func loadRepos() async {
        isloading = true
        do {
            repos = try await GithubService.getRepositories()
            
        } catch {
            self.errorMsg = error.localizedDescription
        }
        isloading = false
    }
}
