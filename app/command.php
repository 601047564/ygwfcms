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

$apps = cmf_scan_dir(APP_PATH . '*', GLOB_ONLYDIR);

$returnCommands = [];

foreach ($apps as $app) {
    $commandFile = APP_PATH . $app . '/command.php';

    if (file_exists($commandFile)) {
        $commands       = include $commandFile;

        $returnCommands = array_merge($returnCommands, $commands);
    }

}

return $returnCommands;