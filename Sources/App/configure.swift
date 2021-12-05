import Vapor

// configures your application
public func configure(_ app: Application) throws {
    // uncomment to serve files from /Public folder
    let fileMiddleware = FileMiddleware(
        publicDirectory: app.directory.publicDirectory
    )
    app.middleware.use(fileMiddleware)

    // register routes
    try routes(app)
}
