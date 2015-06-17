<?php

use yii\helpers\Html;
use yii\bootstrap\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\Results */

$this->title = 'Create Experiment';
$this->params['breadcrumbs'][] = ['label' => 'Results', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="experiment-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?php $form = ActiveForm::begin(['id' => 'login-form']); ?>
    <?= $form->field($model, 'name')->textInput(['value'=>'user']) ?>
    <?= $form->field($model, 'bones_num')->textInput(['value'=>'2']) ?>
    <?= $form->field($model, 'faces')->textInput(['value'=>'6']) ?>
    <?= $form->field($model, 'throws')->textInput(['value'=>'36000']) ?>
    <div class="form-group">
        <?= Html::submitButton('Выполнить эксперимент', ['class' => 'btn btn-primary', 'name' => 'login-button']) ?>
    </div>
    <?php ActiveForm::end(); ?>

</div>
