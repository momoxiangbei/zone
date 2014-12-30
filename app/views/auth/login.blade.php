<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
<link rel="stylesheet" type="text/css" href="{{ asset('css/bootstrap.min.css') }}">
<link rel="stylesheet" type="text/css" href="{{ asset('css/main.css')}}">
	<title>无标题</title>
</head>
<body>


	<div class="login_width">
	
	{{ Form::open(array('action' => 'AuthController@postLogin')) }}
		<div>
			{{ Form::text('username', '', array('class' => 'form-control','placeholder'=>'Username')) }}
		</div>
		<div>
			{{ Form::password('password', array('class' => 'form-control','placeholder'=>'Password')) }}
		</div>
		<div>
			<input type="checkbox" value="remember-me"> Remember me
		</div>
		<div class="submit">
			{{ Form::submit('Login', array('class' => 'btn btn-sm btn-login btn-block')) }}
		</div>
	{{ Form::close() }}

	</div>

</body>
</html>

