@extends('layouts.default')
@section('main')
<div class="message">

	<div class="message_welcome">

		<h2>主人寄语</h2>
		<span>^ ~ ^ 既然来了就留点什么吧 ^ ~ ^ </span>		

		<div class="message_leave">
			{{ Form::open(array('route'=>'message.store') )}}
			{{ Form::textarea('body')}}
			{{ Form::submit('留言', array('class' => 'message-leave-sub')) }}
			{{ Form::close()}}
		</div>

	</div>


	@foreach($messages as $message)
		<div class="message_notes">

			<ul class="message_body">

				<li class="floot"> {{{ $num++ }}}楼:</li>

				<li class="body">{{ $message->body }}</li>

				<li class="date">{{ $message->created_at}}</li>
				
			</ul>

<!-- 			<div class="message_handle">
			  <ul>
			    <li><a href="/" >引用</a>
			       <ul>
			         <li>
                        {{ Form::open(array('route' => array('message.destroy', $message->id), 'method' => 'delete')) }}
                    		<button class="message-destroy" type="submit" href="{{ URL::route('message.destroy', $message->id) }}">删除</button>
            			{{ Form::close() }}

			   		 </li>
			         <li><a href="/" >禁言</a></li>
			       </ul>
			    </li>
			  </ul>
			</div>	 -->
			<div class="message-delete">
							 
                {{ Form::open(array('route' => array('message.destroy', $message->id), 'method' => 'delete')) }}
            		<button class="message-destroy" type="submit" href="{{ URL::route('message.destroy', $message->id) }}">删除</button>
    			{{ Form::close() }}
			   		
			</div>

		</div>
	@endforeach	

	  	<div class="messages-links">
            {{ $messages->links() }}        
        </div>

</div>

@stop
