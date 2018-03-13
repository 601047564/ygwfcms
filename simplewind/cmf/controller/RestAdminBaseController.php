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

class RestAdminBaseController extends RestBaseController
{
    public function _initialize()
    {
        if (empty($this->user)) {
            $this->error(['code' => 10001, 'msg' => '登录已失效!']);
        } elseif ($this->userType != 1) {
            $this->error(['code' => 10001, 'msg' => '登录已失效!']);
        }
    }


}