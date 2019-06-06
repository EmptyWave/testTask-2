<?php

use yii\helpers\Html;
use yii\bootstrap\ActiveForm;

?>

<div class="site-login">

  <div class="col-lg-offset-4 col-lg-8">
    <h1><?= Html::encode($this->title) ?></h1>
    <p>Please fill out the following fields to login:</p>
  </div>

  <?php $form = ActiveForm::begin([
    'id' => 'login-form',
    'layout' => 'horizontal',
    'fieldConfig' => [
      'template' => "{label}\n<div class=\"col-lg-4\">{input}</div>\n<div class=\"col-lg-4\">{error}</div>",
      'labelOptions' => ['class' => 'col-lg-4 control-label'],
    ],
  ]); ?>

  <?= $form->field($model, 'username')->textInput(['autofocus' => true]) ?>

  <?= $form->field($model, 'password')->passwordInput() ?>

  <?= $form->field($model, 'rememberMe')->checkbox([
    'template' => "<div class=\"col-lg-offset-4 col-lg-4\">{input} {label}</div>\n<div class=\"col-lg-8\">{error}</div>",
  ]) ?>

  <div class="form-group">
    <div class="col-lg-offset-4 col-lg-8">
      <?= Html::submitButton('Login', ['class' => 'btn btn-primary', 'name' => 'login-button']) ?>
      <?= Html::a('Registration',
        ['/site/registration'],
        ['class' => 'btn btn-default', 'name' => 'registration-button']) ?>
    </div>
  </div>

  <?php ActiveForm::end(); ?>

</div>
