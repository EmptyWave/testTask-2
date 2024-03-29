<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\tables\News */

$this->title = 'Update News: ' . $model->title;
$this->params['breadcrumbs'][] = ['label' => 'News', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->title, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="news-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('forms/_form', [
        'model' => $model,
        'themesList' => $themesList,
    ]) ?>

</div>
