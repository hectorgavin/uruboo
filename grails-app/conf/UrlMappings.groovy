class UrlMappings {

	static mappings = {
        "/"(view:"/index")
        "500"(view:'/error')
        "/api/assistants"(resources: 'assistantApi') {
            "/customers"(resources: 'customerApi')
        }
        "/api/customers"(resources: 'customerApi') {
            "/accounts"(resources: 'customerAccountApi')
            "/tasks"(resources: 'taskApi')
        }
        "/api/tasks"(resources: 'taskApi') {
            "/comments"(resources: 'commentApi')
            "/updates"(resources: 'taskUpdateLogApi', includes: ['index', 'show'])
        }
    }
}
