<?php
/**
 * Created by PhpStorm.
 * User: dimon
 * Date: 06.06.2019
 * Time: 15:22
 */

namespace app\models;

use Yii;
use yii\base\Model;

class News extends Model
{
  public function getModel($id){
    $sql = 'SELECT *';
    $sql .= ' FROM news INNER JOIN themes ON news.theme_id = themes.id';
    $sql .= " WHERE news.id = {$id}";
    return Yii::$app->db->createCommand($sql)->queryOne();

  }

  public function getDateList(){
    $sql = 'SELECT news.date, COUNT(news.id)';
    $sql .= ' FROM news';
    $sql .= ' GROUP BY EXTRACT(YEAR_MONTH FROM news.date)';
    $sql .= ' ORDER BY news.date DESC';
    $news = Yii::$app->db->createCommand($sql)->queryAll();
    $dateList = [];
    foreach ($news as $date){
      $dateTime = new \DateTime($date['date']);
      $year = date_format($dateTime,'Y');
      $monthName = date_format($dateTime,'F');
      $monthNum = date_format($dateTime,'m');

      if (!isset($dateList[$year][$monthNum],$dateList)){
        $dateList[$year][$monthNum]['name'] = $monthName;
        $dateList[$year][$monthNum]['count'] = $date['COUNT(news.id)'];
      }
    }

    return $dateList;
  }

  public function getThemesList(){
    $sql = 'SELECT themes.id, themes.theme_title, COUNT(news.theme_id)';
    $sql .= ' FROM news INNER JOIN themes ON news.theme_id = themes.id';
    $sql .= ' GROUP BY news.theme_id';
    $themes = Yii::$app->db->createCommand($sql)->queryAll();
    $themesList = [];
    foreach ($themes as $theme){
      if (!isset($themesList[$theme['id']])){
        $themesList[$theme['id']]['theme_title'] = $theme['theme_title'];
        $themesList[$theme['id']]['count'] = $theme['COUNT(news.theme_id)'];
      }
    }
    return $themesList;
  }
}