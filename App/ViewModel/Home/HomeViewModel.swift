//
//  HomeViewModel.swift
//  App
//
//  Created by Shunya Yamada on 2021/01/07.
//

import Combine
import Core

final class HomeViewModel: ObservableObject {
    
    private let client: APIClient
    private var cancellables: Set<AnyCancellable> = []
    
    @Published var items: [QiitaItem] = []
    
    init(client: APIClient = APIClient.shared) {
        self.client = client
        
        let itemsStream = client.call(with: ItemsRequest(page: 1))
            .receive(on: RunLoop.main)
            .sink { (result) in
                if case .failure(let error) = result {
                    print(error)
                }
            } receiveValue: { [weak self] value in
                self?.items = value
            }
        
        cancellables = [itemsStream]
    }
}
