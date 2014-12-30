<?php 
class Article extends Eloquent {

    public function comments()
    {
        return $this->hasMany('Comment', 'article_id');
    }
}