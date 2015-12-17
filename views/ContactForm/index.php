<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel app\models\ContactFormSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Contact Forms';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="contact-form-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('Create Contact Form', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'id',
            'message',
            'date',
            'name',
            'phone',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>

</div>
