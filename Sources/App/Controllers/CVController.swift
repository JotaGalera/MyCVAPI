import Vapor

class CVController {
    
    struct CV: Content {
        let id: Int
        let name: String
        let description: String
        let birthday: String
        let imagePath: String
    }
    
    static let CVs = [
        CV(id: 0,
           name: "Christian",
           description: "Happy person",
           birthday: "01/12/90",
           imagePath: "Public/christian.png"),
        CV(id: 1,
           name: "Carmen",
           description: "Happy person",
           birthday: "02/10/88",
           imagePath: "Public/carmen.png"),
        CV(id: 2,
           name: "Charles",
           description: "Sad person",
           birthday: "13/06/95",
           imagePath: "Public/charles.png")
    ]
    
    func getCVs(req: Request) -> [CV] {
        return Self.CVs
    }
}

extension CVController:  RouteCollection {
    func boot(routes: RoutesBuilder) throws {
        routes.get("", use: getCVs)
    }
}
