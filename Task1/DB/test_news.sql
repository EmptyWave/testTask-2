-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 14 2019 г., 01:20
-- Версия сервера: 5.6.41
-- Версия PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `test_news`
--

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `theme_id` int(11) NOT NULL,
  `text` text NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`id`, `date`, `theme_id`, `text`, `title`) VALUES
(1, '2019-05-14', 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut vitae turpis velit. Curabitur eleifend risus in faucibus consequat. Phasellus finibus est non neque feugiat vehicula. In malesuada a arcu eget egestas. Sed ut neque non dolor suscipit volutpat. Vestibulum bibendum arcu vel odio dignissim, quis pulvinar risus aliquet. Quisque rutrum felis faucibus sem rutrum porttitor. Aenean arcu ex, ultricies sed rhoncus eget, luctus sit amet tellus. Aliquam nulla nunc, commodo at ullamcorper vitae, iaculis id augue. Vestibulum felis mi, ultricies eget ultrices vitae, molestie nec dui. Phasellus feugiat justo a mattis tristique. Sed a augue a lorem tempor convallis.\r\n\r\nDonec cursus, urna aliquam iaculis lacinia, est ex tincidunt tortor, porta vulputate nisl eros sed lacus. In hac habitasse platea dictumst. Quisque tellus odio, euismod at porttitor quis, venenatis ut elit. Nunc porta sagittis nibh, in blandit nibh fringilla vel. Vestibulum vitae imperdiet sapien, sed scelerisque arcu. Praesent auctor consequat egestas. Aenean dictum at lectus et pellentesque. Aliquam sed justo viverra, feugiat nisi id, facilisis augue. Suspendisse potenti. Integer nec ipsum magna. Integer vulputate, quam sed ultricies consequat, dolor urna mattis magna, in rhoncus quam nunc eget lectus. Nunc tincidunt consectetur mi, id egestas tellus sodales sed. Sed pharetra eros justo, vel rhoncus nunc posuere eget. Duis aliquam, lectus et fermentum egestas, diam nisl pharetra justo, quis vehicula ex lectus at augue. Cras in nulla a diam vulputate blandit.\r\n\r\nUt a mauris id nunc ornare ultrices ac vitae lectus. Phasellus eu imperdiet diam. Nulla ac pulvinar tortor. Mauris condimentum sollicitudin aliquet. Ut sed molestie nunc. Maecenas et nisl sem. Praesent purus neque, lobortis vel tortor vel, fermentum tincidunt dui. Aliquam luctus eros nec auctor sagittis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.\r\n\r\nCurabitur odio libero, commodo sed laoreet ut, luctus in justo. In et arcu at orci iaculis mattis at et tortor. Nunc gravida sapien sit amet nisl tempus, at auctor ipsum mattis. Ut ut eros ex. Pellentesque et arcu et ligula egestas faucibus. Maecenas ac fermentum odio, a scelerisque purus. Aenean volutpat interdum leo a tincidunt. Aenean dignissim commodo eros, hendrerit auctor nulla posuere nec. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nunc quis faucibus nulla. Quisque ipsum erat, viverra ut pharetra ac, molestie sed ante. Curabitur euismod, odio id malesuada iaculis, neque dolor placerat nisl, quis facilisis orci dui vel nulla. Phasellus ut erat id arcu finibus scelerisque. Donec lobortis vel libero a sollicitudin.\r\n\r\nCurabitur quis dictum magna. In faucibus auctor dolor eu blandit. Sed gravida aliquet augue porttitor luctus. Mauris vehicula neque risus, at consequat felis ultrices eu. Nunc posuere lectus non pretium scelerisque. Integer vel libero venenatis, gravida nulla nec, tincidunt felis. Ut ultrices enim id risus finibus dapibus. Morbi lobortis quam at risus lobortis, eu scelerisque ipsum varius.', 'News #1'),
(2, '2019-05-13', 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut vitae turpis velit. Curabitur eleifend risus in faucibus consequat. Phasellus finibus est non neque feugiat vehicula. In malesuada a arcu eget egestas. Sed ut neque non dolor suscipit volutpat. Vestibulum bibendum arcu vel odio dignissim, quis pulvinar risus aliquet. Quisque rutrum felis faucibus sem rutrum porttitor. Aenean arcu ex, ultricies sed rhoncus eget, luctus sit amet tellus. Aliquam nulla nunc, commodo at ullamcorper vitae, iaculis id augue. Vestibulum felis mi, ultricies eget ultrices vitae, molestie nec dui. Phasellus feugiat justo a mattis tristique. Sed a augue a lorem tempor convallis.\r\n\r\nDonec cursus, urna aliquam iaculis lacinia, est ex tincidunt tortor, porta vulputate nisl eros sed lacus. In hac habitasse platea dictumst. Quisque tellus odio, euismod at porttitor quis, venenatis ut elit. Nunc porta sagittis nibh, in blandit nibh fringilla vel. Vestibulum vitae imperdiet sapien, sed scelerisque arcu. Praesent auctor consequat egestas. Aenean dictum at lectus et pellentesque. Aliquam sed justo viverra, feugiat nisi id, facilisis augue. Suspendisse potenti. Integer nec ipsum magna. Integer vulputate, quam sed ultricies consequat, dolor urna mattis magna, in rhoncus quam nunc eget lectus. Nunc tincidunt consectetur mi, id egestas tellus sodales sed. Sed pharetra eros justo, vel rhoncus nunc posuere eget. Duis aliquam, lectus et fermentum egestas, diam nisl pharetra justo, quis vehicula ex lectus at augue. Cras in nulla a diam vulputate blandit.\r\n\r\nUt a mauris id nunc ornare ultrices ac vitae lectus. Phasellus eu imperdiet diam. Nulla ac pulvinar tortor. Mauris condimentum sollicitudin aliquet. Ut sed molestie nunc. Maecenas et nisl sem. Praesent purus neque, lobortis vel tortor vel, fermentum tincidunt dui. Aliquam luctus eros nec auctor sagittis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.', 'News #2'),
(3, '2019-04-26', 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut vitae turpis velit. Curabitur eleifend risus in faucibus consequat. Phasellus finibus est non neque feugiat vehicula. In malesuada a arcu eget egestas. Sed ut neque non dolor suscipit volutpat. Vestibulum bibendum arcu vel odio dignissim, quis pulvinar risus aliquet. Quisque rutrum felis faucibus sem rutrum porttitor. Aenean arcu ex, ultricies sed rhoncus eget, luctus sit amet tellus. Aliquam nulla nunc, commodo at ullamcorper vitae, iaculis id augue. Vestibulum felis mi, ultricies eget ultrices vitae, molestie nec dui. Phasellus feugiat justo a mattis tristique. Sed a augue a lorem tempor convallis.\r\n\r\nDonec cursus, urna aliquam iaculis lacinia, est ex tincidunt tortor, porta vulputate nisl eros sed lacus. In hac habitasse platea dictumst. Quisque tellus odio, euismod at porttitor quis, venenatis ut elit. Nunc porta sagittis nibh, in blandit nibh fringilla vel. Vestibulum vitae imperdiet sapien, sed scelerisque arcu. Praesent auctor consequat egestas. Aenean dictum at lectus et pellentesque. Aliquam sed justo viverra, feugiat nisi id, facilisis augue. Suspendisse potenti. Integer nec ipsum magna. Integer vulputate, quam sed ultricies consequat, dolor urna mattis magna, in rhoncus quam nunc eget lectus. Nunc tincidunt consectetur mi, id egestas tellus sodales sed. Sed pharetra eros justo, vel rhoncus nunc posuere eget. Duis aliquam, lectus et fermentum egestas, diam nisl pharetra justo, quis vehicula ex lectus at augue. Cras in nulla a diam vulputate blandit.', 'News #3'),
(4, '2019-06-22', 4, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut vitae turpis velit. Curabitur eleifend risus in faucibus consequat. Phasellus finibus est non neque feugiat vehicula. In malesuada a arcu eget egestas. Sed ut neque non dolor suscipit volutpat. Vestibulum bibendum arcu vel odio dignissim, quis pulvinar risus aliquet. Quisque rutrum felis faucibus sem rutrum porttitor. Aenean arcu ex, ultricies sed rhoncus eget, luctus sit amet tellus. Aliquam nulla nunc, commodo at ullamcorper vitae, iaculis id augue. Vestibulum felis mi, ultricies eget ultrices vitae, molestie nec dui. Phasellus feugiat justo a mattis tristique. Sed a augue a lorem tempor convallis.\r\n\r\nDonec cursus, urna aliquam iaculis lacinia, est ex tincidunt tortor, porta vulputate nisl eros sed lacus. In hac habitasse platea dictumst. Quisque tellus odio, euismod at porttitor quis, venenatis ut elit. Nunc porta sagittis nibh, in blandit nibh fringilla vel. Vestibulum vitae imperdiet sapien, sed scelerisque arcu. Praesent auctor consequat egestas. Aenean dictum at lectus et pellentesque. Aliquam sed justo viverra, feugiat nisi id, facilisis augue. Suspendisse potenti. Integer nec ipsum magna. Integer vulputate, quam sed ultricies consequat, dolor urna mattis magna, in rhoncus quam nunc eget lectus. Nunc tincidunt consectetur mi, id egestas tellus sodales sed. Sed pharetra eros justo, vel rhoncus nunc posuere eget. Duis aliquam, lectus et fermentum egestas, diam nisl pharetra justo, quis vehicula ex lectus at augue. Cras in nulla a diam vulputate blandit.\r\n\r\nUt a mauris id nunc ornare ultrices ac vitae lectus. Phasellus eu imperdiet diam. Nulla ac pulvinar tortor. Mauris condimentum sollicitudin aliquet. Ut sed molestie nunc. Maecenas et nisl sem. Praesent purus neque, lobortis vel tortor vel, fermentum tincidunt dui. Aliquam luctus eros nec auctor sagittis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.', 'News #4'),
(5, '2019-05-05', 4, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut vitae turpis velit. Curabitur eleifend risus in faucibus consequat. Phasellus finibus est non neque feugiat vehicula. In malesuada a arcu eget egestas. Sed ut neque non dolor suscipit volutpat. Vestibulum bibendum arcu vel odio dignissim, quis pulvinar risus aliquet. Quisque rutrum felis faucibus sem rutrum porttitor. Aenean arcu ex, ultricies sed rhoncus eget, luctus sit amet tellus. Aliquam nulla nunc, commodo at ullamcorper vitae, iaculis id augue. Vestibulum felis mi, ultricies eget ultrices vitae, molestie nec dui. Phasellus feugiat justo a mattis tristique. Sed a augue a lorem tempor convallis.', 'News #5'),
(6, '2019-05-06', 4, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut vitae turpis velit. Curabitur eleifend risus in faucibus consequat. Phasellus finibus est non neque feugiat vehicula. In malesuada a arcu eget egestas. Sed ut neque non dolor suscipit volutpat. Vestibulum bibendum arcu vel odio dignissim, quis pulvinar risus aliquet. Quisque rutrum felis faucibus sem rutrum porttitor. Aenean arcu ex, ultricies sed rhoncus eget, luctus sit amet tellus. Aliquam nulla nunc, commodo at ullamcorper vitae, iaculis id augue. Vestibulum felis mi, ultricies eget ultrices vitae, molestie nec dui. Phasellus feugiat justo a mattis tristique. Sed a augue a lorem tempor convallis.', 'News #6');

-- --------------------------------------------------------

--
-- Структура таблицы `themes`
--

CREATE TABLE `themes` (
  `id` int(11) NOT NULL,
  `theme_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `themes`
--

INSERT INTO `themes` (`id`, `theme_title`) VALUES
(1, 'Наука'),
(2, 'Спорт'),
(3, 'Интернет'),
(4, 'Авто'),
(5, 'Глямур'),
(6, 'Искусство');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_themes_news_idx` (`theme_id`) USING BTREE;

--
-- Индексы таблицы `themes`
--
ALTER TABLE `themes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `fk_themes_news` FOREIGN KEY (`theme_id`) REFERENCES `themes` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
