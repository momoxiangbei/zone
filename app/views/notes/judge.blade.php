<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
	<link rel="stylesheet" type="text/css" href="{{asset('css/main.css')}}">
		<title>Momo - zone</title>
	</head>
	<body>

		<div class="notes-judge">
			你没有权限哦
			<br>
			只有主人授权才能在本页面发说说

			<div class="notes-back">						
				<a href="{{URL::route('notes.index')}}">返回</a>
			</div>

			<div class="notes-momo">
				<a href="{{URL::route('login')}}">主人登陆</a>
			</div>
		</div>
	
	</body>
</html>

	