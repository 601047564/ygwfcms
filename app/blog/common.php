<?php
/**
 * Created by PhpStorm.
 * User: direct
 * Date: 2018/2/28
 * Time: 13:03
 */
// 评论显示替换表情标签
function reFace($str){
    for($i=1;$i<76;$i++){

        $str = str_replace("[em_$i]","<img src='/themes/blogs/public/liuyan/Face/$i.gif'/>",$str);
    }
    return $str;
}