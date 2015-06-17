<?php

use yii\helpers\Html;
use yii\grid\GridView;
use yii\grid\CheckboxColumn;
use yii\grid\DataColumn;
use yii\grid\ActionColumn;
use yii\helpers\Url;

/* @var $this yii\web\View */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Эксперименты';
$this->params['breadcrumbs'][] = ['label' => 'Experiment', 'url' => ['view']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="experiment-index" ">

    <h1><?= Html::encode($this->title) ?></h1>
<? //var_dump($dataProvider);?>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        //'selectionChanged'=>'function(){ location.href = ($(".selected td a:first").attr("href"));}',
        'rowOptions' => [],
        'columns' => [
//            ['class' => 'yii\grid\SerialColumn'],
            [
                'attribute'=>'id_exp',
                'format'=>'raw',
                'value'=> function($data){
                    return Html::a($data->id_exp, Url::to(['view', 'id_exp' => $data->id_exp]));
                },
            ],
            //'id_exp',
            'date',
            'time',
            'name',
            'bones_num',
            'throws',
            /*[
                'class'=> ActionColumn::className(),
                'template'=>'{view}',
               ],
            ['class' => DataColumn::className()],
            ['class' => CheckboxColumn::className()],*/
        ],
    ]); ?>



</div>
<script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
<script type="text/javascript">
    function go_to(){
        href = this.firstChild.firstChild.getAttribute('href');
        document.location.href = href;
    }

    tr = $('tbody tr');
    tr.click(go_to);

    $.each(tr,function(){
        this.setAttribute('style','cursor: pointer')
    });
</script>
