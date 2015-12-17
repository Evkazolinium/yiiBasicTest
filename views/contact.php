<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\ContactForm */
/* @var $form ActiveForm */
?>
<div class="contact">

    <?php $form = ActiveForm::begin(); ?>

        <?= $form->field($model, 'name') ?>
        <?= $form->field($model, 'phone') ?>
        <?= $form->field($model, 'message') ?>
        <?= $form->field($model, 'verifyCode') ?>
    
        <div class="form-group">
            <?= Html::submitButton('Submit', ['class' => 'btn btn-primary']) ?>
        </div>
    <?php ActiveForm::end(); ?>

</div><!-- contact -->
