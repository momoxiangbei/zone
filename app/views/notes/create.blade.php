<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<link rel="stylesheet" type="text/css" href="{{ asset('css/bootstrap.min.css')}}">
	<link rel="stylesheet" type="text/css" href="{{ asset('css/blog.css')}}">
	<title>Momo - notes</title>
</head>
<body>

	<div class="blog">
		{{ Form::open(array('route'=>'notes.store')) }}
			<br>

			图片：{{ Form::text('img','images/notes/notes.jpg',array('class'=>'title')) }}	
	   		
	   		<hr>

		    标题：{{ Form::text('title','',array('class'=>'title')) }}	
	   		
	   		<hr>	

			内容:
			{{ Form::textarea('body','',array('class'=>'body')) }}

			<hr>

		    心情：{{ Form::text('mood','',array('class'=>'title')) }}				

		    {{ Form::submit('提交',array('class'=>'btn btn-default'))}}		

	    {{ form::close()}}
	</div>


</body>
</html>