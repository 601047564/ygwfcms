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
use think\Cookie;
use think\Db;
use think\Request;
use think\Session;

class GbookController extends HomeBaseController
{
    public function gbook()
    {
        $comment=$this->CommentList($pid=0,array(),$spac=0,Null);
        $this->assign('commentList',$comment);
        if (Session::has('mobile')){
            $mobile=Session::get('mobile');
            $data=Db::name('user')->where(['mobile'=>$mobile])->find();
            $this->assign('data',$data);
        }
        $ip=Db::name('liuyan')->order('id desc')->find();
        //$ipv4="来自【{:plugins&#092&#092tc_ip&#092&#092service&#092&#092TcIp::ip('".$ip['ip']."')}】的游客";
        $this->assign('ip',$ip);

        $liuyandata=Db::name('liuyan')->select();
        $this->assign('liuyandata',$liuyandata);
        return $this->fetch();
    }
    //评论
    public function  addComment(Request $request){
        $post=$request->post();
        $post['ip']=$request->ip();
        $post['add_time']=time();
        $validate = $this->validate($post,[
            'content|内容'  => 'require|max:150',
        ]);
        if($validate!==true){
            $this->error($validate);
        }
        if(Db::name('liuyan')->insert($post)){
            $this->success('留言成功');
        }else{
            $this->error('留言失败');
        }
    }
    //评论列表
    public  function CommentList($pid=0,$commentList=array(),$spac=0,$pauthor=NULL){

        static $i=0;
        $spac=$spac+1;//初始为1级评论
        $pauthor=$pauthor;
        $List=Db::name('liuyan')->where(['pid'=>$pid])->field('id,add_time,author,content,pid,support,opposition')->order('id desc')->select();
        foreach($List as $k=>$v){
            $commentList[$i]['level']=$spac;//评论层级
            $commentList[$i]['author']=$v['author'];
            $commentList[$i]['id']=$v['id'];
            $commentList[$i]['pid']=$v['pid'];//此条评论的父id
            $commentList[$i]['content']=$v['content'];
            $commentList[$i]['time']=$v['add_time'];
            $commentList[$i]['pauthor']=$pauthor;
            $commentList[$i]['support']=$v['support'];
            $commentList[$i]['opposition']=$v['opposition'];
            $i++;
            $commentList = $this->CommentList($v['id'],$commentList,$spac,$v['author']);
        }
        return $commentList;
    }
    public function duanxin(Request $request){
        // 短信应用SDK AppID
        $appid = 1400070900; // 1400开头

// 短信应用SDK AppKey
        $appkey = "8c86a9b3c76569245f88d146740ea4c5";

// 需要发送短信的手机号码
        if($request->isAjax()){
            $phone=$request->post();
        }
        $phone=$phone['phone'];
        $phoneNumbers = ["$phone"];
// 短信模板ID，需要在短信应用中申请
        $templateId = 90591;  // NOTE: 这里的模板ID`7839`只是一个示例，真实的模板ID需要在短信控制台中申请

// 签名
        $smsSign = "YANG博客"; // NOTE: 这里的签名只是示例，请使用真实的已申请的签名，签名参数使用的是`签名内容`，而不是`签名ID`

// 指定模板ID单发短信
        try {
            $ssender = new SmsSingleSender($appid,$appkey);
            $code = (int)rand(100000, 999999);
            Session::set('code',$code);
            $params = ["{$code}"];
            $result = $ssender->sendWithParam("86", $phoneNumbers[0], $templateId,
                $params, $smsSign, "", "");  // 签名参数未提供或者为空时，会使用默认签名发送短信
            exit($result);
//            $rsp = json_decode($result);

//            var_dump($rsp);
//            echo $result;
        } catch(\Exception $e) {
            echo var_dump($e);
        }
    }

