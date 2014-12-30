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
	  <li class="active">edit</li>
	</ol>


<div class="blog">
    {{ Form::model($article, array('method' => 'put','route' => array('blog.update', $article->id))) }}

	    标题：{{ Form::text('title') }}	
   		<hr>

   		作者：{{ Form::text('author')}}	
   		<hr>	

		<p>内容:</p>
		{{ Form::textarea('body') }}	
   
        {{ Form::submit('更改',array('class'=>'btn btn-default btn-change'))}}	


    {{ Form::close() }}
 
</div>

</body>
</html>