<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "modelexp".
 *
 * @property integer $id_exp
 * @property integer $id_result
 * @property integer $num
 * @property integer $count
 * @property double $chance
 * @property string $date
 * @property string $time
 * @property string $name
 * @property integer $bones_num
 * @property integer $throws
 */
class Modelexp extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'modelexp';
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
            [['id_exp', 'num', 'count', 'chance'], 'required'],
            [['id_exp', 'id_result', 'num', 'count', 'bones_num', 'throws'], 'integer'],
            [['chance'], 'number'],
            [['date', 'time'], 'safe'],
            [['name'], 'string', 'max' => 30]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id_exp' => 'Id Exp',
            'id_result' => 'Id Result',
            'num' => 'Num',
            'count' => 'Count',
            'chance' => 'Chance',
            'date' => 'Date',
            'time' => 'Time',
            'name' => 'Name',
            'bones_num' => 'Bones Num',
            'throws' => 'Throws',
        ];
    }
}