    //    注册
    public function register(Request $request){
        if($request->isPost()){
            $posts=$request->post();
            $validate = $this->validate($posts,[
                'mobile|手机号'  => 'require|number',
                'user_pass|密码' => 'require|confirm|min:8|max:16',
            ]);
            if($validate!==true){
                $this->error($validate);
            }

            $code1=$posts['code'];
            $code=Session::get('code');
            if ($code!=$code1){
                $this->error('验证码输入有误');
            }
            unset($posts['user_pass_confirm']);
            unset($posts['code']);
            $posts['user_pass']=md5($posts['user_pass']);
            $posts['create_time']=time();
            $tel=$posts['mobile'];
            $posts['user_nickname']=preg_replace('/(\d{3})\d{4}(\d{4})/', '$1****$2', $tel);
            if (Db::name('user')->insert($posts)){
                $this->success('注册成功');
            }else{
                $this->success('注册失败');
            }
        }
    }
    public function isregister(Request $request){
        //            判断手机号是否注册
        if ($request->isAjax()){
            $posts=$request->post();
            $mobile=$posts['phone'];
            if (Db::name('user')->where(['mobile'=>$mobile])->find()){
                $code='0';
                $msg='手机号码已注册';
            }else{
                $code='1';
                $msg='手机号码可以注册';
            }
            $data=$data=array('code'=>$code,'msg'=>$msg);
            exit(json_encode($data));
        }

    }
//    登录
    public function login(Request $request){
        if($request->isPost()){
            $posts=$request->post();
            $validate = $this->validate($posts,[
                'mobile|手机号'  => 'require',
                'user_pass|密码' => 'require',
            ]);
            if($validate!==true){
                $this->error($validate);
            }
            $mobile=$posts['mobile'];
            $user_pass=$posts['user_pass'];
            $user=Db::name('user')->where(['mobile'=>$mobile])->find();
            if (!$user) $this->error('手机号不存在！');
            if($user['user_pass']!=md5($user_pass)) $this->error('密码错误！');
            Session::set('mobile',$user['mobile']);
            Session::set('last_login_time',$user['last_login_time']);
            Session::set('last_login_ip',$user['last_login_ip']);
            $iptime=[];
            $iptime['last_login_ip']=$request->ip();
            $iptime['last_login_time']=time();
            Db::name('user')->where(['mobile'=>$mobile])->update($iptime);
            $this->redirect('blog/gbook/gbook');
        }
    }
//    //图片上传
//    public function uploading(Request $request){
//        $posts=$request->post();
//        $id=$posts['id'];
//
//    }
//    保存信息
    public function information(Request $request){
        if ($request->isPost()){
            $posts=$request->post();
            $validate = $this->validate($posts,[
                'user_nickname|昵称'  => 'require',
            ]);
            if($validate!==true){
                $this->error($validate);
            }
            $id=$posts['id'];
            // 图片上传
            // 获取表单上传文件 例如上传了001.jpg
            $file = $request->file('upfile');
            // 移动到框架应用根目录/public/uploads/ 目录下
            if($file){
                $info = $file->validate(['size'=>2097152,'ext'=>'jpg,png,gif,jpeg'])->move(ROOT_PATH . 'public' . DS . 'upload/blog');
                if($info){
                    // 成功上传后 获取上传信息
                    //echo $info->getExtension();// 输出 jpg
                    $fileurl=$info->getSaveName();// 输出 20160820\42a79759f284b767dfcb2a0197904287.jpg
                    $path=str_replace('\\','/',$fileurl);// 输出 20160820/42a79759f284b767dfcb2a0197904287.jpg
                    //echo $info->getFilename();// 输出 42a79759f284b767dfcb2a0197904287.jpg
                    $posts['avatar']=$path;
                    if (Db::name('user')->where(['id'=>$id])->update($posts)){
                        $this->success('保存成功');
                    }else{
                        $this->error('保存失败');
                    }
                }else{
                    // 上传失败获取错误信息
                    echo $file->getError();
                }
            }else{
                if (Db::name('user')->where(['id'=>$id])->update($posts)){
                    $this->success('保存成功');
                }else{
                    $this->error('保存失败');
                }
            }

        }
    }
//    支持
    public function support(Request $request){
            if ($request->isAjax()){
                $posts=$request->post();
                //$support=$posts['support']+1;
                $id=$posts['id'];
                if (Db::name('liuyan')->where(['id'=>$id])->setInc('support')){
                    $code='0';
                    $msg='点赞成功！';
                    Cookie::set('id',$id,3600);
                }else{
                    $code='1';
                    $msg='您已经点赞过了！';
                }
                $data=array('code'=>$code,'msg'=>$msg);
                exit(json_encode($data));
            }
    }
//    反对
    public function opposition(Request $request){
        if ($request->isAjax()){
            $posts=$request->post();
            //$opposition=$posts['opposition']+1;
            $id=$posts['id'];
            if (Db::name('liuyan')->where(['id'=>$id])->setInc('opposition')){
                $code='0';
                $msg='FUCK！';
            }else{
                $code='1';
                $msg='您已经FUCK了！';
            }
           $data=array('code'=>$code,'msg'=>$msg);
            exit(json_encode($data));
        }
    }
//    举报
    public function report(Request $request){
        if ($request->isAjax()){
            $posts=$request->post();
            $validate = $this->validate($posts,[
                'content|举报内容'  => 'require',
            ]);
            if($validate!==true){
                $this->error($validate);
            }
            $id=$posts['id'];
            $old=Db::name('liuyan')->where(['id'=>$id])->field('report')->find();
            $report=$old['report'].'---'.$posts['content'].' '.$posts['other'];
            if (Db::name('liuyan')->where(['id'=>$id])->update(['report' =>$report])){
                $code='0';
                $msg='举报成功！';
                $olduser=Db::name('liuyan')->where(['id'=>$id])->field('isreport')->find();
                $isreport=$olduser['isreport'].'---'.$posts['username'];
                Db::name('liuyan')->where(['id'=>$id])->update(['isreport' =>$isreport]);
            }else{
                $code='1';
                $msg='举报失败!';
            }
            $data=array('code'=>$code,'msg'=>$msg);
            exit(json_encode($data));
        }
    }
//    退出登录
    public function out(){
        Session::delete('mobile');
        $this->redirect('blog/index/index');
    }
}
