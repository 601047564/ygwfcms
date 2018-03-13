<?php
// +---------------------------------------------------------------------
// | YGWCMS [ WE CAN DO IT MORE SIMPLE ]
// +----------------------------------------------------------------------
// | Copyright (c) 2017-2018 http://www.yangblogs.com All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.yangblogs.com )
// +----------------------------------------------------------------------
// | Author: yang <601047564@qq.com>
// +---------------------------------------------------------------------
namespace cmf\behavior;

use think\Hook;
use think\Db;

class InitHookBehavior
{

    // 行为扩展的执行入口必须是run
    public function run(&$param)
    {
        if (!cmf_is_installed()) {
            return;
        }

        $plugins = Db::name('hook_plugin')->field('hook,plugin')->where('status', 1)
            ->order('list_order ASC')
            ->select();

        if (!empty($plugins)) {
            foreach ($plugins as $hookPlugin) {
                Hook::add($hookPlugin['hook'], cmf_get_plugin_class($hookPlugin['plugin']));
            }
        }
    }
}