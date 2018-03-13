<?php
// +----------------------------------------------------------------------
// | TcIp [ WE CAN DO IT MORE SIMPLE ]
// +----------------------------------------------------------------------
// | Copyright (c) 2017 Tangchao All rights reserved.
// +----------------------------------------------------------------------
// | Author: Tangchao <79300975@qq.com>
// +----------------------------------------------------------------------
namespace plugins\tc_ip\service;

use think\Db;
use plugins\tc_ip\model\PluginTcIpModel;

class TcIp
{
    public static function ip($ip)
    {
        $tcip = new PluginTcIpModel();
        $addr = $tcip -> ip2addr($ip);
        return $addr['country'];
    }
}