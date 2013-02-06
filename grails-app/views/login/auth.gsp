<head>
<meta name='layout' content='main-login' />
<title>Login</title>
<style type='text/css' media='screen'>
#login {
	margin:15px 0px; padding:0px;
	text-align:center;
}
#login .inner {
	width:260px;
	margin:0px auto;
	text-align:left;
	padding:10px;
	border-top:1px dashed #499ede;
	border-bottom:1px dashed #499ede;
	background-color:#EEF;
}
#login .inner .fheader {
	padding:4px;margin:3px 0px 3px 0;color:#2e3741;font-size:14px;font-weight:bold;
}
#login .inner .cssform p {
	clear: left;
	margin: 0;
	padding: 5px 0 8px 0;
	padding-left: 105px;
	border-top: 1px dashed gray;
	margin-bottom: 10px;
	height: 1%;
}
#login .inner .cssform input[type='text'] {
	width: 120px;
}
#login .inner .cssform label {
	font-weight: bold;
	float: left;
	margin-left: -105px;
	width: 100px;
}
#login .inner .login_message {color:red;}
#login .inner .text_ {width:120px;}
#login .inner .chk {height:12px;}
</style>
</head>

<body>
	<g:if test='${flash.message}'>
		<div class='login_message alert alert-error'>
			<a href="auth" class="close" data-dismiss="alert">&times;</a>
			${flash.message}
		</div>
	</g:if>
	<form action='${postUrl}' method='POST' id='loginForm' autocomplete='off'>
		<p>
			<label for='username'>Login ID</label>
			<input type='text' name='j_username' id='username' />
		</p>
		<p>
			<label for='password'>Password</label>
			<input type='password' name='j_password' id='password' />
		</p>
		<p>
			<label for='remember_me' class="checkbox">Remember me
				<input type='checkbox' class='chk' name='${rememberMeParameter}' id='remember_me'
				<g:if test='${hasCookie}'>checked='checked'</g:if> />
			</label>
		</p>
		<p>
			<input type='submit' value='Login' id="login_button" class="btn"/>
		</p>
	</form>
	<p class="smaller-font">
	    (Valid user names are graeme, jeff, peter and burt. Password is password.)
	</p>
<script type='text/javascript'>
<!--
(function(){
	document.forms['loginForm'].elements['j_username'].focus();
})();
// -->
</script>
</body>
