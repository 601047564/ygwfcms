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
namespace app\admin\model;

use think\Model;

class HookModel extends Model
{

    public function plugins()
    {
        return $this->belongsToMany('PluginModel', 'hook_plugin', 'plugin', 'hook');
    }

}