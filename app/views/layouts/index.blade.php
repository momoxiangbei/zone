@extends('layouts.default')

@section('main')
<div class="show_line">
	<a href="{{URL::route('logout')}}" class="logout">登出<a/>
	<a href="{{URL::route('login')}}" class="login">主人登陆</a>
</div>

<div class="index0">
	<p>我要瘦成一道闪电</p>
	<p>我要早睡早起多运动</p>
	<p>我要天天开心</p>
	<p>我要做个好老婆</p>
	<p>我要出去旅游，吃小吃，晒太阳</p>
	<p>我要好好学习</p>
	<p>......</p>
	<p>梦想太多，时间太少，生命不息，折腾不止</p>
	<p>--By 墨墨向北</p>
</div>

<div class="music_words">
	<div class="index1">
		<div class="img1"></div>
		<p>风吹雨成花时间追不上白马<br><br>
		你年少掌心的梦话 依然紧握着么<br></p>
	</div>
	<div class="index2">
		<div class="img2"></div>
		<p>我最亲爱的 你过的怎么样</p>
		<p>没我的日子里 你别来无恙</p>
	</div>
	<div class="index3">
		<div class="img3"></div>
		<p>河山大好 出去走走</p>
		<p>碧海蓝天吹吹风</p>
		<p>河山大好 出去走走</p>
		<p>别窝在家当懒虫</p>
	</div>
	<div class="index4">
		<div class="img4"></div>
		<p>你给我听好 想哭就要笑 其实你知道 烦恼会解决烦恼</p>		
	</div>
	<div class="index5">
		<div class="img5"></div>
		<p>有的人说不清哪里好 但就是 谁都替代不了</p>
	</div>
	
</div>


@stop