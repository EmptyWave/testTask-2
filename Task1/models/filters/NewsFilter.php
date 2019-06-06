<?php

namespace app\models\filters;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\tables\News;
use yii\data\SqlDataProvider;

/**
 * AdminNewsFilter represents the model behind the search form of `app\models\tables\News`.
 */
class NewsFilter extends News
{
  public $y;
  public $m;
  public $t;

  public function rules()
  {
    return [
      [['theme_id'], 'integer'],
      [['date'], 'safe'],
    ];
  }

  public function scenarios()
  {
    return Model::scenarios();
  }

  public function search($params)
  {
    $this->load($params);
    $sql = 'SELECT * FROM news';
    $sql .= ' INNER JOIN themes ON news.theme_id = themes.id';
    $sqlCount = 'SELECT COUNT(*) FROM news';
    $params1 = [];

    if (isset($params['y'])){
      $sql .= " WHERE YEAR(date) = :year";
      $sqlCount .= " WHERE YEAR(date) = :year";
      $params1[':year'] = $params['y'];
      if (isset($params['m'])){
        $sql .= " AND MONTH(date) = :month";
        $sqlCount .= " AND MONTH(date) = :month";
        $params1[':month'] = $params['m'];
      }
    } elseif (isset($params['t'])){
      $sql .= " WHERE theme_id = :theme_id";
      $sqlCount .= " WHERE theme_id = :theme_id";
      $params1[':theme_id'] = $params['t'];
    }

    $count = Yii::$app->db->createCommand($sqlCount, $params1)->queryScalar();

    $sql .= " ORDER BY news.date DESC";

    $dataProvider = new SqlDataProvider([
      'sql' => $sql,
      'params' => $params1,
      'totalCount' => $count,
      'pagination' => [
        'pageSize' => 5,
      ],
    ]);

    return $dataProvider;
  }
}
