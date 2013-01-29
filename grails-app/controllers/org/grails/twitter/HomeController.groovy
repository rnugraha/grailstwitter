package org.grails.twitter

class HomeController {

	def timelineService

	def index() {
		// get all message list
		def messages = Status.list()

		// return as statusMessages
		[statusMessages: messages]
	}

	def user() {
		// get params from view
		def username = params.username
		def realName = params.realName

		// get message from specific username
		def messages = timelineService.getTimelineForUser(username)

		// return message as statusMessage and the owner's realname
		[statusMessages: messages, realName: realName]
	}
}
