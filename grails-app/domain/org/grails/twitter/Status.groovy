package org.grails.twitter

import org.grails.twitter.auth.Person

class Status {
    String message
    Person author
    Date dateCreated
	Boolean isPublic

    transient jmsService
    transient afterInsert = {
        jmsService.send 'grailstwitter.status', author.username
    }
}
