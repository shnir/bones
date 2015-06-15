<?php

use yii\helpers\Html;
use yii\grid\GridView;
use yii\widgets\DetailView;

function nod($a,$b){  //Нахождение наибольшего общего делителя
    if ($a>$b){
        if ($a%$b) return nod($a%$b,$b);
        else return $b;
    }
    else {
        if ($b%$a) return nod($b%$a,$a);
        else return $a;
    }
}

/* @var $this yii\web\View */
/* @var $model app\models\Results */

$this->title = "Эксперимент № $exp->id_exp";
$this->params['breadcrumbs'][] = ['label' => 'Results', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="results-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <? //var_dump($exp);
        //var_dump($dataProvider);?>
        <?= GridView::widget([
            'dataProvider' => $results,
            //'selectionChanged'=>'function(){ location.href = ($(".selected td a:first").attr("href"));}',
            'columns' => [
//            ['class' => 'yii\grid\SerialColumn'],
                //'id_exp',
                'num',
                'count',
                'idExp.throws',
                [
                    'label'=>'% соотношение',
                    'format'=>'raw',
                    'value'=> function($data){
                        return number_format($data['count'] / $data['idExp']['throws'] * 100, 3);
                    },
                ],
                [
                    'label'=>'Дробное соотношение',
                    'format'=>'raw',
                    'value'=> function($data){
                        return $data['count']/nod($data['count'],$data['idExp']['throws'])." / ".$data['idExp']['throws']/nod($data['count'],$data['idExp']['throws']);
                    },
                ],
//            [
//                'class'=> ActionColumn::className(),
//                'template'=>'{view}',
//               ],
//            ['class' => DataColumn::className()],
//            ['class' => CheckboxColumn::className()],
            ],
        ]); ?>

        <?//= Html::a('Update', ['update', 'id' => $model->id_result], ['class' => 'btn btn-primary']) ?>
        <?/*= Html::a('Delete', ['delete', 'id' => $model->id_result], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => 'Are you sure you want to delete this item?',
                'method' => 'post',
            ],
        ]) */?>
    </p>

    <?/*= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id_result',
            'num',
            'count',
            'id_exp',
        ],
    ]) */?>

</div>
