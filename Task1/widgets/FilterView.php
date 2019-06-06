<?php
/**
 * Created by PhpStorm.
 * User: dimon
 * Date: 06.06.2019
 * Time: 1:02
 */

namespace app\widgets;


use yii\base\Widget;

class FilterView extends Widget
{
  public $list;
  public $type;

  public function run(){
    return $this->render('filterView', [
      'list' => $this->list,
      'type' => $this->type,
    ]);
  }
}