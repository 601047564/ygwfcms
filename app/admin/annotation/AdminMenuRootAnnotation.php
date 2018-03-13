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
namespace app\admin\annotation;

use mindplay\annotations\AnnotationException;
use mindplay\annotations\Annotation;

/**
 * Specifies validation of a string, requiring a minimum and/or maximum length.
 *
 * @usage('class'=>true, 'inherited'=>true, 'multiple'=>true)
 */
class AdminMenuRootAnnotation extends Annotation
{
    /**
     * @var int|null Minimum string length (or null, if no minimum)
     */
    public $remark = '';

    /**
     * @var int|null Maximum string length (or null, if no maximum)
     */
    public $icon = '';

    /**
     * @var int|null Minimum string length (or null, if no minimum)
     */
    public $name = '';

    public $action = '';

    public $param = '';

    public $parent = '';

    public $display = false;

    public $order = 10000;

    /**
     * Initialize the annotation.
     * @param array $properties
     */
    public function initAnnotation(array $properties)
    {
        parent::initAnnotation($properties);
    }
}
