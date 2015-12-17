<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "contact_message".
 *
 * @property integer $id
 * @property string $message
 * @property string $date
 * @property string $name
 * @property integer $phone
 */
class ContactForm extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'contact_message';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['message', 'name', 'phone'], 'required'],
            [['date'], 'safe'],
            [['phone'], 'integer'],
            [['message', 'name'], 'string', 'max' => 250]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'message' => 'Message',
            'date' => 'Date',
            'name' => 'Name',
            'phone' => 'Phone',
        ];
    }
}
