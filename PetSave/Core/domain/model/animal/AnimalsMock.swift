
//
//import Foundation
//
//struct Animal {
//  
//}
//
// struct AnimalMock: Codable {
//  let animals: [Animal]
//}
//  
//  private func loadAnimals() -> [Animal] {
//    guard let url = Bundle.main.url(forResource: "AnimalMock", withExtension: "json"),
//          let data = try? Data(contentsOf: url) else {return [] }
//    
//    let decoder = JSONDecoder()
//    decoder.keyDecodingStrategy = .convertFromSnakeCase
//    let jsonMock = try? decoder.decode(AnimalMock.self, from: data)
//    return jsonMock?.animals ?? []
//  }
//
//extension Animal {
//  static let mosk = loadAnimals()
//}
//
//  
//  
