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
namespace plugins\custom_admin_login;

use cmf\lib\Plugin;
use think\Db;

class CustomAdminLoginPlugin extends Plugin
{

    public $info = [
        'name'        => 'CustomAdminLogin',
        'title'       => '自定义后台登录页',
        'description' => '自定义后台登录页',
        'status'      => 1,
        'author'      => 'ThinkCMF',
        'version'     => '1.0'
    ];

    public $hasAdmin = 0;//插件是否有后台管理界面

    // 插件安装
    public function install()
    {
        return true;//安装成功返回true，失败false
    }

    // 插件卸载
    public function uninstall()
    {
        return true;//卸载成功返回true，失败false
    }

    public function adminLogin()
    {
        return $this->fetch('widget');
    }

}