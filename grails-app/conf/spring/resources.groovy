// Place your Spring DSL code here

import com.uruboo.*
import grails.rest.render.json.JsonRenderer
import grails.rest.render.json.JsonCollectionRenderer

beans = {
    assistantJSONRenderer(JsonRenderer, Assistant) {
        excludes = ['class']
    }
    assistantJSONCollectionRenderer(JsonCollectionRenderer, Assistant) {
        excludes = ['class']
    }

    customerJSONRenderer(JsonRenderer, Customer) {
        excludes = ['class']
    }
    customerJSONCollectionRenderer(JsonCollectionRenderer, Customer) {
        excludes = ['class']
    }
}
