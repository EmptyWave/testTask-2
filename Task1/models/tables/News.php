<?php

namespace app\models\tables;


/**
 * This is the model class for table "news".
 *
 * @property int $id
 * @property string $date
 * @property int $theme_id
 * @property string $text
 * @property string $title
 *
 * @property Themes $theme
 */
class News extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'news';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['date', 'theme_id', 'text', 'title'], 'required'],
            [['date'], 'safe'],
            [['theme_id'], 'integer'],
            [['text'], 'string'],
            [['title'], 'string', 'max' => 255],
            [['theme_id'], 'exist', 'skipOnError' => true, 'targetClass' => Themes::className(), 'targetAttribute' => ['theme_id' => 'id']],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'date' => 'Date',
            'theme_id' => 'Theme',
            'text' => 'Text',
            'title' => 'Title',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getTheme()
    {
        return $this->hasOne(Themes::class, ['id' => 'theme_id']);
    }
}
