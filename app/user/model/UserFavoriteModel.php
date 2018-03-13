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
namespace app\user\model;

use think\Db;
use think\Model;

class UserFavoriteModel extends Model
{
    public function favorites()
    {
        $userId        = cmf_get_current_user_id();
        $userQuery     = Db::name("UserFavorite");
        $favorites     = $userQuery->where(['user_id' => $userId])->order('id desc')->paginate(10);
        $data['page']  = $favorites->render();
        $data['lists'] = $favorites->items();
        return $data;
    }

    public function deleteFavorite($id)
    {
        $userId           = cmf_get_current_user_id();
        $userQuery        = Db::name("UserFavorite");
        $where['id']      = $id;
        $where['user_id'] = $userId;
        $data             = $userQuery->where($where)->delete();
        return $data;
    }

}