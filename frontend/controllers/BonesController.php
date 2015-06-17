<?php

namespace frontend\controllers;

use Yii;
use app\models\Results;
use app\models\Experiment;
use app\models\Modelexp;
use yii\data\ActiveDataProvider;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\data\Pagination;

/**
 * BonesController implements the CRUD actions for Results model.
 */
class BonesController extends Controller
{
    public function behaviors()
    {
        return [
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'delete' => ['post'],
                ],
            ],
        ];
    }

    public function actionExperiments(){
        $exp = Experiment::find();

        $results = new Results();

        $pagination = new Pagination([
            'defaultPageSize' => 20,
            'totalCount' => $exp->count(),
        ]);

        $experiments = $exp->offset($pagination->offset)
            ->limit($pagination->limit)
            ->all();

        return $this->render('index', [
            'experiments' => $experiments,
            'pagination' => $pagination,
        ]);
    }
    /**
     * Lists all experiment models.
     * @return mixed
     */
    public function actionIndex()
    {
        return $this->render('index');
    }


    /**
     * Displays Experiments and Results model.
     * @param integer $id
     * @return mixed
     */
    public function actionView()
    {
        if (false!==($id_exp = Yii::$app->request->get('id_exp'))){

            $exp = Experiment::findOne($id_exp);

            if(!$exp) {
                return "Не найден эксперимент!";
            }
            // compose the query

            $results = new ActiveDataProvider([
                'query' => Results::find()->where(['id_exp' => $id_exp]),
            ]);

            return $this->render('viewResult', [
                'exp' => $exp,
                'results' => $results,
            ]);
        }

        $dataProvider = new ActiveDataProvider([
            'query' => experiment::find(),
            'pagination' => [
                'pageSize' => 15,
            ],
        ]);

        return $this->render('viewExp', [
            'dataProvider' => $dataProvider,
        ]);
    }
    /**
     * Creates a new Results model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $exp = new Experiment();
        //$exp = Experiment::findOne($id_exp);

        if ($exp->load(Yii::$app->request->get())){

            $results = $exp->create();
            $exp->date = date("Y-m-d");
            $exp->time = date("H:i:s");
            $exp->save();
            foreach ($results as $key=>$count){
                $result = new Results();
                $result->count = $count;
                $result->id_exp = $exp->id_exp;
                $result->num = $key;
                $result->save();
            }

            return $this->redirect(['view', 'id_exp' => $exp->id_exp]);
        }
        else {
            return $this->render('create', [
                'model' => $exp,
            ]);
        }
    }

    /**
     * Updates an existing Results model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->id_result]);
        } else {
            return $this->render('update', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Deletes an existing Results model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     */
    public function actionDelete($id)
    {
        $this->findModel($id)->delete();

        return $this->redirect(['index']);
    }

    /**
     * Finds the Results model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Results the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Results::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }
}
