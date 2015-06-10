<?php

use yii\helpers\Html;
use yii\grid\GridView;
use yii\grid\SerialColumn;
use yii\grid\CheckboxColumn;

/* @var $this yii\web\View */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Эксперименты';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="experiment-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'columns' => [
            //['class' => 'yii\grid\SerialColumn'],
            ['class' => SerialColumn::className()],

            'id_exp',
            'date',
            'time',
            'name',
            'bones_num',
            'throws',
            ['class' => CheckboxColumn::className()],
        ],
    ]); ?>

</div>
