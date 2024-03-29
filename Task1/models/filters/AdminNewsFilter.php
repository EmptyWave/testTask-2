<?php

namespace app\models\filters;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\tables\News;

/**
 * AdminNewsFilter represents the model behind the search form of `app\models\tables\News`.
 */
class AdminNewsFilter extends News
{
  /**
   * {@inheritdoc}
   */
  public function rules()
  {
    return [
      [['theme_id'], 'integer'],
      [['date'], 'safe'],
    ];
  }

  /**
   * {@inheritdoc}
   */
  public function scenarios()
  {
    // bypass scenarios() implementation in the parent class
    return Model::scenarios();
  }

  /**
   * Creates data provider instance with search query applied
   *
   * @param array $params
   *
   * @return ActiveDataProvider
   */
  public function search($params)
  {
    $query = News::find();

    // add conditions that should always apply here

    $dataProvider = new ActiveDataProvider([
      'query' => $query,
      'pagination' => [
        'pageSize' => 5,
      ],
      'sort' => [
        'defaultOrder' => [
          'date' => SORT_DESC,
        ]
      ],
    ]);

    $this->load($params);

    if (!$this->validate()) {
      // uncomment the following line if you do not want to return any records when validation fails
      // $query->where('0=1');
      return $dataProvider;
    }

    // grid filtering conditions
    $query->andFilterWhere([
      'id' => $this->id,
      'date' => $this->date,
      'theme_id' => $this->theme_id,
    ]);

    $query->andFilterWhere(['like', 'text', $this->text])
      ->andFilterWhere(['like', 'title', $this->title]);

    return $dataProvider;
  }
}
