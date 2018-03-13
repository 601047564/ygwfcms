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
use app\portal\service\PostService;

class IndexController extends HomeBaseController
{
    public function index()
    {
//        $data=Db::name('portal_post')->alias('p')->join('portal_category c','p.id=c.id','left')->field('p.*,c.name')->select();
//        $this->assign('data',$data);

//        $fenlei=Db::name('portal_category')->alias('p')->join('portal_category_post cp','p.id=cp.category_id','left')->field('p.*,cp.*')->select();
//        $this->assign('fenlei',$fenlei);
        $data=Db::name('portal_category_post')->alias('cp')->join('portal_post p','cp.post_id=p.id','left')->join('portal_category c','cp.category_id=c.id')->field('c.*,p.*,cp.*')->order("p.id desc")->select();
        $this->assign('data',$data);
//        $param = $this->request->param();
//        $postService = new PostService();
//        $data1        = $postService->adminArticleList($param);
//        $this->assign('articles', $data1->items());

        return $this->fetch();
    }
    public function details($id=''){
        $data=Db::name('portal_category_post')->alias('cp')->join('portal_post p','cp.post_id=p.id','left')->join('portal_category c','cp.category_id=c.id')->field('c.*,p.*,cp.*')->order("p.id desc")->find($id);
        $this->assign('data',$data);
        $title=Db::name('portal_category_post')->alias('cp')->join('portal_post p','cp.post_id=p.id','left')->join('portal_category c','cp.category_id=c.id')->field('c.*,p.*,cp.*')->order("p.id desc")->select();
        $this->assign('title',$title);
        return $this->fetch();
    }

}
