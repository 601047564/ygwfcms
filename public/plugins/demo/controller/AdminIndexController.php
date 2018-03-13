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
namespace plugins\demo\controller; //Demo插件英文名，改成你的插件英文就行了

use think\Db;
use cmf\controller\PluginBaseController;
use plugins\Demo\Model\PluginDemoModel;

class AdminIndexController extends PluginBaseController
{

    function _initialize()
    {
        $adminId = cmf_get_current_admin_id();//获取后台管理员id，可判断是否登录
        if (!empty($adminId)) {
            $this->assign("admin_id", $adminId);
        } else {
            //TODO no login
            $this->error('未登录');
        }
    }

    function index()
    {
        $users = Db::name("user")->limit(0, 5)->select();
        //$demos = PluginDemoModel::all();

        // print_r($demos);

        $this->assign("users", $users);


        $this->assign("users", $users);

        return $this->fetch('/admin_index');
    }

}
