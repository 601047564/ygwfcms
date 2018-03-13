<?php
// +----------------------------------------------------------------------
// | YGWCMS [ WE CAN DO IT MORE SIMPLE ]
// +----------------------------------------------------------------------
// | Copyright (c) 2017-2018 http://www.yangblogs.com All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.yangblogs.com )
// +----------------------------------------------------------------------
// | Author: yang <601047564@qq.com>
// +----------------------------------------------------------------------
namespace app\user\validate;

use think\Validate;

class UserArticlesValidate extends Validate
{
    protected $rule = [
        'post_title' => 'require',
    ];
    protected $message = [
        'post_title.require' => '文章标题不能为空',
    ];

    protected $scene = [
        'add'  => ['post_title'],
        'edit' => ['post_title'],
    ];
}