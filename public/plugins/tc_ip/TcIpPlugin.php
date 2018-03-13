<?php
// +----------------------------------------------------------------------
// | TcAd [ WE CAN DO IT MORE SIMPLE ]
// +----------------------------------------------------------------------
// | Copyright (c) 2017 Tangchao All rights reserved.
// +----------------------------------------------------------------------
// | Author: Tangchao <79300975@qq.com>
// +----------------------------------------------------------------------
namespace plugins\tc_ip;
use cmf\lib\Plugin;
use think\Db;
class TcIpPlugin extends Plugin
{
    public $info = [
        'name'        => 'TcIp',
        'title'       => '显示ip物理地址',
        'description' => '显示ip物理地址',
        'status'      => 1,
        'author'      => 'Tangchao',
        'version'     => '1.0',
        'demo_url'    => 'http://www.songzhenjiang.cn',
        'author_url'  => 'http://www.songzhenjiang.cn'
    ];

    public $hasAdmin = 0;

    public function install()
    {
        return true;
    }

    public function uninstall()
    {
        return true;
    }
}