-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 18 2023 г., 13:27
-- Версия сервера: 5.7.39
-- Версия PHP: 8.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

-- База данных: `db_cars`
CREATE DATABASE IF NOT EXISTS `db_cars` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `db_cars`;


-- Структура таблицы `cars`
DROP TABLE IF EXISTS `cars`;
CREATE TABLE `cars` (
  `id_car` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `information` text COLLATE utf8mb4_unicode_ci,
  `path` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

TRUNCATE TABLE `cars`;

INSERT INTO `cars` (`id_car`, `title`, `information`, `path`) VALUES
(1, 'BMW X5 (G05)', 'четвёртое поколение знаменитого среднеразмерного кроссовера BMW X5. Выпуск модели был начат в ноябре 2018 года в Европе. Мощность двигателя: 600 л.с. Разгон до 100 км/ч: 3,9сек.', '../assets/images/bmw-x5.webp"'),
(2, 'Toyota Camry', 'стильный дизайн с динамичными линиями кузова, эффектная форма переднего бампера, решетка радиатора с боковой серебристой окантовкой, новые цвета экстерьера и уникальный двухцветный окрас кузова для специальной серии Toyota Gazoo Racing - все это подчеркивает выразительный облик бизнес-седана. Мощность двигателя: 240 л.с. Разгон до 100 км/ч: 7,7сек.', '../assets/images/camry.webp'),
(3, 'Skoda Octavia', 'это популярный чешский автомобиль (седан/лифтбек или универсал) среднего класса (C-segment), построенный на модульной платформе MQB. Известен своим просторным салоном, огромным багажником, высоким уровнем безопасности (5 звезд Euro NCAP) и широкой линейкой турбодвигателей. Мощность двигателя: 150 л.с. Разгон до 100 км/ч: 9,0сек.', '../assets/images/skoda.webp'),
(4, 'Volkswagen Tiguan', 'это компактный кроссовер, который балансирует между городской практичностью и возможностями для лёгкого бездорожья. Понимание его технических характеристик помогает оценить, насколько этот автомобиль соответствует вашим ежедневным задачам и стилю вождения. Мощность двигателя: 220 л.с. Разгон до 100 км/ч: 6,8сек.', '../assets/images/tiguan.png'),
(5, 'BMW i5', 'электро седан бизнес-класса (G60), сочетающий спортивную динамику и технологичность. Модель доступна в версиях eDrive40 (задний привод, 340 л.с.) и M60 xDrive (полный привод, 601 л.с.). Запас хода достигает до 582-630 км (WLTP), а зарядка с 10% до 80% занимает около 30 минут. Разгон до 100 км/ч: 3,8сек.', '../assets/images/bmw-i5.png'),
(6, 'Kia Rio', 'популярный корейский субкомпактный автомобиль (B-класс), известный надежностью, современным дизайном и адаптацией к российским условиям (клиренс 160–195 мм). Оснащается бензиновыми двигателями 1.4 л (100 л.с.) или 1.6 л (123 л.с.) с 6-МКПП/АКПП. Предлагается в кузовах седан и кросс-хэтчбек (Rio X), отличается экономичностью и вместительным багажником. Разгон до 100 км/ч: 10,5сек.', '../assets/images/kia-rio.webp'),
(7, 'Toyota Land Cruiser', 'легендарная серия рамных внедорожников повышенной проходимости, сочетающая надежность, высокий комфорт и премиальные технологии. Современный Land Cruiser 300 оснащается мощными V6 турбодвигателями (бензин 415 л.с. или дизель), 10-ступенчатой АКПП, системой полного привода и передовой электроникой, обеспечивая отличную проходимость, безопасность и статус. Разгон до 100 км/ч: 6,8сек.', '../assets/images/land-cruiser.png'),
(8, 'BMW i8', 'революционный спортивный плагин-гибрид с футуристичным дизайном, дверями «крыло чайки» и карбоновым кузовом. Он сочетает 1,5-литровый бензиновый турбомотор и электродвигатель, выдавая суммарную мощность 362–374 л.с., разгоняется до 100 км/ч за 4,4 секунды и расходует всего около 2 л/100 км топлива.', '../assets/images/bmw-i8.png');




-- Структура таблицы `fillings
DROP TABLE IF EXISTS `fillings`;
CREATE TABLE `fillings` (
  `id_filling` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

TRUNCATE TABLE `fillings`;

INSERT INTO `fillings` (`id_filling`, `name`, `path`) VALUES
(1, 'Свечи зажигания', '../assets/images/свеча-зажигания.png'),
(2, 'Карбюратор', '../assets/images/карбюратор.jpg'),
(3, 'Радиатор', '../assets/images/радиатор.jpg'),
(4, 'Аккумулятор', '../assets/images/аккумулятор.jpg'),
(5, 'Воздушный фильтр', '../assets/images/воздушные-фильры.webp'),
(6, 'Поршень', '../assets/images/поршень.jpg');




-- Структура таблицы `feedback`
DROP TABLE IF EXISTS `feedback`;
CREATE TABLE `feedback` (
  `id_feedback` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` bigint(12) NOT NULL,
  `path` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

TRUNCATE TABLE `feedback`;



-- Структура таблицы `index_page`
DROP TABLE IF EXISTS `index_page`;
CREATE TABLE `index_page` (
  `id_element` int(11) NOT NULL,
  `alias` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

TRUNCATE TABLE `index_page`;

INSERT INTO `index_page` (`id_element`, `alias`, `content`) VALUES
(1, 'banner', '<section class="banner">\r\n <a href="https://www.bmw.ru/ru/index.html" class="content">\r\n <img src="./assets/images/реклама.png" alt="рекламный баннер">\r\n <img class="banner__logo"  src="./assets/images/BMW_White_Logo.svg" alt="логотип">\r\n <p>реклама</p>\r\n </a>\r\n </section>'),
(2, 'advantages', '<section class="advantages">\r\n <h2>С нами вы получите</h2>\r\n <div class="advantages_content">\r\n <div class="advantages_advantage">\r\n <img src="./assets/images/удобство.png">\r\n <h4>Удобство</h4>\r\n <p>Огромный выбор автомобилей</p>\r\n </div>\r\n <div class="advantages_advantage">\r\n <img src="./assets/images/новое-авто.png">\r\n <h4>Новое авто</h4>\r\n <p>Вы станете первым хозяином автомобиля</p>\r\n </div>\r\n <div class="advantages_advantage">\r\n <img src="./assets/images/диагностика.png">\r\n <h4>Надёжность</h4>\r\n <p>В течении года бесплатная диагностика авто</p>\r\n </div>\r\n <div class="advantages_advantage">\r\n <img src="./assets/images/спидометр.png">\r\n <h4>Оперативность</h4>\r\n <p>Быстро подберём авто под ваш кошелёк и потребности</p>\r\n </div>\r\n <div class="advantages_advantage">\r\n <img src="./assets/images/доставка.png">\r\n <h4>Доставку</h4>\r\n <p>Доставим авто прямо до вашего дома</p>\r\n </div>\r\n </div>\r\n </section>'),
(3, 'select', '<section class="select">\r\n <div class="content">\r\n <h2>Наши услуги</h2>\r\n <div class="select__cars">\r\n <a href="./index.html#feedback" class="select__car">\r\n <div>\r\n <img src="./assets/images/кёрхер.jpg" alt="">\r\n </div>\r\n <p>Мойка Авто</p>\r\n </a>\r\n <a href="./index.html#feedback" class="select__car">\r\n <div>\r\n <img src="./assets/images/канистра.jpg" alt="">\r\n </div>\r\n <p>Замена масла</p>\r\n </a>\r\n <a href="./index.html#feedback" class="select__car">\r\n <div>\r\n <img src="./assets/images/покрышки.jpg" alt="">\r\n </div>\r\n <p>Замена покрышок</p>\r\n </a>\r\n <a href="./index.html#feedback" class="select__car">\r\n <div>\r\n <img src="./assets/images/колесо.jpg" alt="">\r\n </div>\r\n <p>Установка колёс</p>\r\n </a>\r\n <a href="./index.html#feedback" class="select__car">\r\n <div>\r\n <img src="./assets/images/диагностика-авто.png" alt="">\r\n </div>\r\n <p>Диагностика авто</p>\r\n </a>\r\n <a href="./index.html#feedback" class="select__car">\r\n <div>\r\n <img src="./assets/images/свеча-зажигания.png" alt="">\r\n </div>\r\n <p>Замена свечей</p>\r\n </a>\r\n <a href="./index.html#feedback" class="select__car">\r\n <div>\r\n <img src="./assets/images/воздушные-фильры.webp" alt="">\r\n </div>\r\n <p>Замена фильтров</p>\r\n </a>\r\n </div>\r\n </div>\r\n </section>'),
(4, 'adout', '<section class="about">\r\n <div class="about__wrap">\r\n <img class="about__image" src="https://volvocar-borishof.ru/upload/resize_cache/iblock/7f6/1560_512_1/7f6e775884e53e3eb96f8cbd15cba255.jpg">\r\n <div class="about__text">\r\n <h3 class="about__h3" >О компании</h3>\r\n <ul class="about__list">\r\n <li class="about__item">Автодиллер №1 в России</li>\r\n <li class="about__item">На российском рынке с 2002 года</li>\r\n <li class="about__item">Продаём более 4 тысяч автомобилей в год</li>\r\n <li class="about__item">Автосалоны в 20 крупных городах РФ</li>\r\n </ul>\r\n </div>\r\n </div>\r\n </section>'),
(5, 'reviews', '<section class="reviews">\r\n <div class="content">\r\n <h3 class="reviews__h3">Отзывы</h2> \r\n<div class="reviews__wrapper">\r\n <div class="review">\r\n <div class="review__stars">\r\n <img class="review__star" src="./assets/images/star.png">\r\n <img class="review__star" src="./assets/images/star.png">\r\n <img class="review__star" src="./assets/images/star.png">\r\n <img class="review__star" src="./assets/images/star.png">\r\n <img class="review__star" src="./assets/images/star.png">\r\n </div>\r\n <div class="review__text">Покупал Toyota Camry в 2023 году, до сих пор не единной поломки, ржавчины нет. Также цены относительно ниже, чем у конкурентов</div>\r\n </div>\r\n <div class="review">\r\n <div class="review__stars">\r\n <img class="review__star" src="./assets/images/star.png">\r\n <img class="review__star" src="./assets/images/star.png">\r\n <img class="review__star" src="./assets/images/star.png">\r\n <img class="review__star" src="./assets/images/star.png">\r\n <img class="review__star" src="./assets/images/star.png">\r\n </div>\r\n <div class="review__text">Покупал Toyota Camry в 2023 году, до сих пор не единной поломки, ржавчины нет. Также цены относительно ниже, чем у конкурентов</div>\r\n </div>\r\n <div class="review">\r\n <div class="review__stars">\r\n <img class="review__star" src="./assets/images/star.png">\r\n <img class="review__star" src="./assets/images/star.png">\r\n <img class="review__star" src="./assets/images/star.png">\r\n <img class="review__star" src="./assets/images/star.png">\r\n <img class="review__star" src="./assets/images/star.png">\r\n </div>\r\n <div class="review__text">Покупал Toyota Camry в 2023 году, до сих пор не единной поломки, ржавчины нет. Также цены относительно ниже, чем у конкурентов</div>\r\n </div>\r\n <div class="review">\r\n <div class="review__stars">\r\n <img class="review__star" src="./assets/images/star.png">\r\n <img class="review__star" src="./assets/images/star.png">\r\n <img class="review__star" src="./assets/images/star.png">\r\n <img class="review__star" src="./assets/images/star.png">\r\n <img class="review__star" src="./assets/images/star.png">\r\n </div>\r\n <div class="review__text">Покупал Toyota Camry в 2023 году, до сих пор не единной поломки, ржавчины нет. Также цены относительно ниже, чем у конкурентов</div>\r\n </div>\r\n </div>\r\n </div>\r\n </section>'),
(6, 'feedback', '<section class="feedback" id="feedback">\r\n <h2>Заполните анкету</h2>\r\n <form class="form" action="./controllers/add_feedback.php" method="post" enctype="multipart/form-data">\r\n <div class="form__contact">\r\n <input class="form__input" type="text" name="name" placeholder="Введите имя" required minlength="2"/>\r\n <input class="form__input" type="tel" name="tel-number" placeholder="Введите номер телефона" title="например: 89041041706" required pattern="[0-9]{11}"/>\r\n </div>\r\n <div class="form__download">\r\n <label for="download">Загрузи фото авто, если на знаешь названия авто</label>\r\n <input type="file" name="download" id="download"/>\r\n </div>\r\n <div class="form__submit">\r\n <input type="checkbox" name="personal" id="personal" required>\r\n <label for="personal">я согласен на обработку персональных данных</label>\r\n </div>\r\n <button class="form__button">Отправить</button>\r\n </form>\r\n </section>'),
(7, 'map', '<section class="map">\r\n <div style="position:relative;overflow:hidden;">\r\n <a href="https://yandex.ru/maps/213/moscow/?utm_medium=mapframe&utm_source=maps" style="color:#eee;font-size:12px;position:absolute;top:0px;">Москва</a>\r\n <a href="https://yandex.ru/maps/213/moscow/house/ulitsa_kakhovka_6k2/Z04Ycw9lS0cDQFtvfXp0c39kYQ==/?ll=37.587188%2C55.653814&utm_medium=mapframe&utm_source=maps&z=17.06" style="color:#eee;font-size:12px;position:absolute;top:14px;">Улица Каховка, 6к2 — Яндекс Карты</a>\r\n <iframe src="https://yandex.ru/map-widget/v1/?ll=37.587188%2C55.653814&mode=whatshere&whatshere%5Bpoint%5D=37.585052%2C55.652563&whatshere%5Bzoom%5D=17&z=17.06" frameborder="1" allowfullscreen="true" style="position:relative;"></iframe>\r\n </div>\r\n </section>');



-- Индексы сохранённых таблиц
ALTER TABLE `cars`
  ADD PRIMARY KEY (`id_car`);

ALTER TABLE `fillings`
  ADD PRIMARY KEY (`id_filling`);

ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id_feedback`);

ALTER TABLE `index_page`
  ADD PRIMARY KEY (`id_element`);


-- AUTO_INCREMENT для сохранённых таблиц
ALTER TABLE `cars`
  MODIFY `id_car` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

ALTER TABLE `fillings`
  MODIFY `id_filling` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

ALTER TABLE `feedback`
  MODIFY `id_feedback` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `index_page`
  MODIFY `id_element` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;