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
namespace cmf\controller;

use think\App;
use think\Loader;

class PluginController extends HomeBaseController
{
    public function index($_plugin, $_controller, $_action)
    {

        $_controller = Loader::parseName($_controller, 1);

        $pluginControllerClass = "plugins\\{$_plugin}\\controller\\{$_controller}Controller";;

        $vars = [];
        return App::invokeMethod([$pluginControllerClass, $_action, $vars]);
    }

}
