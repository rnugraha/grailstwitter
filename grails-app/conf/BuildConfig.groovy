grails.project.class.dir = "target/classes"
grails.project.test.class.dir = "target/test-classes"
grails.project.test.reports.dir = "target/test-reports"
//grails.project.war.file = "target/${appName}-${appVersion}.war"
grails.project.dependency.resolution = {
    // inherit Grails' default dependencies
    inherits("global") {
        // uncomment to disable ehcache
        // excludes 'ehcache'
    }
    log "warn" // log level of Ivy resolver, either 'error', 'warn', 'info', 'debug' or 'verbose'
    repositories {
        grailsPlugins()
        grailsHome()
        grailsCentral()
        
        mavenRepo 'http://dist.gemstone.com/maven/release'

        // uncomment the below to enable remote dependency resolution
        // from public Maven repositories
        //mavenLocal()
        mavenCentral()
        //mavenRepo "http://snapshots.repository.codehaus.org"
        //mavenRepo "http://repository.codehaus.org"
        //mavenRepo "http://download.java.net/maven/2/"
        //mavenRepo "http://repository.jboss.com/maven2/"
    }
    dependencies {
        // specify dependencies here under either 'build', 'compile', 'runtime', 'test' or 'provided' scopes eg.
        // runtime 'mysql:mysql-connector-java:5.1.5'

        test 'org.codehaus.geb:geb-spock:0.7.2'
        test "org.spockframework:spock-grails-support:0.7-groovy-2.0"
        test("org.seleniumhq.selenium:selenium-htmlunit-driver:2.21.0") {
            exclude "xml-apis"
        }
    }
    
    plugins {
        build ":tomcat:$grailsVersion"
        
        compile ':activemq:0.1'
        compile ":hibernate:$grailsVersion"
        compile ':jms:1.0'
        compile ':jquery:1.8.3'
        compile ':searchable:0.6.4'
        compile ':spring-security-core:1.2.7.3'
        test ':geb:0.7.2'
        test ':spock:0.7', {
            exclude "spock-grails-support"
        }
        compile ":cache:1.0.0.RC1"
        test ':functional-test:1.2.7'
    }
    
}
