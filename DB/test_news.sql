-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 06 2019 г., 18:13
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
(1, '2019-05-12', 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut vitae turpis velit. Curabitur eleifend risus in faucibus consequat. Phasellus finibus est non neque feugiat vehicula. In malesuada a arcu eget egestas. Sed ut neque non dolor suscipit volutpat. Vestibulum bibendum arcu vel odio dignissim, quis pulvinar risus aliquet. Quisque rutrum felis faucibus sem rutrum porttitor. Aenean arcu ex, ultricies sed rhoncus eget, luctus sit amet tellus. Aliquam nulla nunc, commodo at ullamcorper vitae, iaculis id augue. Vestibulum felis mi, ultricies eget ultrices vitae, molestie nec dui. Phasellus feugiat justo a mattis tristique. Sed a augue a lorem tempor convallis.\r\n\r\nDonec cursus, urna aliquam iaculis lacinia, est ex tincidunt tortor, porta vulputate nisl eros sed lacus. In hac habitasse platea dictumst. Quisque tellus odio, euismod at porttitor quis, venenatis ut elit. Nunc porta sagittis nibh, in blandit nibh fringilla vel. Vestibulum vitae imperdiet sapien, sed scelerisque arcu. Praesent auctor consequat egestas. Aenean dictum at lectus et pellentesque. Aliquam sed justo viverra, feugiat nisi id, facilisis augue. Suspendisse potenti. Integer nec ipsum magna. Integer vulputate, quam sed ultricies consequat, dolor urna mattis magna, in rhoncus quam nunc eget lectus. Nunc tincidunt consectetur mi, id egestas tellus sodales sed. Sed pharetra eros justo, vel rhoncus nunc posuere eget. Duis aliquam, lectus et fermentum egestas, diam nisl pharetra justo, quis vehicula ex lectus at augue. Cras in nulla a diam vulputate blandit.\r\n\r\nUt a mauris id nunc ornare ultrices ac vitae lectus. Phasellus eu imperdiet diam. Nulla ac pulvinar tortor. Mauris condimentum sollicitudin aliquet. Ut sed molestie nunc. Maecenas et nisl sem. Praesent purus neque, lobortis vel tortor vel, fermentum tincidunt dui. Aliquam luctus eros nec auctor sagittis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.\r\n\r\nCurabitur odio libero, commodo sed laoreet ut, luctus in justo. In et arcu at orci iaculis mattis at et tortor. Nunc gravida sapien sit amet nisl tempus, at auctor ipsum mattis. Ut ut eros ex. Pellentesque et arcu et ligula egestas faucibus. Maecenas ac fermentum odio, a scelerisque purus. Aenean volutpat interdum leo a tincidunt. Aenean dignissim commodo eros, hendrerit auctor nulla posuere nec. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nunc quis faucibus nulla. Quisque ipsum erat, viverra ut pharetra ac, molestie sed ante. Curabitur euismod, odio id malesuada iaculis, neque dolor placerat nisl, quis facilisis orci dui vel nulla. Phasellus ut erat id arcu finibus scelerisque. Donec lobortis vel libero a sollicitudin.\r\n\r\nCurabitur quis dictum magna. In faucibus auctor dolor eu blandit. Sed gravida aliquet augue porttitor luctus. Mauris vehicula neque risus, at consequat felis ultrices eu. Nunc posuere lectus non pretium scelerisque. Integer vel libero venenatis, gravida nulla nec, tincidunt felis. Ut ultrices enim id risus finibus dapibus. Morbi lobortis quam at risus lobortis, eu scelerisque ipsum varius.', 'News #1'),
(2, '2019-05-13', 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut vitae turpis velit. Curabitur eleifend risus in faucibus consequat. Phasellus finibus est non neque feugiat vehicula. In malesuada a arcu eget egestas. Sed ut neque non dolor suscipit volutpat. Vestibulum bibendum arcu vel odio dignissim, quis pulvinar risus aliquet. Quisque rutrum felis faucibus sem rutrum porttitor. Aenean arcu ex, ultricies sed rhoncus eget, luctus sit amet tellus. Aliquam nulla nunc, commodo at ullamcorper vitae, iaculis id augue. Vestibulum felis mi, ultricies eget ultrices vitae, molestie nec dui. Phasellus feugiat justo a mattis tristique. Sed a augue a lorem tempor convallis.\r\n\r\nDonec cursus, urna aliquam iaculis lacinia, est ex tincidunt tortor, porta vulputate nisl eros sed lacus. In hac habitasse platea dictumst. Quisque tellus odio, euismod at porttitor quis, venenatis ut elit. Nunc porta sagittis nibh, in blandit nibh fringilla vel. Vestibulum vitae imperdiet sapien, sed scelerisque arcu. Praesent auctor consequat egestas. Aenean dictum at lectus et pellentesque. Aliquam sed justo viverra, feugiat nisi id, facilisis augue. Suspendisse potenti. Integer nec ipsum magna. Integer vulputate, quam sed ultricies consequat, dolor urna mattis magna, in rhoncus quam nunc eget lectus. Nunc tincidunt consectetur mi, id egestas tellus sodales sed. Sed pharetra eros justo, vel rhoncus nunc posuere eget. Duis aliquam, lectus et fermentum egestas, diam nisl pharetra justo, quis vehicula ex lectus at augue. Cras in nulla a diam vulputate blandit.\r\n\r\nUt a mauris id nunc ornare ultrices ac vitae lectus. Phasellus eu imperdiet diam. Nulla ac pulvinar tortor. Mauris condimentum sollicitudin aliquet. Ut sed molestie nunc. Maecenas et nisl sem. Praesent purus neque, lobortis vel tortor vel, fermentum tincidunt dui. Aliquam luctus eros nec auctor sagittis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.', 'News #2'),
(3, '2019-04-26', 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut vitae turpis velit. Curabitur eleifend risus in faucibus consequat. Phasellus finibus est non neque feugiat vehicula. In malesuada a arcu eget egestas. Sed ut neque non dolor suscipit volutpat. Vestibulum bibendum arcu vel odio dignissim, quis pulvinar risus aliquet. Quisque rutrum felis faucibus sem rutrum porttitor. Aenean arcu ex, ultricies sed rhoncus eget, luctus sit amet tellus. Aliquam nulla nunc, commodo at ullamcorper vitae, iaculis id augue. Vestibulum felis mi, ultricies eget ultrices vitae, molestie nec dui. Phasellus feugiat justo a mattis tristique. Sed a augue a lorem tempor convallis.\r\n\r\nDonec cursus, urna aliquam iaculis lacinia, est ex tincidunt tortor, porta vulputate nisl eros sed lacus. In hac habitasse platea dictumst. Quisque tellus odio, euismod at porttitor quis, venenatis ut elit. Nunc porta sagittis nibh, in blandit nibh fringilla vel. Vestibulum vitae imperdiet sapien, sed scelerisque arcu. Praesent auctor consequat egestas. Aenean dictum at lectus et pellentesque. Aliquam sed justo viverra, feugiat nisi id, facilisis augue. Suspendisse potenti. Integer nec ipsum magna. Integer vulputate, quam sed ultricies consequat, dolor urna mattis magna, in rhoncus quam nunc eget lectus. Nunc tincidunt consectetur mi, id egestas tellus sodales sed. Sed pharetra eros justo, vel rhoncus nunc posuere eget. Duis aliquam, lectus et fermentum egestas, diam nisl pharetra justo, quis vehicula ex lectus at augue. Cras in nulla a diam vulputate blandit.', 'News #3'),
(4, '2019-06-22', 6, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut vitae turpis velit. Curabitur eleifend risus in faucibus consequat. Phasellus finibus est non neque feugiat vehicula. In malesuada a arcu eget egestas. Sed ut neque non dolor suscipit volutpat. Vestibulum bibendum arcu vel odio dignissim, quis pulvinar risus aliquet. Quisque rutrum felis faucibus sem rutrum porttitor. Aenean arcu ex, ultricies sed rhoncus eget, luctus sit amet tellus. Aliquam nulla nunc, commodo at ullamcorper vitae, iaculis id augue. Vestibulum felis mi, ultricies eget ultrices vitae, molestie nec dui. Phasellus feugiat justo a mattis tristique. Sed a augue a lorem tempor convallis.\r\n\r\nDonec cursus, urna aliquam iaculis lacinia, est ex tincidunt tortor, porta vulputate nisl eros sed lacus. In hac habitasse platea dictumst. Quisque tellus odio, euismod at porttitor quis, venenatis ut elit. Nunc porta sagittis nibh, in blandit nibh fringilla vel. Vestibulum vitae imperdiet sapien, sed scelerisque arcu. Praesent auctor consequat egestas. Aenean dictum at lectus et pellentesque. Aliquam sed justo viverra, feugiat nisi id, facilisis augue. Suspendisse potenti. Integer nec ipsum magna. Integer vulputate, quam sed ultricies consequat, dolor urna mattis magna, in rhoncus quam nunc eget lectus. Nunc tincidunt consectetur mi, id egestas tellus sodales sed. Sed pharetra eros justo, vel rhoncus nunc posuere eget. Duis aliquam, lectus et fermentum egestas, diam nisl pharetra justo, quis vehicula ex lectus at augue. Cras in nulla a diam vulputate blandit.\r\n\r\nUt a mauris id nunc ornare ultrices ac vitae lectus. Phasellus eu imperdiet diam. Nulla ac pulvinar tortor. Mauris condimentum sollicitudin aliquet. Ut sed molestie nunc. Maecenas et nisl sem. Praesent purus neque, lobortis vel tortor vel, fermentum tincidunt dui. Aliquam luctus eros nec auctor sagittis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.', 'News #4'),
(5, '2019-05-05', 4, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut vitae turpis velit. Curabitur eleifend risus in faucibus consequat. Phasellus finibus est non neque feugiat vehicula. In malesuada a arcu eget egestas. Sed ut neque non dolor suscipit volutpat. Vestibulum bibendum arcu vel odio dignissim, quis pulvinar risus aliquet. Quisque rutrum felis faucibus sem rutrum porttitor. Aenean arcu ex, ultricies sed rhoncus eget, luctus sit amet tellus. Aliquam nulla nunc, commodo at ullamcorper vitae, iaculis id augue. Vestibulum felis mi, ultricies eget ultrices vitae, molestie nec dui. Phasellus feugiat justo a mattis tristique. Sed a augue a lorem tempor convallis.', 'News #5'),
(6, '2019-05-06', 4, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut vitae turpis velit. Curabitur eleifend risus in faucibus consequat. Phasellus finibus est non neque feugiat vehicula. In malesuada a arcu eget egestas. Sed ut neque non dolor suscipit volutpat. Vestibulum bibendum arcu vel odio dignissim, quis pulvinar risus aliquet. Quisque rutrum felis faucibus sem rutrum porttitor. Aenean arcu ex, ultricies sed rhoncus eget, luctus sit amet tellus. Aliquam nulla nunc, commodo at ullamcorper vitae, iaculis id augue. Vestibulum felis mi, ultricies eget ultrices vitae, molestie nec dui. Phasellus feugiat justo a mattis tristique. Sed a augue a lorem tempor convallis.', 'News #6'),
(7, '2018-10-19', 5, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras dignissim, enim sit amet rutrum posuere, justo lorem posuere ligula, vitae eleifend enim libero eu quam. Vivamus eleifend facilisis malesuada. Cras eget sem felis. Vivamus erat diam, finibus in ornare ut, fringilla sit amet leo. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Ut rhoncus in est sit amet facilisis. Integer non risus ut erat cursus molestie vel vel odio. Aliquam erat volutpat. Sed molestie, velit at mattis feugiat, ligula ex scelerisque lorem, a efficitur sapien elit id eros. Curabitur commodo sollicitudin diam, sed sodales nisi. Cras diam dui, posuere varius tincidunt vitae, imperdiet a enim. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Maecenas blandit purus non erat lacinia gravida. Aliquam in nulla ullamcorper, facilisis arcu at, dictum lorem.\r\n\r\nCurabitur nisl nibh, tincidunt nec velit a, blandit feugiat massa. Donec tempus vitae ante vel varius. Fusce non feugiat dui. Sed gravida, velit eu fringilla mollis, nulla ligula aliquet nisi, id posuere elit est sit amet nisl. Vivamus maximus blandit metus. In ante ipsum, aliquet et elit eget, vehicula consectetur erat. Quisque sed scelerisque justo. Morbi eu tellus pulvinar, feugiat ex ac, finibus eros. Phasellus dapibus, felis vitae posuere viverra, massa massa vulputate erat, sed gravida dui nisi et quam.\r\n\r\nDonec turpis odio, molestie sit amet magna vel, gravida congue velit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam sit amet iaculis mi. Nullam rutrum elit sit amet est egestas efficitur. Integer pretium posuere laoreet. Suspendisse et lacinia odio. Nunc odio neque, mattis a semper eu, luctus a elit. Aenean ornare tempus metus a dignissim. Integer ex nisi, rhoncus in ipsum et, molestie porta neque. Quisque lacinia sodales magna sed vulputate. Phasellus sem odio, rutrum non tincidunt in, placerat ac justo. Sed mi massa, cursus quis imperdiet eget, semper in sem. Nunc ut tellus neque. Sed a sapien at nisi sagittis placerat sed quis nisl.\r\n\r\nIn non accumsan tortor. Mauris quam ligula, imperdiet vitae aliquam accumsan, ornare nec nisi. Suspendisse viverra semper mattis. Morbi sollicitudin neque et tincidunt condimentum. Etiam auctor pharetra velit, blandit elementum mauris viverra et. Donec egestas justo non viverra lacinia. Aliquam lobortis lorem ligula, vel vulputate neque facilisis non. Praesent quis vulputate libero. Pellentesque vitae auctor ipsum. Ut bibendum dignissim suscipit. Interdum et malesuada fames ac ante ipsum primis in faucibus. Donec porta quis massa nec efficitur. Quisque malesuada ex vel elementum auctor.\r\n\r\nDonec iaculis lacus id elit blandit tempus. Suspendisse leo diam, maximus et nisl sed, lacinia accumsan augue. Pellentesque eleifend nulla vel ipsum bibendum vestibulum. Nunc erat metus, dignissim quis nisl at, dictum finibus felis. In massa arcu, cursus a velit ac, sollicitudin dictum nisl. Integer placerat lacus id diam euismod, vitae tempus ante consequat. Integer eleifend ipsum elit, non semper mi lacinia a. In hac habitasse platea dictumst.', 'News #7'),
(8, '2017-06-07', 4, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras dignissim, enim sit amet rutrum posuere, justo lorem posuere ligula, vitae eleifend enim libero eu quam. Vivamus eleifend facilisis malesuada. Cras eget sem felis. Vivamus erat diam, finibus in ornare ut, fringilla sit amet leo. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Ut rhoncus in est sit amet facilisis. Integer non risus ut erat cursus molestie vel vel odio. Aliquam erat volutpat. Sed molestie, velit at mattis feugiat, ligula ex scelerisque lorem, a efficitur sapien elit id eros. Curabitur commodo sollicitudin diam, sed sodales nisi. Cras diam dui, posuere varius tincidunt vitae, imperdiet a enim. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Maecenas blandit purus non erat lacinia gravida. Aliquam in nulla ullamcorper, facilisis arcu at, dictum lorem.\r\n\r\nCurabitur nisl nibh, tincidunt nec velit a, blandit feugiat massa. Donec tempus vitae ante vel varius. Fusce non feugiat dui. Sed gravida, velit eu fringilla mollis, nulla ligula aliquet nisi, id posuere elit est sit amet nisl. Vivamus maximus blandit metus. In ante ipsum, aliquet et elit eget, vehicula consectetur erat. Quisque sed scelerisque justo. Morbi eu tellus pulvinar, feugiat ex ac, finibus eros. Phasellus dapibus, felis vitae posuere viverra, massa massa vulputate erat, sed gravida dui nisi et quam.\r\n\r\nDonec turpis odio, molestie sit amet magna vel, gravida congue velit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam sit amet iaculis mi. Nullam rutrum elit sit amet est egestas efficitur. Integer pretium posuere laoreet. Suspendisse et lacinia odio. Nunc odio neque, mattis a semper eu, luctus a elit. Aenean ornare tempus metus a dignissim. Integer ex nisi, rhoncus in ipsum et, molestie porta neque. Quisque lacinia sodales magna sed vulputate. Phasellus sem odio, rutrum non tincidunt in, placerat ac justo. Sed mi massa, cursus quis imperdiet eget, semper in sem. Nunc ut tellus neque. Sed a sapien at nisi sagittis placerat sed quis nisl.\r\n\r\nIn non accumsan tortor. Mauris quam ligula, imperdiet vitae aliquam accumsan, ornare nec nisi. Suspendisse viverra semper mattis. Morbi sollicitudin neque et tincidunt condimentum. Etiam auctor pharetra velit, blandit elementum mauris viverra et. Donec egestas justo non viverra lacinia. Aliquam lobortis lorem ligula, vel vulputate neque facilisis non. Praesent quis vulputate libero. Pellentesque vitae auctor ipsum. Ut bibendum dignissim suscipit. Interdum et malesuada fames ac ante ipsum primis in faucibus. Donec porta quis massa nec efficitur. Quisque malesuada ex vel elementum auctor.\r\n\r\nDonec iaculis lacus id elit blandit tempus. Suspendisse leo diam, maximus et nisl sed, lacinia accumsan augue. Pellentesque eleifend nulla vel ipsum bibendum vestibulum. Nunc erat metus, dignissim quis nisl at, dictum finibus felis. In massa arcu, cursus a velit ac, sollicitudin dictum nisl. Integer placerat lacus id diam euismod, vitae tempus ante consequat. Integer eleifend ipsum elit, non semper mi lacinia a. In hac habitasse platea dictumst.', 'News #8'),
(13, '2019-06-19', 1, 'test datepicker', 'test datepicker'),
(14, '2019-06-06', 2, 'last tets', 'last tets');

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

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `passwordHash` varchar(60) NOT NULL,
  `authKey` varchar(255) NOT NULL,
  `accessToken` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(16) NOT NULL,
  `userType_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `username`, `passwordHash`, `authKey`, `accessToken`, `email`, `phone`, `userType_id`) VALUES
(1, 'admin', '$2y$13$E5u6.FFZ2XmGhk1GpyarIe.5bzavRH18mASAtGWdZ/rewriqYmtlK', 'test100key', '100-token', 'admin@gmail.com', '+7(999)999-99-99', 9),
(2, 'demo', '$2y$13$teOAILNJrfroJ9zqNKBiKOyVGiY7IH4TyGH5FTktOvKHu/1ZpyRPu', 'test101key', '101-token', 'demo@gmail.com', '+7(999)999-99-98', 1),
(3, 'test', '$2y$13$S.pPhMKalT8adyARGYrGWeaPQ/832U5mGowrv1tlccj20Isd8Ycyy', '1', 'U8COE6pSw_C98OsSA3u1obNMcL6DqTtV', 'test@test.test', '111111111111', 1);

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
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
