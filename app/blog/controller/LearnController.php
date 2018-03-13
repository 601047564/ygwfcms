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
namespace app\blog\controller;

use cmf\controller\HomeBaseController;
use think\Db;

class LearnController extends HomeBaseController
{
    public function learn($id='')
    {
        //$name=Db::name('portal_category')->field('name')->select();
        //$data=Db::name('portal_post')->alias('p')->join('portal_category c','p.id=c.id','left')->field('p.*,c.name')->paginate(3);
//        $data=Db::name('portal_post')->paginate(2);
//        $this->assign('data',$data);
        $data=Db::name('portal_category_post')->alias('cp')->join('portal_post p','cp.post_id=p.id','left')->join('portal_category c','cp.category_id=c.id')->field('cp.*,p.*,c.*')->order("p.id desc")->paginate(2);
        $this->assign('data',$data);

        $fenlei=Db::name('portal_category')->select();
        $this->assign('fenlei',$fenlei);

        return $this->fetch();
    }
}
