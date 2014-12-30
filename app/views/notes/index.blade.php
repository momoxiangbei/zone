@extends('layouts.default')
@section('main')

	<div class="focus" id="focus">
		<div class="left">
			<ul>
				<li class="active" style="opacity:1; filter:alpha(opacity=100);"><p>图一</p><img src="images/1.jpg"/></li>
				<li><p>图二</p><img src="images/2.jpg"/></li>
				<li><p>图三</p><img src="images/3.jpg"/></li>
				<li><p>图四</p><img src="images/4.jpg"/></li>
			</ul>
		</div>
		<div class="right">
			<ul>
				<li class="active"><i class="i1"></i>碎<span>小日子</span></li>
				<li><i class="i2"></i>言<span>小梦想</span></li>
				<li><i class="i3"></i>碎<span>小情绪</span></li>
				<li><i class="i4"></i>语<span>小坚持</span></li>
			</ul>
		</div>
	</div>

	<div class="notes-words">
		<p>愿你与这个世界温暖相拥 愿你被这个世界温柔相待</p>
		<p>陌上花开 一路向北</p>
	</div>

	<div class="notes-create">
		<a href="{{URL::route('notes.create')}}">添加</a>
	</div>
	
	<div class="notes-main">
		<ul>
		@foreach($notes as $note)
			<li>
				<img src="{{$note->img}}">
				<div class="note-delete">
					{{ Form::open(array('route' => array('notes.destroy', $note->id), 'method' => 'delete')) }}
	                    <button class="note-delete-button" type="submit" href="{{ URL::route('notes.destroy', $note->id) }}">&nbsp;×&nbsp;</button>
	            	{{ Form::close() }}
            	</div>
			    <p>{{ $note->title}}</p>
			    <div class="body">{{ $note->body}}</div>
			    <span class="day">{{ $note->created_at}}</span>
			    <span class="heart">{{ $note->mood}}</span>
			</li>
		@endforeach
		</ul>
	</div>	
<script src="{{asset('js/nodes.jquery.min.js')}}"></script>
<script src="{{asset('js/notes.js')}}"></script>

@stop