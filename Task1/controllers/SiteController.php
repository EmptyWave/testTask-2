<?php

namespace app\controllers;

use yii\filters\AccessControl;
use yii\filters\VerbFilter;
use app\models\RegistrationForm;
use Yii;
use yii\helpers\Url;
use yii\web\Controller;
use app\models\LoginForm;
use app\models\filters\NewsFilter;

class SiteController extends Controller
{

  public function behaviors()
  {
    return [
      'access' => [
        'class' => AccessControl::class,
        'only' => ['logout','login', 'registration'],
        'rules' => [
          [
            'actions' => ['logout'],
            'allow' => true,
            'roles' => ['@'],
          ],
          [
            'actions' => ['login', 'registration'],
            'allow' => true,
            'roles' => ['?'],
          ],
        ],
      ],
      'verbs' => [
        'class' => VerbFilter::class,
        'actions' => [
          'logout' => ['post'],
        ],
      ],
    ];
  }



  public function actionIndex()
  {
    $dateList = \app\models\News::getDateList();
    $themesList = \app\models\News::getThemesList();

    $searchModel = new NewsFilter();
    $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

    return $this->render('index', [
      'searchModel' => $searchModel,
      'dataProvider' => $dataProvider,
      'dateList' => $dateList,
      'themesList' => $themesList,
    ]);
  }

  public function actionLogin()
  {
    if (!Yii::$app->user->isGuest) {
      return $this->goHome();
    }

    $model = new LoginForm();
    if ($model->load(Yii::$app->request->post()) && $model->login()) {
      return $this->goBack();
    }

    $model->password = '';
    return $this->render('login', [
      'model' => $model,
    ]);
  }

  public function actionRegistration()
  {
    if (!Yii::$app->user->isGuest) {
      return $this->goHome();
    }

    $model = new RegistrationForm();
    $newData = Yii::$app->request->post();
    if ($model->load($newData) && $model->registration($newData)) {
      return $this->redirect(Url::to(['site/login']));
    }

    return $this->render('registration', [
      'model' => $model,
    ]);
  }

  public function actionLogout()
  {
    Yii::$app->user->logout();

    return $this->goHome();
  }

}
