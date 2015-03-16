class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/api/calculate/"(controller: "Selector", action: "calculate")

        "/"("/index.html")
        "500"(view:'/error')
	}
}
