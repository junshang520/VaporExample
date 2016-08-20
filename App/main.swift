import Vapor

let drop = Droplet()

drop.get("/") { request in
    return "Hello World!"
}

drop.get("/name",":name") { request in
    return "Hello \(request.parameters["name"].string!)!"
}

drop.get("/view") { request in
    return try drop.view("view.html")
}

drop.serve()


