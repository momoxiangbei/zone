<?php
class Comment extends Eloquent{

	public function articles()
    {
        return $this->belongsTo('Article');
    }
    
}