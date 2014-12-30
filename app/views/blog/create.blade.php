<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<link rel="stylesheet" type="text/css" href="{{ asset('css/bootstrap.min.css')}}">
	<link rel="stylesheet" type="text/css" href="{{ asset('css/blog.css')}}">
	<title>Momo - blog</title>
</head>
<body>

	<ol class="breadcrumb">
	  <li><a href="{{ URL::route('blog.index')}}">Home</a></li>
	  <li class="active">create</li>
	</ol>




	<div class="blog">
		{{ Form::open(array('route'=>'blog.store')) }}

		    标题：{{ Form::text('title','',array('class'=>'title')) }}	
	   		<hr>

	   		作者：{{ Form::text('author','',array('class'=>'author')) }}	
	   		<hr>	

			内容:
			{{ Form::textarea('body','',array('class'=>'body')) }}			

		    {{ Form::submit('提交',array('class'=>'btn btn-default'))}}		

	    {{ form::close()}}
	</div>


</body>
</html>