class UrlMappings {

	static mappings = {
        "/"(view:"/index")
        "500"(view:'/error')
        "/api/assistant"(resources: 'assistantApi')
        "/api/customer"(resources: 'customerApi')
    }
}
