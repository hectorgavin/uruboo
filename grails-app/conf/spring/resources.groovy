// Place your Spring DSL code here

import grails.rest.render.json.JsonRenderer
import grails.rest.render.json.JsonCollectionRenderer

beans = {
    for (domainClass in grailsApplication.domainClasses) {
        "${domainClass.shortName}JSONRenderer"(JsonRenderer, domainClass.clazz) {
            excludes = ['class']
        }
        "${domainClass.shortName}JSONCollectionRenderer"(JsonCollectionRenderer, domainClass.clazz) {
            excludes = ['class']
        }
    }
}
