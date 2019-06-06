<?php

use yii\helpers\Html;
use yii\helpers\Url;

/* @var $this yii\web\View */
/* @var $model app\models\tables\News */

$this->title = $model['title'];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>

<a href="<?= Url::to(['news/view', 'id' => $model['id']]) ?>"
   class="news-view__link <?= $link ? '' : 'disabled w60' ?>">
  <div class="news-view <?= $link ? 'news-view__hover' : '' ?>">
    <div class="news-view__row">
      <div class="news-view__info">
        <h4><?= $model['title'] ?></h4>
        <p><?= $model['theme_title'] ?></p>
      </div>
      <?php if (!Yii::$app->user->isGuest): ?>
        <div class="news-view__btn-box">
        </div>
      <?php endif; ?>

    </div>
    <p class="<?= $link ? 'news-view__description__cut' : '' ?>"><?= 'Description: ' . $model['text'] ?></p>
    <div class="news-view__row">
      <p><?= $model['date'] ?></p>
    </div>
  </div>
</a>
