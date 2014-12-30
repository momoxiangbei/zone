<!doctype html>
<html>
<head>
  <meta charset="utf-8">
  <title>Momo - zone</title>
  <link href="{{ asset('css/main.css')}}" rel="stylesheet">
</head>
<body>

    <div  class="logo">
      <span class="logo_img"></span>
      <a href="/">墨墨向北</a>
      <span>zone</span>
    </div>

    <div class="defualt_header">
      <div>
        <a href="{{URL::route('blog.index')}}">技术博客</a>
        <a href="{{URL::route('notes.index')}}">碎言碎语</a>
        <a href="{{ URL::route('show.index')}}">作品展示</a>
        <a href="{{ URL::route('message.index')}}">留言板</a>
        <a href="https://github.com/momoxiangbei">github</a>
      </div>     
    </div>


    

        @yield('main')


<script src="{{asset('js/jquery-1.9.1.min.js')}}"></script>
<script src="{{asset('js/modernizr.custom.js')}}"></script>
<script src="{{asset('js/jquery.smallbig.js')}}"></script>
<script type="text/javascript">
    $(document).ready(function(){
        $("#s2b_col").small2big({
            s2bRadius : 100,
            s2bColLiRowMargin : -20,
            s2bLiBorderColor : "#B1DDE7"
        }).initS2bCol().addS2bFunction();
    });
</script>

</body>
</html>