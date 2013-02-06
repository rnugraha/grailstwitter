<div class="statusMessage" id="message_${messageCounter}">
	<strong>
		<span class="author">
			${statusMessage.author.realName}
		</span>
	</strong>
	<span>@${statusMessage.author.username}</span>
	<div>${statusMessage.message}</div>
	<div class="statusMessageTime"><prettytime:display date="${statusMessage.dateCreated}" /></div>
</div>
