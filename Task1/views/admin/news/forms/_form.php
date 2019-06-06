<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\tables\News */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="news-form">

  <?php $form = ActiveForm::begin(); ?>

  <div class="col-lg-12">
    <?= $form->field($model, 'title')->textInput(['maxlength' => true]) ?>
  </div>

  <div class="col-lg-6">
    <?= $form->field($model, 'date')->widget(\yii\jui\DatePicker::class, [
      'options' => ['class' => 'form-control'],
      'clientOptions' =>[
        'dateFormat' => 'yyyy-MM-dd',
      ],
    ]) ?>
  </div>

  <div class="col-lg-6">
    <?= $form->field($model, 'theme_id')->dropDownList($themesList)->label('Theme') ?>
  </div>

  <div class="col-lg-12">
    <?= $form->field($model, 'text')->textarea(['rows' => 12]) ?>
  </div>
  <div class="form-group col-lg-12">
    <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
  </div>

  <?php ActiveForm::end(); ?>

</div>
