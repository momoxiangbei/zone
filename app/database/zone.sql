-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2014-12-22 12:10:04
-- 服务器版本： 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `zone`
--

-- --------------------------------------------------------

--
-- 表的结构 `articles`
--

CREATE TABLE IF NOT EXISTS `articles` (
`id` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `through` int(11) NOT NULL,
  `zan` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=26 ;

--
-- 转存表中的数据 `articles`
--

INSERT INTO `articles` (`id`, `title`, `body`, `author`, `through`, `zan`, `created_at`, `updated_at`) VALUES
(19, 'PDO详解', 'PDO中包含三个预定义类\r\n\r\nPDO类 代表PHP和数据库之间的连接\r\n\r\n常用：\r\n\r\nprepare  准备一条SQL语句 返回联合结果集PDOStatement\r\n\r\nexec  执行一条SQL语句返回影响的行数\r\n\r\nquery  执行一条SQL语句返回一个结果集\r\n\r\nPDOStatement类 代表预处理语句和语句执行后的联合结果集\r\n\r\n常用：\r\n\r\nexec 执行一条预处理语句\r\n\r\nPDOexception类 是对exception异常处理的简单重写\r\n\r\n\r\n仿SQL注入\r\n\r\n三步\r\n\r\nprepare() -> bindParam() -> execute()\r\n\r\n原理：通过把传入的参数转换为需要的类型拼接到原来的SQL语句中 最后写入数据库中\r\n\r\n\r\nPDO效率问题\r\n\r\n增删改查方面： 效率比Mysql低一点\r\n\r\n负载方面：PDO开启长连接后负载高于MySQL且比较稳定\r\n\r\n迁移方面：实际应用中绝大部分程序是不会进行数据库的迁移的，而且每种数据库的语法和优化不一致，PDO无法做到一处编写，到处应用\r\n\r\n推荐在新的应用中使用PDO，旧的应用中没有必要进行重构\r\n\r\n\r\n注意：\r\n\r\nPDO从MySQL查询的数据都是String类型，如果真的对类型有需要，要转换格式\r\n\r\n\r\n持续更新中。。。', '墨墨向北', 0, 0, '2014-12-18 20:34:54', '2014-12-18 20:34:54'),
(21, 'cookie路径问题', '今天弄个简单的小项目 可是kookie就是不能传值 弄了很久终于找到原因了\r\n\r\n笔者的目录结构\r\n\r\nproject目录包括user和code\r\n\r\nuser下的index.php 获取的值不传到user下的文件中\r\n\r\n\r\n1、服务器端每次访问的cookie是每次请求头中发送给服务器端的\r\n\r\n2、客户端每次请求只发送当前路径下和“直系”关系的父路径的cookie（父路径的页面是不能访问子路径和兄弟路径的cookie的）\r\n\r\n3、setcookie如果不设置路径，默认为当前页面的路径，父亲路径的页面是无法访问的\r\n', '墨墨向北', 0, 0, '2014-12-18 20:45:24', '2014-12-18 20:45:24'),
(22, ' linux 修改终端用户名@...等 提示符', '修改.bashrc，个人比较喜欢简洁的提示符，各位可以根据自己的喜爱来修改。  \r\n  \r\n  \r\n# ~/.bashrc: executed by bash(1) for non-login shells.  \r\n# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)  \r\n# for examples  \r\n  \r\n# If not running interactively, don''t do anything  \r\n[ -z "$PS1" ] && return  \r\n  \r\n# don''t put duplicate lines in the history. See bash(1) for more options  \r\n# ... or force ignoredups and ignorespace  \r\nHISTCONTROL=ignoredups:ignorespace  \r\n  \r\n# append to the history file, don''t overwrite it  \r\nshopt -s histappend  \r\n  \r\n# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)  \r\nHISTSIZE=1000  \r\nHISTFILESIZE=2000  \r\n  \r\n# check the window size after each command and, if necessary,  \r\n# update the values of LINES and COLUMNS.  \r\nshopt -s checkwinsize  \r\n  \r\n# make less more friendly for non-text input files, see lesspipe(1)  \r\n[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"  \r\n  \r\n# set variable identifying the chroot you work in (used in the prompt below)  \r\nif [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then  \r\n    debian_chroot=$(cat /etc/debian_chroot)  \r\nfi  \r\n  \r\n# set a fancy prompt (non-color, unless we know we "want" color)  \r\ncase "$TERM" in  \r\n    xterm-color) color_prompt=yes;;  \r\nesac  \r\n  \r\n# uncomment for a colored prompt, if the terminal has the capability; turned  \r\n# off by default to not distract the user: the focus in a terminal window  \r\n# should be on the output of commands, not on the prompt  \r\n#force_color_prompt=yes  \r\n  \r\nif [ -n "$force_color_prompt" ]; then  \r\n    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then  \r\n    # We have color support; assume it''s compliant with Ecma-48  \r\n    # (ISO/IEC-6429). (Lack of such support is extremely rare, and such  \r\n    # a case would tend to support setf rather than setaf.)  \r\n    color_prompt=yes  \r\n    else  \r\n    color_prompt=  \r\n    fi  \r\nfi  \r\n  \r\nif [ "$color_prompt" = yes ]; then  \r\n    PS1=''${debian_chroot:+($debian_chroot)}\\[\\033[01;32m\\]\\u@\\h\\[\\033[00m\\]:\\[\\033[01;34m\\]\\w\\[\\033[00m\\]\\$ ''  \r\nelse  \r\n#    PS1=''${debian_chroot:+($debian_chroot)}\\u@\\h:\\w\\$ ''  \r\n    PS1=''${debian_chroot:+($debian_chroot)}\\W\\$ ''  \r\nfi  \r\n  \r\nunset color_prompt force_color_prompt  \r\n  \r\n# If this is an xterm set the title to user@host:dir  \r\ncase "$TERM" in  \r\nxterm*|rxvt*)  \r\n    PS1="\\[\\e]0;${debian_chroot:+($debian_chroot)}\\u@\\h: \\w\\a\\]$PS1"  \r\n    ;;  \r\n*)  \r\n    ;;  \r\nesac  \r\n  \r\n# enable color support of ls and also add handy aliases  \r\nif [ -x /usr/bin/dircolors ]; then  \r\n    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"  \r\n    alias ls=''ls --color=auto''  \r\n    #alias dir=''dir --color=auto''  \r\n    #alias vdir=''vdir --color=auto''  \r\n  \r\n    alias grep=''grep --color=auto''  \r\n    alias fgrep=''fgrep --color=auto''  \r\n    alias egrep=''egrep --color=auto''  \r\nfi  \r\n  \r\n# some more ls aliases  \r\nalias ll=''ls -alF''  \r\nalias la=''ls -A''  \r\nalias l=''ls -CF''  \r\n  \r\n# Add an "alert" alias for long running commands.  Use like so:  \r\n#   sleep 10; alert  \r\nalias alert=''notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e ''\\''''s/^\\s*[0-9]\\+\\s*//;s/[;&|]\\s*alert$//''\\'''')"''  \r\n  \r\n# Alias definitions.  \r\n# You may want to put all your additions into a separate file like  \r\n# ~/.bash_aliases, instead of adding them here directly.  \r\n# See /usr/share/doc/bash-doc/examples in the bash-doc package.  \r\n  \r\nif [ -f ~/.bash_aliases ]; then  \r\n    . ~/.bash_aliases  \r\nfi  \r\n  \r\n# enable programmable completion features (you don''t need to enable  \r\n# this, if it''s already enabled in /etc/bash.bashrc and /etc/profile  \r\n# sources /etc/bash.bashrc).  \r\nif [ -f /etc/bash_completion ] && ! shopt -oq posix; then  \r\n    . /etc/bash_completion  \r\nfi  ', '墨墨向北', 0, 0, '2014-12-18 20:46:37', '2014-12-18 20:46:37'),
(23, 'php模糊查询', '数据库设计\r\npassword   char(32)  如果用MD5加密\r\n\r\n索引作用\r\n数据量非常大的时候进行查询\r\n没有索引 会遍历整张表\r\n有索引 查询的时候会根据索引查询，提高查询性能\r\n例如字典的拼音目录，书的目录等。。\r\n\r\nMySQL模糊查询语法支持两种匹配模式\r\n\r\n	1. SQL匹配模式（开发中应用最多的一种）-->推荐\r\n	2. 正则表达式匹配模式\r\n\r\nSQL匹配模式语法\r\n\r\n	1. 不能使用操作符=或！= 而是使用操作符LIKE或NOT LIKE\r\n	2. MySQL提供2中通配符    %表示任意数量的任意字符     _表示任意的单个字符\r\n	3. 如果匹配格式不包含以上2中的任意一个，其查询效果等同于=或！=\r\n	4. 默认情况下不区分大小写\r\n\r\n例 : select * from user where username like ''%o%'';      查询包含o的姓名\r\n      select * from user where username like ''______'';     查询长度为6的姓名\r\n\r\n正则表达式匹配模式语法\r\n\r\n	1. 操作符为REGEXP或NOT REGEXP (RLIKE或NOT RLIKE)\r\n	2. . 匹配任意单个字符\r\n	3. * 匹配0个或多个在它前面的字符   X* 表示匹配任意数量的X字符 \r\n	4. [...]匹配中括号里的任意字符  [abc]匹配字符a b 或c [0-9]匹配任何数字  [0-9]* 匹配任何长度的数字\r\n	5. ^以某个字符或字符串开头 \r\n	6.  $以某个字符或字符串结尾\r\n\r\n例： select * from user where username rlike ''^m'';     查询以m开头的姓名\r\n        select * from user where username rlike ''......'';     不是查询长度为6的姓名 而是查询长度为6或以上的姓名 \r\n        select * from user where username rlike ''^........&'';      查询长度为6的姓名\r\n\r\n区别：\r\n正则表达式两侧不用放通配符，只要匹配到字符串的任意位置，就为匹配成功\r\n\r\ndemo: \r\n<html>\r\n<head>\r\n<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />\r\n     <title>无标题</title>\r\n</head>\r\n<body>\r\n<form action="deel.php" method="post">\r\n     搜索的用户名:<input name="username" type="text">\r\n     <button type="submit">搜索</button>\r\n</form>\r\n</body>\r\n</html>\r\n\r\n<?php\r\n     header("Content-Type: text/html; charset=utf-8");\r\n     $username=isset($_POST[''username''])?trim($_POST[''username'']):'''';\r\n     echo ''查询关键字''.$username."<br>";\r\n     $conn=@mysql_connect(''localhost'',''root'','''')or die("数据库连接失败");\r\n     mysql_query(''use test'');\r\n     mysql_query("set names ''utf-8''");\r\n     $sql="select * from user where username like ''%{$username}%''";\r\n     $rs=mysql_query($sql);         //返回资源结果集\r\n     echo "查询结果";\r\n     $users=array();\r\n     if (!empty($username)) {\r\n          while ($row = mysql_fetch_assoc($rs)) {\r\n                /*高亮关键词原理：使用str_replace()函数对本身替换时加入样式*/\r\n               $row[''username'']=str_replace($username,''<font color="red">''.$username.''</font>'', $row[''username'']);     \r\n               $users[] = $row;\r\n               foreach ($users as $user) {\r\n               echo $user[''username'']."<br>";\r\n          }\r\n         }\r\n     }\r\n?>\r\n', '墨墨向北', 0, 0, '2014-12-18 20:50:51', '2014-12-18 20:50:51'),
(25, 'php操作mysql数据库', '判断mysql扩展是否安装\r\nif (function_exists(''mysql_connect'')) {\r\n    echo ''Mysql扩展已经安装'';\r\n}\r\n  \r\n连接数据库三步\r\nmysql_connect(''localhost'', ''root'', '''') or die(''数据库连接失败'');\r\nmysql_select_db(''test'');\r\nmysql_query("set names ''utf8''");\r\n\r\n查询，插入,更新，删除\r\n$result=mysql_query($sql);   返回资源句柄\r\n\r\n获取查询结果\r\n$date=array();\r\nwhile ($row=mysql_fetch_assoc($result) ){\r\n     $date[]=$row;\r\n}\r\n知识点：\r\n1.  获得一行数据 三种方法\r\n执行一次此方法，索引下标自动加一 就像数组可以赋很多次值，前面的值不会被覆盖\r\nmysql_fetch_array($result);        返回一行数字数组和关联数组  可以设置第二个参数\r\nmysql_fetch_row($result);          返回一行数字数下标数组\r\nmysql_fetch_assoc($result);       返回一行关联数组\r\n2.  遍历结果集来获得所有数据\r\n\r\n关闭数据库连接\r\nmysql_close();\r\nphp执行完后，会自动的关闭数据库连接，如果对性能要求比较高，可手动关闭，节省资源\r\n也可以加参数指定关闭哪个数据库\r\n\r\n\r\n分页\r\n$totalPage=2;     //总页数\r\n$perNumber=2;       //每页显示条数\r\n$start=($totalPage-1)*$perNum;      //开始查询之前位置的总条数\r\n$result=mysql_query("select * from user limit $start,$perNum");\r\n$date=array();\r\nwhile ($row=mysql_fetch_assoc($result) ){\r\n     $date[]=$row;\r\n}\r\n知识点：\r\nlimit m,n表示从m行后取n行数据，通过构造m,n实现获取某一页的所有数据\r\n', '墨墨向北', 0, 0, '2014-12-18 20:55:59', '2014-12-18 20:55:59');

-- --------------------------------------------------------

--
-- 表的结构 `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '游客',
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `article_id` int(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=27 ;

--
-- 转存表中的数据 `comments`
--

INSERT INTO `comments` (`id`, `name`, `body`, `article_id`, `created_at`, `updated_at`) VALUES
(26, '游客', '沙发', 19, '2014-12-18 20:56:49', '2014-12-18 20:56:49');

-- --------------------------------------------------------

--
-- 表的结构 `messages`
--

CREATE TABLE IF NOT EXISTS `messages` (
`id` int(10) unsigned NOT NULL,
  `body` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=29 ;

--
-- 转存表中的数据 `messages`
--

INSERT INTO `messages` (`id`, `body`, `created_at`, `updated_at`) VALUES
(28, '留言啦 吼吼吼', '2014-12-18 20:58:54', '2014-12-18 20:58:54');

-- --------------------------------------------------------

--
-- 表的结构 `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_11_17_010706_create_articles_table', 1),
('2014_11_17_014456_create_comments_table', 1),
('2014_11_25_111736_create_messages_table', 2),
('2014_11_25_113045_create_messages_table', 3),
('2014_11_27_061848_create_users_table', 4),
('2014_12_13_080806_create_notes_table', 5),
('2014_12_13_081601_create_notes_table', 6);

-- --------------------------------------------------------

--
-- 表的结构 `notes`
--

CREATE TABLE IF NOT EXISTS `notes` (
`id` int(10) unsigned NOT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mood` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- 转存表中的数据 `notes`
--

INSERT INTO `notes` (`id`, `img`, `title`, `body`, `mood`, `created_at`, `updated_at`) VALUES
(1, 'images/notes/notes1.jpg', '养只泰迪狗狗好呢，还好博美好呢？？好纠结', '泰迪丑丑的，但丑的让人喜欢。博美白白的怎么看都可爱，可是泰迪比较活泼，天天围着主人转，疯疯癫癫的，这样才有气氛。或许可以两只，吼吼吼', '心情好好哦', '2014-10-31 06:30:00', '0000-00-00 00:00:00'),
(2, 'images/notes/notes2.jpg', '要怎么才能下定决心减肥', '最近在跟电视剧神雕侠侣，最爱看小龙女了，感非常的励志，每次看完再看看韩剧美女的诞生，深刻的感觉到的胖子没有未来，必须要减肥了。现在看看陈希妍减肥后的照片，漂亮了很多，我也要减肥!!!', '心情比较好', '2014-12-05 01:28:00', '0000-00-00 00:00:00'),
(3, 'images/notes/notes3.jpg', '为什么有时候我会有颗玻璃心', '总被身边的某个人不耐烦说：“你这个人怎么这样”“你又怎么了”“你怎么又生气了”“你又怎么了”“你真好生气”。别人随口一说，我就生气的控制不住自己？哎，不要理我，让我好好思考一下人生。', '心情非常不好', '2014-12-06 07:32:33', '0000-00-00 00:00:00'),
(4, 'images/notes/notes4.jpg', 'php是不是世界上最好的语言？', '现在在学php，已经被php洗脑了，语法简单，操作方便，虽然它不是最好的语言，但目前为止是我最喜欢的面向对象的语言，一定要把它学好哦，吼吼吼！！', '心情不怎么好', '2014-12-09 00:42:59', '0000-00-00 00:00:00'),
(5, 'images/notes/notes5.jpg', '论市场营销这个东东', '选修了市场营销，才发现市场营销不只是卖卖东西那么简单，要考虑季节，价格波动，市场占有率，通货膨胀，成产材料供应问题，科研创新成本，运费对价格的影响，广告打多少才合适。这个专业原来不仅仅是卖商品这么简单。', '心情一般', '2014-12-13 11:13:22', '0000-00-00 00:00:00'),
(6, 'images/notes/notes6.jpg', '拖延症太可怕了', '最近已经到了拖延症晚期了，做什么事不拖到最后一分钟绝对不去做，无论我怎么说服自己，就是不想动，躺在床上，拿着手机，并且总找借口安慰自己，告诉自己看美剧是学习英语，刷人人微博知乎是增加人生的阅历，病入膏肓了。。', '心情特别不好', '2014-12-16 05:07:32', '0000-00-00 00:00:00'),
(7, 'images/notes/notes7.jpg', '推荐一个电影', '黄渤主演的《假装情侣》，11年的电影，剧情老套，豆瓣上评分只有6.0。但我还是非常喜欢这个电影，被感动了很久很久。感觉剧中的女主和自己很像，脾气暴躁，非常能折腾，但是遇到了顺着她，让着她，一心一意待她的男主。感觉世界上最让人羡慕的情侣的并不是男才女貌，而是坏脾气的女子找到了好脾气的老公。', '心情非常好', '2014-12-17 07:54:16', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- 表的结构 `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(10) unsigned NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `created_at`, `updated_at`, `remember_token`) VALUES
(1, '墨墨向北', '1414058425@qq.com', '15246929893', '2014-11-27 03:00:00', '2014-12-18 17:29:05', 'Ve07tfdXQxRnsyEJdIk4ioUEYvledpl7jaOIoWIPKBZWjmNwXrMUzu3k2der');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
