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
namespace app\admin\api;

use app\admin\model\NavMenuModel;

class NavMenuApi
{
    // 分类列表 用于模板设计
    public function index($param = [])
    {
        $navMenuModel = new NavMenuModel();

        $where = [];

        if (!empty($param['keyword'])) {
            $where['name'] = ['like', "%{$param['keyword']}%"];
        }
        if (!empty($param['id'])) {
            $where['nav_id'] = $param['id'];
        }

        return $navMenuModel->where($where)->select();
    }

}