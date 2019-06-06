<?php

namespace app\widgets;

use \app\models\tables\News;
use \yii\base\Widget;

class NewsView extends Widget
{
  public $model;
  public $link=true;

  public function run(){
      return $this->render('newsTab', [
        'model' => $this->model,
        'link' => $this->link,
        ]);

  }
}