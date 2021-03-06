<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "experiment".
 *
 * @property integer $id_exp
 * @property string $date
 * @property string $time
 * @property string $name
 * @property integer $bones_num
 * @property integer $throws
 *
 * @property Results[] $results
 */
//use yii\db\ActiveRecord;
class Experiment extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'experiment';
    }

    /**
     * @return \yii\db\Connection the database connection used by this AR class.
     */
    public static function getDb()
    {
        return Yii::$app->get('db_bones');
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['date', 'time', 'name', 'bones_num', 'faces', 'throws'], 'required'],
            [['date', 'time'], 'safe'],
            [['bones_num', 'faces', 'throws'], 'integer'],
            [['name'], 'string', 'max' => 30]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id_exp' => 'Номер эксперимента',
            'date' => 'Дата проведения',
            'time' => 'Время проведения',
            'name' => 'Экспериментатор',
            'bones_num' => 'Количество костей',
            'faces' => 'Количество граней',
            'throws' => 'Количество бросков',
        ];
    }

    /** new experiment */

    public function create(){
        $num[]=$this->throws;
        $num[]=$this->bones_num;
        $num[]=$this->faces;
        //return $num;
        for ($i = 0; $i < $this->throws; $i++) {
            $sum = 0;
            for ($j = 0; $j < $this->bones_num; $j++)
                $sum += rand(1, $this->faces);
            @$num[$sum]++;
        }
        sort($num);
        return $num;
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getResults()
{
return $this->hasMany(Results::className(), ['id_exp' => 'id_exp']);
}
}
