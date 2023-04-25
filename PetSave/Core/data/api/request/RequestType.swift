
import Foundation

enum RequestType: String {
  case GET
  case POST
}

enum NetworkError: Error {
  case invalidURL
}
