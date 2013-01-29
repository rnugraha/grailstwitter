package org.grails.twitter

import grails.plugins.springsecurity.Secured

import org.grails.twitter.auth.Person

@Secured('IS_AUTHENTICATED_FULLY')
class StatusController {

    def statusService
    def timelineService
    def springSecurityService

    def index() {
        def messages = timelineService.getTimelineForUser(springSecurityService.principal.username)
        [statusMessages: messages]
    }

    def updateStatus(String message, String isPublic) {

		// by default status is always true
	    def isMsgPublic = true;

	    // change to false if user select No
	    if (isPublic == "N") isMsgPublic = false;

        statusService.updateStatus(message, isMsgPublic)
        def messages = timelineService.getTimelineForUser(springSecurityService.principal.username)
        
        def content = twitter.renderMessages messages: messages
        render content
    }

    def follow(long id) {
        statusService.follow id
        redirect action: 'index'
    }
}
