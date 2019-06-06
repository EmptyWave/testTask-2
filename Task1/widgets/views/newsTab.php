<?php
use yii\helpers\Url;
?>

<a href="<?=Url::to(['news/view', 'id' => $model['id']])?>"
   class="news-view__link <?= $link?'':'disabled w60' ?>">
  <div class="news-view <?=$link?'news-view__hover':''?>">
    <div class="news-view__row">
      <h4><?= $model['title']?></h4>
      <p><?= $model['theme_title']?></p>
    </div>
    <p class="<?= $link?'news-view__description__cut':'' ?>"><?= 'Description: '.$model['text']?></p>
    <div class="news-view__row">
      <p><?= $model['date']?></p>
    </div>
  </div>
</a>