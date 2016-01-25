import grails.util.Environment
import org.springframework.web.context.support.WebApplicationContextUtils

class BootStrap {

    def grailsApplication

    def init = { servletContext ->
        // Register Custom Object Marshaller
        def springContext = WebApplicationContextUtils.getWebApplicationContext(servletContext)
        springContext.getBean('customObjectMarshaller').register()

        // Allow partial domain objects
        grailsApplication.domainClasses.each{ domainClass ->
            domainClass.metaClass.partial = { fields ->
                def result = [:]
                fields?.each {
                    result[it] = delegate[it]
                }
                return result
            }
        }

        // Auto-compile SCSS on dev
        Environment.executeForCurrentEnvironment {
            development {
                "compass watch grails-app/assets".execute()
            }
        }
    }
    def destroy = {
    }
}
