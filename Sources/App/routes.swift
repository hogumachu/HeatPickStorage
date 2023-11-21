import Vapor

func routes(_ app: Application) throws {
    app.get { req async throws in
        try await req.view.render("index", [
            "title": "iOS04-HeatPick"
        ])
    }

    app.get("hello") { req async -> String in
        "Hello, world!"
    }
}
