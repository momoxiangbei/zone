@extends('layouts.default')
@section('main')

<div class="blog">

		<div class="blog-new">
			<a href="{{URL::route('blog.create')}}">+ blog</a>
		</div>

	    @foreach($articles as $article)
		<ul class="blog-main">

			<li class="index-title">
				<span>[</span>
				<a href="{{URL::route('blog.show',$article->id)}}">{{$article->title}}</a> 
				<span>]</span>
			</li>

			<li class="index-author">作者: {{$article->author}}  </li>

            <li class="index-body">{{$article->body}}</li>
			
			<li class="index-others">
				<span>{{$article->updated_at}}</span>
<!-- 				<span>阅读数</span><span class="through">{{$article->through}}</span>
		        <span>赞</span><span class="zan">{{$article->zan}}</span>	 -->			
			</li>

		</ul>
	    @endforeach
     
        <div class="blog-links">
            {{ $articles->links() }}        
        </div>
</div>
