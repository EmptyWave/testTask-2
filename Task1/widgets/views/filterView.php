<?php

use yii\helpers\Url;

?>

<?php

switch ($type) {
  case 'date':
    ?>

    <div class="filter-box">
      <h5>Дата</h5>
      <?
      foreach ($list as $year => $date):?>
        <a href="<?= Url::to(['', 'y' => $year]) ?>"
           class="filter__link filter__link__label"><?= $year ?></a>
        <ul class="filter__category">
          <?
          foreach ($date as $monthNum => $month):?>
            <li>
              <a href="<?= Url::to(['', 'y' => $year, 'm' => $monthNum]) ?>"
                 class="filter__link"><?= $month['name'] . ' (' . $month['count'] . ')' ?></a>
            </li>
          <? endforeach; ?>
        </ul>
      <? endforeach; ?>
    </div>

    <?php break;

  case 'themes':
    ?>

    <div class="filter-box">
      <h5>Тема</h5>
      <ul class="filter__category">
        <?
        foreach ($list as $id => $theme):?>
          <li>
            <a href="<?= Url::to(['', 't' => $id]) ?>"
               class="filter__link"><?= $theme['theme_title'].' ('.$theme['count'].')' ?></a>
          </li>
        <? endforeach; ?>
      </ul>
    </div>

    <?php break;
}

?>
