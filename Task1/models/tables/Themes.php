<?php

namespace app\models\tables;

use Yii;

/**
 * This is the model class for table "themes".
 *
 * @property int $id
 * @property string $theme_title
 *
 * @property News[] $news
 */
class Themes extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'themes';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id', 'theme_title'], 'required'],
            [['id'], 'integer'],
            [['theme_title'], 'string', 'max' => 255],
            [['id'], 'unique'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'theme_title' => 'Theme Title',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getNews()
    {
        return $this->hasMany(News::className(), ['theme_id' => 'id']);
    }

    public function getThemesList(){
      return static::find()
        ->select(['theme_title'])
        ->indexBy('id')
        ->column();
    }
}
