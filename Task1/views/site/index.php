<?php

$this->title = 'News+';
?>
<div class="news-container">
  <div class="filter-list">
  <?= \app\widgets\FilterView::widget([
    'list' => $dateList,
    'type' => 'date',
  ]) ?>

  <?= \app\widgets\FilterView::widget([
    'list' => $themesList,
    'type' => 'themes',
  ]) ?>
  </div>

  <?= yii\widgets\ListView::widget([
    'dataProvider' => $dataProvider,
    'options' => [
      'tag' => 'div',
      'class' => 'news-list',
      'id' => 'news-list',
    ],
    'summary' => "",
    'itemView' => function($model){
      return \app\widgets\NewsView::widget(['model' => $model]);
    },
    'itemOptions' => [
      'tag' => false,
    ],
    'viewParams' => [
      'hide' => true
    ]
  ]);
  ?>
</div>



