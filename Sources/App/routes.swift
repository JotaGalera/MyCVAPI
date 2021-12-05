import Vapor

func routes(_ app: Application) throws {
    let cvController = CVController()
    let apiRoutes = app.grouped("api", "v1")
    
    try apiRoutes.grouped("cvs").register(collection: cvController)
}
