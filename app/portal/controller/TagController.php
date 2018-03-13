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
namespace app\portal\controller;

use cmf\controller\HomeBaseController;
use app\portal\model\PortalTagModel;

class TagController extends HomeBaseController
{
    public function index()
    {
        $id             = $this->request->param('id', 0, 'intval');
        $portalTagModel = new PortalTagModel();

        $tag = $portalTagModel->where('id', $id)->where('status', 1)->find();

        $this->assign('tag', $tag);

        return $this->fetch('/tag');
    }

}
