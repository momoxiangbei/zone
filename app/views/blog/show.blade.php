@extends('layouts.default')
@section('main')

<div class="blog">
    <div class="show">

        <div class="title">
        {{$article->title}}
        </div>
        
        <div  class="body">
            <textarea>
                {{$article->body}}
            </textarea>     
        </div>


        <div class="change">
            <a  href="{{ URL::route('blog.edit', $article->id) }}">修改</a>
            {{ Form::open(array('route' => array('blog.destroy', $article->id), 'method' => 'delete')) }}
                    <button class="btn" type="submit" href="{{ URL::route('blog.destroy', $article->id) }}">删除</button>
            {{ Form::close() }}  
        </div>

        <div class="comments">


            <div class="comments_leave">
                {{ Form::open(array('route'=>'comment.store') )}}
                {{ Form::textarea('body','',array('class'=>'comment-leave-text')) }}
                {{ Form::hidden('article_id', $article->id) }}
                {{ Form::submit('评论', array('class' => 'comment-leave-sub')) }}
                {{ Form::close()}}
            </div>

            
            
            <div class="comment-main">

                @foreach($comments as $comment)

                    <div class="comment-name">
                        {{$comment->name}}:                 
                    </div>

                    <div class="comment-body">
                        {{$comment->body}}
                    </div>
                    <div class="comment-delete">
                        {{ Form::open(array('route' => array('comment.destroy', $comment->id), 'method' => 'delete')) }}
                            <button class="comment-delete-button" type="submit" href="{{ URL::route('comment.destroy', $comment->id) }}">删除</button>
                            {{ Form::hidden('article_id', $article->id) }}
                        {{ Form::close() }}
                    </div>
                @endforeach
                
            </div>


        </div>

    </div>
</div>

@stop