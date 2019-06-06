<?php
/**
 * Created by PhpStorm.
 * User: dimon
 * Date: 05.06.2019
 * Time: 18:03
 */

namespace app\controllers;

use yii\web\Controller;
use app\models\News;


class NewsController extends Controller
{
  public function actionView($id)
  {
    return $this->render('view', [
      'model' => News::getModel($id),
    ]);
  }

}