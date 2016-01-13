import org.springframework.web.context.support.WebApplicationContextUtils
import grails.util.Environment

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

        Environment.executeForCurrentEnvironment {
            development {
                "compass watch grails-app/assets/".execute()
            }
        }
    }

    def destroy = {
    }
}
