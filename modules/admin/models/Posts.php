<?php

namespace app\modules\admin\models;

use Yii;

/**
 * This is the model class for table "posts".
 *
 * @property integer $id
 * @property string $title
 * @property string $date
 * @property string $text
 * @property string $text_previe
 * @property string $img
 */
class Posts extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'posts';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['title', 'text', 'text_previe', 'img'], 'required'],
            [['date'], 'safe'],
            [['text'], 'string'],
            [['title'], 'string', 'max' => 150],
            [['text_previe', 'img'], 'string', 'max' => 250]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'title' => 'Title',
            'date' => 'Date',
            'text' => 'Text',
            'text_previe' => 'Text Previe',
            'img' => 'Img',
        ];
    }
}
