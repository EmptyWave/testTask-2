<?php

namespace app\controllers;

use app\models\tables\Themes;
use Yii;
use app\models\tables\News;
use app\models\filters\AdminNewsFilter;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\filters\AccessControl;

/**
 * AdminController implements the CRUD actions for News model.
 */
class AdminController extends Controller
{
  /**
   * {@inheritdoc}
   */
  public function behaviors()
  {
    return [
      'access' => [
        'class' => AccessControl::class,
        'rules' => [
          [
            'allow' => true,
            'roles' => ['@'],
          ],
        ],
      ],
      'verbs' => [
        'class' => VerbFilter::className(),
        'actions' => [
          'delete' => ['POST'],
        ],
      ],
    ];
  }

  /**
   * Lists all News models.
   * @return mixed
   */
  public function actionIndex()
  {
    $searchModel = new AdminNewsFilter();
    $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

    $themesList = Themes::getThemesList();

    return $this->render('news/index', [
      'searchModel' => $searchModel,
      'dataProvider' => $dataProvider,
      'themesList' => $themesList,
    ]);
  }

  /**
   * Displays a single News model.
   * @param integer $id
   * @return mixed
   * @throws NotFoundHttpException if the model cannot be found
   */
  public function actionView($id)
  {
    return $this->render('news/view', [
      'model' => $this->findModel($id),
    ]);
  }

  /**
   * Creates a new News model.
   * If creation is successful, the browser will be redirected to the 'view' page.
   * @return mixed
   */
  public function actionCreate()
  {
    $model = new News();
    $post = Yii::$app->request->post();

    if ($post){
      $post['News']['date'] = Yii::$app->formatter->asDate($post['News']['date'], "yyyy-MM-dd");
      if ($model->load($post) && $model->save()) {
        return $this->redirect(['view', 'id' => $model->id]);
      }
    }

    $themesList = Themes::getThemesList();

    return $this->render('news/create', [
      'model' => $model,
      'themesList' => $themesList,
    ]);
  }

  /**
   * Updates an existing News model.
   * If update is successful, the browser will be redirected to the 'view' page.
   * @param integer $id
   * @return mixed
   * @throws NotFoundHttpException if the model cannot be found
   */
  public function actionUpdate($id)
  {
    $model = $this->findModel($id);
    $post = Yii::$app->request->post();

    if ($post){
      $post['News']['date'] = Yii::$app->formatter->asDate($post['News']['date'], "yyyy-MM-dd");
      if ($model->load($post) && $model->save()) {
        return $this->redirect(['view', 'id' => $model->id]);
      }
    }

    $themesList = Themes::getThemesList();

    return $this->render('news/update', [
      'model' => $model,
      'themesList' => $themesList,
    ]);
  }

  /**
   * Deletes an existing News model.
   * If deletion is successful, the browser will be redirected to the 'index' page.
   * @param integer $id
   * @return mixed
   * @throws NotFoundHttpException if the model cannot be found
   */
  public function actionDelete($id)
  {
    $this->findModel($id)->delete();

    return $this->redirect(['index']);
  }

  /**
   * Finds the News model based on its primary key value.
   * If the model is not found, a 404 HTTP exception will be thrown.
   * @param integer $id
   * @return News the loaded model
   * @throws NotFoundHttpException if the model cannot be found
   */
  protected function findModel($id)
  {
    if (($model = News::findOne($id)) !== null) {
      return $model;
    }

    throw new NotFoundHttpException('The requested page does not exist.');
  }
}
