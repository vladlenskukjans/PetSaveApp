

import Foundation

protocol ApiManagerProtocol {
  func perform(_ request: RequestProtocol, authToken: String) async throws -> Data
  func requestToken() async throws -> Data
}

class ApiManager: ApiManagerProtocol {
  
  private let urlSession: URLSession
  
  init(urlSession: URLSession = URLSession.shared) {
    self.urlSession = urlSession
  }
//
//  func perform(_request: RequestProtocol, authToken: String) async throws -> Data {
//    return Data()
//  }
//
  func perform(_ request: RequestProtocol, authToken: String = "") async throws -> Data {
    let (data, response) = try await urlSession.data(for: request.createURLRequest(authToken: authToken))
    guard let httpResponse = response as? HTTPURLResponse,
          httpResponse.statusCode == 200 else { throw  NetworkError.invalidServerResponse }
    return data
  }
}
