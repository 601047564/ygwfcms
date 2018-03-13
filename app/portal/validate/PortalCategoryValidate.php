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
namespace app\portal\validate;

use app\admin\model\RouteModel;
use think\Validate;

class PortalCategoryValidate extends Validate
{
    protected $rule = [
        'name'  => 'require',
        'alias' => 'checkAlias',
    ];
    protected $message = [
        'name.require' => '分类名称不能为空',
    ];

    protected $scene = [
//        'add'  => ['user_login,user_pass,user_email'],
//        'edit' => ['user_login,user_email'],
    ];

    // 自定义验证规则
    protected function checkAlias($value, $rule, $data)
    {
        if (empty($value)) {
            return true;
        }

        $routeModel = new RouteModel();
        if (isset($data['id']) && $data['id'] > 0){
            $fullUrl    = $routeModel->buildFullUrl('portal/List/index', ['id' => $data['id']]);
        }else{
            $fullUrl    = $routeModel->getFullUrlByUrl($data['alias']);
        }
        if (!$routeModel->exists($value, $fullUrl)) {
            return true;
        } else {
            return "别名已经存在!";
        }

    }
}