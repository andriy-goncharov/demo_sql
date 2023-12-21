# создание таблицы
CREATE TABLE book_one_table
(
    book_id INT PRIMARY KEY AUTO_INCREMENT,
    title   VARCHAR(50),
    author  VARCHAR(30),
    price   DECIMAL(8, 2),
    amount  INT
);


CREATE TABLE supply_one_table
(
    supply_id INT PRIMARY KEY AUTO_INCREMENT,
    title     VARCHAR(50),
    author    VARCHAR(30),
    price     DECIMAL(8, 2),
    amount    INT
);

CREATE TABLE trip_2
(
    trip_id    INT PRIMARY KEY AUTO_INCREMENT,
    name       VARCHAR(30),
    city       VARCHAR(25),
    per_diem   DECIMAL(8, 2),
    date_first DATE,
    date_last  DATE
);

# вставка аднных в таблицу
INSERT INTO trip_2(trip_2.name, trip_2.city, trip_2.per_diem, trip_2.date_first, trip_2.date_last)
VALUES ('Баранов П.Е.', 'Москва', 700, '2020-01-12', '2020-01-17'),
       ('Абрамова К.А.', 'Владивосток', 450, '2020-01-14', '2020-01-27'),
       ('Семенов И.В.', 'Москва', 700, '2020-01-23', '2020-01-31'),
       ('Ильиных Г.Р.', 'Владивосток', 450, '2020-01-12', '2020-02-02'),
       ('Колесов С.П.', 'Москва', 700, '2020-02-01', '2020-02-06'),
       ('Баранов П.Е.', 'Москва', 700, '2020-02-14', '2020-02-22'),
       ('Абрамова К.А.', 'Москва', 700, '2020-02-23', '2020-03-01'),
       ('Лебедев Т.К.', 'Москва', 700, '2020-03-03', '2020-03-06'),
       ('Колесов С.П.', 'Новосибирск', 450, '2020-02-27', '2020-03-12'),
       ('Семенов И.В.', 'Санкт-Петербург', 700, '2020-03-29', '2020-04-05'),
       ('Абрамова К.А.', 'Москва', 700, '2020-04-06', '2020-04-14'),
       ('Баранов П.Е.', 'Новосибирск', 450, '2020-04-18', '2020-05-04'),
       ('Лебедев Т.К.', 'Томск', 450, '2020-05-20', '2020-05-31'),
       ('Семенов И.В.', 'Санкт-Петербург', 700, '2020-06-01', '2020-06-03'),
       ('Абрамова К.А.', 'Санкт-Петербург', 700, '2020-05-28', '2020-06-04'),
       ('Федорова А.Ю.', 'Новосибирск', 450, '2020-05-25', '2020-06-04'),
       ('Колесов С.П.', 'Новосибирск', 450, '2020-06-03', '2020-06-12'),
       ('Федорова А.Ю.', 'Томск', 450, '2020-06-20', '2020-06-26'),
       ('Абрамова К.А.', 'Владивосток', 450, '2020-07-02', '2020-07-13'),
       ('Баранов П.Е.', 'Воронеж', 450, '2020-07-19', '2020-07-25');



CREATE TABLE fine
(
    fine_id        INT PRIMARY KEY AUTO_INCREMENT,
    name           VARCHAR(30),
    number_plate   VARCHAR(6),
    violation      VARCHAR(50),
    sum_fine       DECIMAL(8,
                       2),
    date_violation DATE,
    date_payment   DATE
);

INSERT
INTO fine(name,
          number_plate,
          violation,
          sum_fine,
          date_violation,
          date_payment)
VALUES ('Баранов П.Е.',
        'Р523ВТ',
        'Превышение скорости(от 40 до 60)',
        '2020-02-14',
        NULL),
       ('Абрамова К.А.',
        'О111АВ',
        'Проезд на запрещающий сигнал',
        '2020-02-23',
        NULL),
       ('Яковлев Г.Р.',
        'Т330ТТ',
        'Проезд на запрещающий сигнал',
        '2020-03-03',
        NULL);



CREATE TABLE traffic_violation
(
    violation_id INT PRIMARY KEY AUTO_INCREMENT,
    violation    VARCHAR(30),
    sum_fine     DECIMAL(8, 2)
);

INSERT INTO traffic_violation(violation, sum_fine)
VALUES ('Превышение скорости(от 20 до 40)', 500),
       ('Превышение скорости(от 40 до 60)', 1000),
       ('Проезд на запрещающий сигнал', 1000);

CREATE TABLE payment
(
    payment_id     INT PRIMARY KEY AUTO_INCREMENT,
    name           VARCHAR(50),
    number_plate   VARCHAR(6),
    violation      VARCHAR(50),
    date_violation DATE,
    date_payment   DATE
);

INSERT INTO payment(name, number_plate, violation, date_violation, date_payment)
VALUES ('Яковлев Г.Р.', 'М701АА', 'Превышение скорости (от 20 до 40)', '2020-01-12', '2020-01-22'),
       ('Баранов П.Е.', 'Р523ВТ', 'Превышение скорости (от 40 до 60)', '2020-02-14', '2020-03-06'),
       ('Яковлев Г.Р.', 'Т330ТТ', 'Проезд на запрещающий сигнал', '2020-03-03', '2020-03-23');


VALUES ('Превышение скорости(от 20 до 40)', 500),
       ('Превышение скорости(от 40 до 60)', 1000),
       ('Проезд на запрещающий сигнал', 1000);


SELECT *
FROM payment;

# удаление
DROP TABLE star.query CASCADE;

INSERT INTO supply (title, author, price, amount)
VALUES ('Лирика', 'Пастернак Б.Л.', 518.99, 2),
       ('Черный человек', 'Есенин С.А.', 570.2, 6),
       ('Белая гвардия', 'Булгаков М.А.', 540.5, 7),
       ('Идиот', 'Достоевский Ф.М.', 360.8, 3);



SELECT *
FROM supply;

INSERT INTO star.book_one_table (title, author, price, amount)
VALUES ('Братья Карамазовы', 'Достоевский Ф.М.', 799.01, 3),
       ('Стихотворения и поэмы', 'Есенин С.А.', 650.0, 15),
       ('Мастер и Маргарита', 'Булгаков М.А.', 540.5, 5),
       ('Белая гвардия', 'Булгаков М.А.', 540.50, 7),
       ('Идиот', 'Достоевский Ф.М.', 460.0, 10);


INSERT
INTO book_one_table (title,
                     author,
                     price,
                     amount)
VALUES ('Черный человек',
        'Есенин С.А.',
        NULL,
        NULL);

INSERT
INTO book_one_table (title,
                     author,
                     price,
                     amount)
VALUES ('Белая гвардия',
        'Булгаков М.А.',
        540.50,
        5);

INSERT
INTO book_one_table (title,
                     author,
                     price,
                     amount)
VALUES ('Идиот', 'Достоевский Ф.М.', 460.00, 10);


# добавление данных в таблицу
INSERT
INTO book_one_table (title,
                     author,
                     price,
                     amount)
VALUES ('Стихотворения и поэмы', 'Есенин С.А.', 650.00, 15);

SELECT title, amount, price, amount * 1.64 AS total
FROM book;

# мат операции
SELECT title,
       price,
       ROUND((price * 18 / 100) / (1 + 18 / 100), 3) AS tax,
       ROUND(price / (1 + 18 / 100), 3)              AS price_tax
FROM book;

SELECT title,
       author,
       amount,
       ROUND(price - price * 0.3, 2) AS new_price
FROM book_one_table;

# условие
SELECT title,
       amount,
       price,
       ROUND(IF(amount < 4,
                price * 0.5,
                IF(amount > 11, price * 0.7, price * 0.9)), 2) AS sale,
       IF(amount < 4,
          'скидка 50',
          IF(amount > 11, 'скидка 30', 'скидка 10'))           AS your_sale
FROM book;

SELECT author,
       title,
       ROUND(IF(author = 'Булгаков М.А.',
                price + price * 0.1,
                IF(author = 'Есенин С.А.',
                   price + price * 0.05, price)), 2) AS new_price
FROM book_one_table;

# выбор по условия показать только те ячейки < 600
SELECT title, price
FROM book
WHERE price > 600;

SELECT title,
       author,
       price
FROM book_one_table
WHERE (author = 'Булгаков М.А.'
    OR author = 'Есенин С.А.')
  AND price > 600;

# between
SELECT title,
       amount
FROM book
WHERE amount BETWEEN 5 AND 14;

# IN  позволяет выбрать данные, соответствующие значениям из списка.
SELECT title,
       price
FROM book_one_table
WHERE author IN ('Булгаков М.А.', 'Достоевский Ф.М.');

SELECT title,
       author
FROM book_one_table
WHERE amount IN (2, 3, 5, 7)
  AND (price >= 540
    AND price <= 800);

# сортировка по полю
SELECT title,
       author,
       price
FROM book_one_table
ORDER BY price;

# Вывести автора, название и количество книг, в отсортированном в алфавитном порядке по автору и по убыванию количества, для тех книг, цены которых меньше 750
SELECT author,
       title,
       amount AS количество
FROM book_one_table
WHERE price < 750
ORDER BY author,
         amount DESC;

# Вывести  автора и название  книг, количество которых принадлежит интервалу от 2 до 14 (включая границы).
# Информацию  отсортировать сначала по авторам (в обратном алфавитном порядке), а затем по названиям книг (по алфавиту).
SELECT author,
       title
FROM book_one_table
WHERE amount >= 2
  AND amount <= 14
ORDER BY author DESC,
         title ASC;

# Вывести книги, название которых длиннее 5 символов:
SELECT title
FROM book b
WHERE title LIKE '_____%';

# Вывести названия книг, которые состоят ровно из одного слова, если считать, что слова в названии отделяются друг от друга пробелами .
SELECT title
FROM book_one_table
WHERE title NOT LIKE '% %';

SELECT title,
       author
FROM book_one_table
WHERE title LIKE '%_ _%'
  AND title NOT LIKE '% '
  AND title NOT LIKE ' %'
  AND author LIKE '%С.%'
ORDER BY title ASC;

SELECT author,
       title,
       price                                                         AS real_price,
       amount,
       ROUND(IF(amount * price > 5000, price * 1.2, price * 0.8), 2) AS new_price,
       IF(amount < 5,
          149.99,
          IF(price <= 500,
             99.99,
             0))                                                     AS delivery_price
FROM book_one_table
WHERE author IN ('Булгаков М.А.', 'Есенин С.А.')
  AND amount BETWEEN 3 AND 14
ORDER BY author ASC,
         title DESC,
         delivery_price ASC;

SELECT title, price - FLOOR(price) AS копейки
FROM book
ORDER BY копейки ASC;

SELECT author,
       title,
       IF(price > 700,
          'высокая',
          IF(price < 500,
             'низкая',
             'средняя')) AS price_category,
       price * amount    AS cost
FROM book_one_table
WHERE author NOT LIKE 'Есенин С.А.'
  AND title NOT LIKE 'Белая гвардия';

SELECT author,
       COUNT(author) AS autor_col,
       COUNT(amount),
       COUNT(*)
FROM book_one_table
GROUP BY author
ORDER BY author ASC;

# Посчитать, количество различных книг и количество экземпляров книг каждого автора , хранящихся на складе.
# Столбцы назвать Автор, Различных_книг и Количество_экземпляров соответственно.
SELECT author       AS автор,
       COUNT(title) AS различных_книг,
       SUM(amount)  AS количество_экземпляров
FROM book_one_table
GROUP BY author;

SELECT author,
       MIN(price)           AS минимальная_цена,
       MAX(price)           AS максимальная_цена,
       ROUND(AVG(price), 2) AS средняя_цена
FROM book_one_table
GROUP BY author;

# Вывести суммарную стоимость книг каждого автора.
SELECT author,
       SUM(price * amount) AS стоимость
FROM book_one_table
GROUP BY author;

SELECT author,
       ROUND(AVG(price), 2) AS средняя_цена
FROM book_one_table
GROUP BY author;

SELECT author,
       SUM(price * amount)                                         AS стоимость,
       ROUND((SUM(price * amount) * 18 / 100) / (1 + 18 / 100), 2) AS ндс,
       ROUND(SUM(price * amount) / (1 + 18 / 100), 2)              AS стоимость_без_ндс
FROM book_one_table
GROUP BY author;

SELECT MIN(price)           AS минимальная_цена,
       MAX(price)           AS максимальная_цена,
       ROUND(AVG(price), 2) AS средняя_цена
FROM book;

# Найти минимальную и максимальную цену книг всех авторов,
# общая стоимость книг которых больше 5000.
SELECT author,
       MIN(price) AS min_price,
       MAX(price) AS max_price
FROM book_one_table
GROUP BY author
HAVING SUM(price * amount) > 5000
ORDER BY min_price DESC;

# Вычислить среднюю цену и суммарную стоимость тех книг, количество экземпляров которых принадлежит интервалу от 5 до 14, включительно.
# Столбцы назвать Средняя_цена и Стоимость, значения округлить до 2-х знаков после запятой.
SELECT ROUND(AVG(price), 2)          AS средняя_цена,
       ROUND(SUM(price * amount), 2) AS стоимость
FROM book
WHERE amount BETWEEN 5 AND 14;

# Вывести максимальную и минимальную цену книг каждого автора, кроме Есенина, количество экземпляров книг которого больше 10.
SELECT author,
       MIN(price) AS min_price,
       MAX(price) AS max_price
FROM book_one_table
WHERE author <> 'Есенин С.А.'
GROUP BY author
HAVING SUM(amount) > 10;

# Посчитать стоимость всех экземпляров каждого автора без учета книг «Идиот» и «Белая гвардия». В результат включить только тех авторов, у которых суммарная стоимость книг
# (без учета книг «Идиот» и «Белая гвардия») более 5000 руб. Вычисляемый столбец назвать Стоимость. Результат отсортировать по убыванию стоимости.
SELECT author,
       SUM(price * amount) AS стоимость
FROM book_one_table
WHERE title NOT IN ('Идиот', 'Белая гвардия')
GROUP BY author
HAVING стоимость > 5000
ORDER BY стоимость DESC;


SELECT author,
       COUNT(title) AS col_proizved,
       MIN(price)   AS min_cena,
       SUM(amount)  AS chislo_knig
FROM book_one_table
WHERE amount > 1
  AND price > 500
GROUP BY author
HAVING col_proizved > 1;

SELECT author,
       MIN(price) AS min_price,
       MAX(price) AS max_price
FROM book_one_table
WHERE author <> 'Есенин С.А.'
GROUP BY author;

SELECT SUM(price) AS 'стоимость_по одному',
        COUNT(title)  'кол купленных'
FROM book;

SELECT author,
       SUM(price * amount) AS sum_total,
       AVG(price)
FROM book_one_table
GROUP BY author
HAVING AVG(price) < MAX(price);



SELECT SUM(amount * price) AS 'total_cost',
        SUM(amount)         AS 'total_amount'
FROM book;


SELECT author,
       ROUND(SUM(amount * price) * 100 / 26276, 2) AS part_of_cost,
       ROUND(SUM(amount) * 100 / 46, 2)            AS part_of_amount
FROM book_one_table
GROUP BY author;

SELECT title,
       author,
       SUM(amount)                                 AS col_copy,
       ROUND(SUM(price) * 100 / 26276, 2)          AS part_one_of_all,
       ROUND(SUM(amount * price) * 100 / 26276, 2) AS part_of_all_price,
       ROUND(SUM(amount) * 100 / 46, 2)            AS part_of_all_amount
FROM book_one_table
GROUP BY title, author
ORDER BY col_copy;

SELECT author,
       MIN(price) AS min_price
FROM book_one_table
GROUP BY author;

SELECT author,
       SUM(price * amount) AS price
FROM book_one_table
WHERE author <> 'Достоевский Ф.М.'
GROUP BY author;


# Вывести информацию о самых дешевых книгах, хранящихся на складе.
SELECT title,
       author,
       price,
       amount
FROM book_one_table
WHERE price = (SELECT MIN(price)
               FROM book);

# Вывести информацию (автора, название и цену) о  книгах, цены которых меньше или равны средней цене книг на складе.
# Информацию вывести в отсортированном по убыванию цены виде. Среднее вычислить как среднее по цене книги.
SELECT author,
       title,
       price
FROM book_one_table
WHERE price <= (SELECT AVG(price)
                FROM book)
ORDER BY price DESC;

# Вывести информацию о книгах, количество экземпляров которых отличается от среднего количества экземпляров книг на складе более чем на 3.
# То есть нужно вывести и те книги, количество экземпляров которых меньше среднего на 3, или больше среднего на 3.
SELECT title,
       author,
       amount
FROM book_one_table
WHERE ABS(amount -
          (SELECT AVG(amount)
           FROM book)) > 3;



SELECT author,
       title,
       price
FROM book_one_table
WHERE price - (SELECT MIN(price)
               FROM book) < 150
ORDER BY price DESC;



SELECT title,
       author,
       ROUND(price, 2) AS price
FROM book_one_table
WHERE author IN (SELECT author
                 FROM book
                 GROUP BY author
                 HAVING SUM(amount) >= 12);

SELECT title,
       author,
       amount,
       price
FROM book_one_table
WHERE author IN (SELECT author
                 FROM book
                 GROUP BY author
                 HAVING SUM(amount) >= 12);

# Вывести информацию о тех книгах, количество которых меньше самого маленького среднего количества книг каждого автора.
SELECT title,
       author,
       amount,
       price
FROM book_one_table
WHERE amount < ALL (SELECT AVG(amount)
                    FROM book
                    GROUP BY author);

# Вывести информацию о тех книгах, количество которых меньше самого большого среднего количества книг каждого автора.
SELECT title,
       author,
       amount,
       price
FROM book_one_table
WHERE amount < ANY (SELECT AVG(amount)
                    FROM book_one_table
                    GROUP BY author);


# Вывести информацию о книгах, количество экземпляров которых отличается от среднего количества экземпляров
# книг на складе более чем на 3,  а также указать среднее значение количества экземпляров книг.
SELECT title,
       author,
       amount,
       (SELECT FLOOR(AVG(amount))
        FROM book) AS среднее_количество
FROM book_one_table
WHERE ABS(amount - (SELECT AVG(amount) FROM book)) > 3;

# Посчитать сколько и каких экземпляров книг нужно заказать поставщикам, чтобы на складе стало одинаковое количество
# экземпляров каждой книги, равное значению самого большего количества экземпляров одной книги на складе.
# Вывести название книги, ее автора, текущее количество экземпляров на складе и количество заказываемых экземпляров книг.
# Последнему столбцу присвоить имя Заказ. В результат не включать книги, которые заказывать не нужно.
SELECT title,
       author,
       amount,
       (SELECT MAX(amount)
        FROM book_one_table) - amount AS заказ
FROM book_one_table
WHERE ((SELECT MAX(amount)
        FROM book) - amount) > 0;

# Два космонавта хотят взять с собой в полет по книжке. Чем книга дороже, тем она интереснее. Капитан возьмет самую дорогую,
# какую книгу возьмет в полет помощник, если они договорились взять 2 самые интересные книги
SELECT author,
       title,
       price
FROM book_one_table
WHERE price < (SELECT MAX(price)
               FROM book)
ORDER BY price DESC
    LIMIT 1;

SELECT author,
       title,
       price
FROM book_one_table
ORDER BY price DESC
    LIMIT 1, 1;

SELECT author,
       title,
       price
FROM book_one_table;



SELECT title,
       author,
       price,
       amount,
       (
               (SELECT MAX(price)
                FROM book_one_table) - price)                                 AS дооценка,
       ROUND((((SELECT MAX(price)
                FROM book_one_table) - price) * 100) / (SELECT MAX(price)
                                                        FROM book_one_table)) AS процент
FROM book_one_table
HAVING дооценка > 0;

# Добавить из таблицы supply в таблицу book, все книги, кроме книг, написанных Булгаковым М.А. и Достоевским Ф.М.
INSERT
INTO book_one_table (title,
                     author,
                     price,
                     amount)
SELECT title,
       author,
       price,
       amount
FROM supply
WHERE author NOT IN ('Булгаков М.А.', 'Достоевский Ф.М.');

# анести из таблицы supply в таблицу book только те книги, названия которых отсутствуют в таблице book.
INSERT
INTO book_one_table (title,
                     author,
                     price,
                     amount)
SELECT title,
       author,
       price,
       amount
FROM supply
WHERE author NOT IN (SELECT title
                     FROM book);


# Уменьшить на 10% цену тех книг в таблице book, количество которых принадлежит интервалу от 5 до 10, включая границы.
UPDATE
    book
SET price = 0.9 * price
WHERE amount >= 5
  AND amount <= 10;


ALTER TABLE book
    ADD buy int DEFAULT 0;


SELECT *
FROM book;
UPDATE book
SET amount = amount - buy,
    buy    = 0;

UPDATE
    # В таблице book необходимо скорректировать значение для покупателя в столбце buy таким образом,
    # чтобы оно не превышало количество экземпляров книг, указанных в столбце amount. А цену тех книг, которые покупатель не заказывал, снизить на 10%.
    book
SET buy   = IF(amount < buy,
    amount,
    buy),
    price = IF(buy = 0,
    price * 0.9,
    price);

INSERT INTO star.supply (title, author, price, amount)
VALUES ('Лирика', 'Пастернак Б.Л.', 518.99, 2),
       ('Черный человек', 'Есенин С.А.', 570.20, 6),
       ('Белая гвардия', 'Булгаков М.А.', 540.50, 7),
       ('Идиот', 'Достоевский Ф.М.', 360.80, 3);


# Для тех книг в таблице book , которые есть в таблице supply, не только увеличить их количество в таблице book
#( увеличить их количество на значение столбца amountтаблицы supply), но и пересчитать их цену (для каждой книги найти сумму цен из таблиц book и supply и разделить на 2).
UPDATE
    book_one_table,
    supply
SET book_one_table.amount = book_one_table.amount + supply.amount,
    book_one_table.price  = (book_one_table.price + supply.price) / 2
WHERE book_one_table.title = supply.title
  AND book_one_table.author = supply.author;

SELECT author,
       SUM(price * amount) AS sum_total,
       AVG(price)
FROM book_one_table
GROUP BY author
HAVING AVG(price) < MAX(price);


DELETE
FROM supply;


DELETE
# Удалить из таблицы supply книги тех авторов, общее количество экземпляров книг которых в таблице book превышает 10.
FROM supply
WHERE author = ANY (SELECT author
                    FROM book
                    GROUP BY author
                    HAVING SUM(amount) > 10);

CREATE TABLE ordering AS
    # создание таблиц
SELECT author, title, AS amount
FROM book
WHERE amount < 4;

CREATE TABLE `ordering` AS
SELECT author,
       title,
       (SELECT AVG(amount)) AS amount
FROM book_one_table
WHERE amount < 4;

CREATE TABLE ordering AS
    # Создать таблицу заказ (ordering), куда включить авторов и названия тех книг, количество экземпляров которых в
    # таблице book меньше среднего количества экземпляров книг в таблице book. В таблицу включить столбец
    # amount, в котором для всех книг указать одинаковое значение - среднее количество экземпляров книг в таблице book.
    SELECT author,
    title,
(SELECT AVG(amount)
    FROM book) AS amount
    FROM book_one_table
    WHERE amount < (SELECT AVG(amount) FROM book);

CREATE TABLE base_two AS
    # Создать таблицу заказ (ordering), куда включить авторов и названия тех книг, количество которых в таблице book меньше максимального (15).
    # Для всех книг в таблице ordering указать такое значение, которое позволит выровнять количество книг до максимального в таблице book.
    SELECT author,
    title,
((SELECT MAX(amount)
    FROM book) - amount) AS amount
    FROM book_one_table
    WHERE amount < (SELECT MAX(amount) FROM book);
SELECT *
FROM base_two;

SELECT name,
       city,
       per_diem,
       data_firs,
       data_last
FROM trip_2
WHERE name LIKE '%а _._.'
ORDER BY data_last DESC;

SELECT DISTINCT name
FROM trip
WHERE city LIKE 'Москва'
ORDER BY name ASC;

SELECT city,
       COUNT(city) AS количество
FROM trip
GROUP BY city
ORDER BY количество DESC
    LIMIT 2;

SELECT name,
       city,
       DATEDIFF(date_last, date_first) + 1 AS длительность
FROM trip
WHERE city NOT IN ('Москва',
                   'Санкт-Петербург')
ORDER BY длительность DESC,
         city DESC;

SELECT name,
       city,
       date_first,
       date_last
FROM trip
WHERE (DATEDIFF(date_last, date_first) + 1) = (SELECT MIN(DATEDIFF(date_last, date_first) + 1)
                                               FROM trip);

SELECT
    # Вывести информацию о командировках, начало и конец которых относятся к одному месяцу (год может быть любой).
# В результат включить столбцы name, city, date_first, date_last. Строки отсортировать сначала  в алфавитном порядке по названию города, а затем по фамилии сотрудника .
name,
        city,
    date_first,
    date_last
FROM trip
WHERE MONTH(date_first) = MONTH(date_last)
ORDER BY city ASC,
    name ASC;

SELECT
    # Вывести название месяца и количество командировок для каждого месяца. Считаем, что командировка относится к некоторому месяцу, если она началась в этом месяце.
# Информацию вывести сначала в отсортированном по убыванию количества, а потом в алфавитном порядке по названию месяца виде. Название столбцов – Месяц и Количество.
MONTHNAME(date_first)        AS месяц,
        COUNT(MONTHNAME(date_first)) AS количество
FROM trip
GROUP BY месяц
ORDER BY количество DESC,
         месяц ASC;

SELECT
    # Вывести сумму суточных (произведение количества дней командировки и размера суточных) для командировок, первый день которых пришелся на февраль или март 2020 года.
    # Значение суточных для каждой командировки занесено в столбец per_diem. Вывести фамилию и инициалы сотрудника, город, первый день командировки и сумму суточных.
    # Последний столбец назвать Сумма. Информацию отсортировать сначала  в алфавитном порядке по фамилиям сотрудников, а затем по убыванию суммы суточных.
    name,
        city,
    date_first,
    (DATEDIFF(date_last, date_first) + 1) * per_diem AS сумма
FROM trip
WHERE MONTH(date_first) = 2
   OR MONTH(date_first) = 3
  AND YEAR(date_first) = 2020
ORDER BY name ASC,
    сумма DESC;


SELECT
    # Вывести фамилию с инициалами и общую сумму суточных, полученных за все командировки для тех сотрудников, которые были в командировках больше чем 3 раза,
        # в отсортированном по убыванию сумм суточных виде. Последний столбец назвать Сумма.
name,
        SUM((DATEDIFF(date_last, date_first) + 1) * per_diem) AS сумма
FROM trip
GROUP BY name
HAVING COUNT(name) > 3
ORDER BY сумма DESC;

SELECT fi.name,
       fi.number_plate,
       fi.violation,
       IF(
                   fi.sum_fine = tv.sum_fine,
                   'Стандартная сумма штрафа',
                   IF(
                               fi.sum_fine < tv.sum_fine,
                               'Уменьшенная сумма штрафа',
                               'Увеличенная сумма штрафа'
                   )
       ) AS description
FROM fine AS fi,
     traffic_violation AS tv
WHERE tv.violation = fi.violation
  AND fi.sum_fine IS NOT NULL;

# Занести в таблицу fine суммы штрафов, которые должен оплатить водитель, в соответствии с данными из таблицы traffic_violation. При этом суммы заносить только в пустые поля столбца  sum_fine.
UPDATE
    fine AS f,
    traffic_violation AS tv
SET f.sum_fine = tv.sum_fine
WHERE f.violation = tv.violation
  AND f.sum_fine IS NULL;

SELECT fine.name, fine.number_plate, fine.violation, COUNT(*) AS col_violation
FROM fine
GROUP BY name, number_plate, violation;

# Вывести фамилию, номер машины и нарушение только для тех водителей, которые на одной машине нарушили одно и то же правило   два и более раз. При этом учитывать все нарушения, независимо от того оплачены они или нет. Информацию отсортировать в алфавитном порядке, сначала по фамилии водителя, потом по номеру машины и, наконец, по нарушению.
SELECT name,
       number_plate,
       violation,
FROM fine
GROUP BY name,
         number_plate,
         violation
HAVING COUNT(violation) = 2
   AND COUNT(number_plate) = 2
ORDER BY name ASC,
         number_plate ASC,
         violation ASC;

# Вывести фамилию, номер машины и нарушение только для тех водителей, которые на одной машине нарушили одно и то же правило   два и более раз.
# При этом учитывать все нарушения, независимо от того оплачены они или № нет. Информацию отсортировать в алфавитном порядке, сначала по фамилии водителя, потом по номеру машины и, наконец, по нарушению.
# В таблице fine увеличить в два раза сумму неоплаченных штрафов для отобранных на предыдущем шаге записей.

CREATE TABLE query AS
SELECT name, number_plate, violation
FROM fine
GROUP BY name, number_plate, violation
HAVING COUNT(violation) = 2
   AND COUNT(number_plate) = 2;


UPDATE fine AS f, query AS qu
SET f.sum_fine = f.sum_fine * 2
WHERE (f.name, f.number_plate, f.violation) IN (SELECT * FROM query)
  AND f.date_payment IS NULL;

# в таблицу fine занести дату оплаты соответствующего штрафа из таблицы payment;
# уменьшить начисленный штраф в таблице fine в два раза  (только для тех штрафов, информация о которых занесена в таблицу payment) , если оплата произведена не позднее 20 дней со дня нарушения.
UPDATE fine AS fi, payment AS pay
SET fi.date_payment = pay.date_payment,
    fi.sum_fine     = IF(DATEDIFF(pay.date_payment, pay.date_violation) <= 20, ROUND(fi.sum_fine / 2), fi.sum_fine)
WHERE pay.number_plate = fi.number_plate
  AND pay.name = fi.name
  AND pay.violation = fi.violation
  AND fi.date_payment IS NULL;

# Создать новую таблицу back_payment, куда внести информацию о неоплаченных штрафах (Фамилию и инициалы водителя, номер машины, нарушение, сумму штрафа  и  дату нарушения) из таблицы fine.
CREATE TABLE back_payment AS
SELECT name, number_plate, violation, sum_fine, date_violation
FROM fine
WHERE date_payment IS NULL;

DELETE
FROM fine
WHERE date_violation < '2020-02-01';

SELECT name, number_plate, violation
FROM fine
GROUP BY name, number_plate, violation
HAVING COUNT(violation) = 2
   AND COUNT(number_plate) = 2;



INSERT INTO traffic_violation(violation, sum_fine);

###################################################################################################################################################################################
################################################################################## REFERENCE ##############################################################################

CREATE TABLE book
(
    book_id   INT PRIMARY KEY AUTO_INCREMENT,
    title     VARCHAR(50),
    author_id int NOT NULL,
    genre_id  int,
    price     decimal(8, 2),
    amount    int,
    FOREIGN KEY (author_id) REFERENCES author (author_id) ON DELETE CASCADE,
    FOREIGN KEY (genre_id) REFERENCES genre (genre_id) ON DELETE SET NULL
);

CREATE TABLE genre
(
    genre_id   INT PRIMARY KEY AUTO_INCREMENT,
    name_genre varchar(30)
);

CREATE TABLE author
(
    author_id  INT PRIMARY KEY AUTO_INCREMENT,
    name_genre varchar(30)
);
DROP TABLE book;
DROP TABLE genre;
DROP TABLE author;

INSERT INTO star.author (name_author)
VALUES ('Булгаков М.А.'),
       ('Достоевский Ф.М.'),
       ('Есенин С.А.'),
       ('Пастернак Б.Л.'),
       ('Лермонтов М.Ю.');


INSERT INTO genre(name_genre)
VALUES ('Роман'),
       ('Поэзия'),
       ('Приключения');

INSERT INTO book (title, author_id, genre_id, price, amount)
VALUES ('Мастер и Маргарита', 1, 1, 670.99, 3),
       ('Белая гвардия', 1, 1, 540.50, 5),
       ('Идиот', 2, 1, 460.00, 100),
       ('Братья Карамазовы', 2, 1, 799.01, 3),
       ('Игрок', 2, 1, 480.50, 100),
       ('Стихотворения и поэмы', 3, 2, 650.00, 15),
       ('Черный человек', 3, 2, 570.20, 6),
       ('Лирика', 4, 2, 518.99, 2);

CREATE TABLE city
(
    city_id   INT PRIMARY KEY AUTO_INCREMENT,
    name_city varchar(30)
);

INSERT INTO city(name_city)
VALUES ('Москва'),
       ('Санкт-Петербург'),
       ('Владивосток');



############   INNER JOIN
    # Вывести название книг и их авторов
SELECT book.title, star.author.name_author
FROM author
         INNER JOIN book
                    ON star.author.author_id = book.author_id;

SELECT book.title, genre.name_genre, book.price
FROM book
         INNER JOIN genre
                    ON
                            genre.genre_id = book.genre_id
WHERE book.amount > 8
ORDER BY price DESC;

################  LEFT и RIGHT JOIN
# Вывести название всех книг каждого автора, если книг некоторых авторов в данный момент нет на складе – вместо названия книги указать Null
SELECT star.author.name_author, book.title
FROM author
         LEFT JOIN book
                   ON star.author.author_id = book.author_id
WHERE book.title IS NULL;

# Вывести все жанры, которые не представлены в книгах на складе.

SELECT genre.name_genre
FROM genre
         LEFT JOIN book
                   ON
                       genre.genre_id = book.genre_id
WHERE book.title IS NULL;

############################  CROSS JOIN

    SELECT name_author, genre.name_genre, book.title, book.price, book.amount
FROM star.author,
     book,
     genre;

SELECT name_author, name_genre
FROM star.author
         CROSS JOIN genre;

SELECT name_city, name_author, DATE_ADD('2020-01-01', INTERVAL FLOOR(RAND() * 365) DAY) AS дата
FROM star.author,
     city
ORDER BY name_city ASC,
         дата DESC;

## Вывести информацию о тех книгах, их авторах и жанрах, цена которых принадлежит интервалу от 500  до 700 рублей  включительно.
SELECT book.title, name_author, name_genre, book.price
FROM star.author
         INNER JOIN book ON author.author_id = book.author_id
         INNER JOIN genre ON genre.genre_id = book.genre_id
WHERE book.price > 500
  AND book.price < 700;
##  Вывести информацию о тех книгах, их авторах и жанрах, цена которых принадлежит интервалу от 500  до 700 рублей  включительно.

SELECT genre.name_genre, book.title, name_author
FROM genre
         INNER JOIN book ON genre.genre_id = book.genre_id
         INNER JOIN star.author ON author.author_id = book.author_id
WHERE genre.genre_id = 1
ORDER BY book.title ASC;

# Вывести количество различных книг каждого автора. Информацию отсортировать в алфавитном порядке по фамилиям  авторов.
SELECT author.name_author, COUNT(book.title) AS количество
FROM star.author
         INNER JOIN book
                    ON author.author_id = book.author_id
GROUP BY name_author
ORDER BY name_author ASC;

# Вывести количество различных книг каждого автора. Информацию отсортировать в алфавитном порядке по фамилиям  авторов. Включая а
SELECT author.name_author, COUNT(book.title) AS количество
FROM star.author
         LEFT JOIN book
                   ON author.author_id = book.author_id
GROUP BY name_author
ORDER BY name_author ASC;


# Посчитать количество экземпляров  книг каждого автора из таблицы author.  Вывести тех авторов,  количество книг которых меньше 10, в отсортированном по возрастанию количества виде. Последний столбец назвать Количество
SELECT author.name_author, SUM(book.amount) AS количество
FROM star.author
         LEFT JOIN book
                   ON author.author_id = book.author_id
GROUP BY name_author
HAVING количество < 10
    OR количество IS NULL
ORDER BY количество ASC;

SELECT author.name_author, SUM(book.amount) AS количество
FROM star.author
         INNER JOIN book
                    ON author.author_id = book.author_id
GROUP BY name_author
HAVING количество = (SELECT MAX(sum_amount)
                     FROM (SELECT author_id, SUM(amount) AS sum_amount
                           FROM book
                           GROUP BY author_id) query_in);


# Вывести в алфавитном порядке всех авторов, которые пишут только в одном жанре.
SELECT name_author
FROM book
         LEFT JOIN star.author
                   ON author.author_id = book.author_id
GROUP BY name_author;


SELECT author.name_author
FROM book
         INNER JOIN star.author
                    ON book.author_id = author.author_id
         INNER JOIN genre
                    ON book.genre_id = genre.genre_id
GROUP BY author.name_author
HAVING COUNT(genre.genre_id) = 1;

## Вывести авторов, пишущих книги в самом популярном жанре. Указать этот жанр.
SELECT name_author, name_genre
FROM star.author
         INNER JOIN book ON
    author.author_id = book.author_id
         INNER JOIN genre ON
    book.genre_id = genre.genre_id
GROUP BY author.name_author, genre.name_genre, genre.genre_id
HAVING genre.genre_id IN (SELECT query_1.genre_id
                          FROM (SELECT genre_id, SUM(amount) AS sum_amount
                                FROM book
                                GROUP BY genre_id) query_1
                                   INNER JOIN
                               (SELECT genre_id, SUM(amount) AS sum_amount
                                FROM book
                                GROUP BY genre_id
                                ORDER BY sum_amount DESC
                                LIMIT 1) query_2
                               ON
                                   query_1.sum_amount = query_2.sum_amount);

## Вывести информацию о книгах (название книги, фамилию и инициалы автора, название жанра, цену и количество экземпляров книги), написанных в самых популярных жанрах, в отсортированном в алфавитном порядке по названию книг виде. Самым популярным считать жанр, общее количество экземпляров книг которого на складе максимально.

SELECT book.title, author.name_author, genre.name_genre, book.price, book.amount
FROM star.author
         INNER JOIN book ON
    author.author_id = book.author_id
         INNER JOIN genre ON
    book.genre_id = genre.genre_id
GROUP BY author.name_author, genre.name_genre, genre.genre_id, book.title, book.price, book.amount
HAVING genre.genre_id IN (SELECT query_1.genre_id
                          FROM (SELECT genre_id, SUM(amount) AS sum_amount
                                FROM book
                                GROUP BY genre_id) query_1
                                   INNER JOIN
                               (SELECT genre_id, SUM(amount) AS sum_amount
                                FROM book
                                GROUP BY genre_id
                                ORDER BY sum_amount DESC
                                LIMIT 1) query_2
                               ON
                                   query_1.sum_amount = query_2.sum_amount)
ORDER BY book.title;



SELECT author.name_author
FROM book
         LEFT JOIN star.author
                   ON author.author_id = book.author_id
GROUP BY author.name_author
HAVING COUNT(DISTINCT genre_id) = 1;


#  Если в таблицах supply  и book есть одинаковые книги, которые имеют равную цену,  вывести их название и автора, а также посчитать общее количество экземпляров книг в таблицах supply и book,  столбцы назвать Название, Автор  и Количество.
SELECT book.title AS название, author.name_author AS автор, (book.amount + supply.amount) AS количество
FROM star.author
         INNER JOIN book
                    USING (author_id)
         INNER JOIN supply ON
            book.title = supply.title
        AND author.name_author = supply.author
WHERE book.price = supply.price;

# Для каждого автора из таблицы author вывести количество книг, написанных им в каждом жанре. Вывод: ФИО автора, жанр, количество. Отсортировать по фамилии, затем - по убыванию количества написанных книг.
SELECT name_author, genre.name_genre, COUNT(book.title) AS количество
FROM star.author
         CROSS JOIN genre
         LEFT JOIN book
                   ON book.genre_id = genre.genre_id AND book.author_id = author.author_id
GROUP BY author.name_author, genre.genre_id
ORDER BY name_author ASC,
         количество DESC;

SELECT genre.name_genre, COUNT(title) AS книги, SUM(book.amount) AS экземпляры
FROM genre
         LEFT JOIN book
                   USING (genre_id)
GROUP BY genre.name_genre;


SELECT author.name_author, title, book.price, genre.name_genre
FROM book
         INNER JOIN genre
                    USING (genre_id)
         INNER JOIN star.author
                    USING (author_id)
WHERE (book.price) IN (SELECT MIN(price) AS min_price
                       FROM genre
                                JOIN book USING (genre_id)
                       GROUP BY name_genre)
ORDER BY price DESC;

SELECT author.name_author, title, book.price, genre.name_genre
FROM book
         INNER JOIN star.author
                    USING (author_id)
         INNER JOIN genre
                    USING (genre_id)
         INNER JOIN (SELECT genre_id, MIN(price) AS price прогул
                     FROM book
                     GROUP BY genre_id) genre_chaep ON
            book.genre_id = genre_chaep.genre_id
        AND book.price = genre_chaep.price;

SELECT name_author, genre.name_genre, SUM(book.amount) AS количество
FROM star.author
         CROSS JOIN genre
         LEFT JOIN book USING (author_id)
GROUP BY name_author, genre.name_genre;

SELECT name_author, name_genre, SUM(book.price)
FROM star.author
         INNER JOIN book USING (author_id)
         INNER JOIN genre USING (genre_id)
GROUP BY name_author, genre_id;

SELECT title, name_author, tab2.m_price
FROM book
         RIGHT JOIN (SELECT name_author, MAX(book.price) AS m_price
                     FROM book
                              JOIN star.author
                                   USING (author_id)
                     GROUP BY name_author) tab2 ON
        book.price = tab2.m_price;

SELECT name_author, MAX(book.price) AS m_price
FROM book
         JOIN star.author
              USING (author_id)
GROUP BY name_author;

# Для книг, которые уже есть на складе (в таблице book) по той же цене, что и в поставке (supply), увеличить количество на значение, указанное в поставке, а также обнулить количество этих книг в поставке

UPDATE book
    INNER JOIN star.author
    USING (author_id)
    INNER JOIN supply ON
    book.title = supply.title
    AND supply.author = author.name_author
    SET book.amount   = book.amount + supply.amount,
        supply.amount = 0
WHERE book.price = supply.price;

UPDATE book
    INNER JOIN star.author
    USING (author_id)
    INNER JOIN supply ON
    book.title = supply.title
    AND supply.author = author.name_author
    SET book.amount   = book.amount + supply.amount,
        supply.amount = 0
WHERE book.price = supply.price;


UPDATE book
    INNER JOIN star.author
    USING (author_id)
    INNER JOIN supply ON
    book.title = supply.title
    AND supply.author = author.name_author
    SET book.amount   = book.amount + supply.amount,
        supply.amount = 0,
        book.price    = (book.price * book.amount + supply.price * supply.amount) / (supply.amount + book.amount)
WHERE book.price <> supply.price;

## В таблице supply  есть новые книги, которых на складе еще не было. Прежде чем добавлять их в таблицу book,  необходимо из таблицы supplyотобрать новых авторов, если таковые имеются.
SELECT supply.author
FROM star.author
         RIGHT JOIN supply ON author.name_author = supply.author
WHERE name_author IS NULL;

## Включить новых авторов в таблицу author с помощью запроса на добавление, а затем вывести все данные из таблицы author.  Новыми считаются авторы, которые есть в таблице supply, но нет в таблице author.

INSERT INTO author (name_author)
    (SELECT supply.author
     FROM star.author
              RIGHT JOIN supply ON author.name_author = supply.author
     WHERE name_author IS NULL);


SELECT title, author_id, price, amount
FROM star.author
         INNER JOIN supply ON author.name_author = supply.author
WHERE amount <> 0;

INSERT INTO book (title, author_id, price, amount)
SELECT title, author_id, price, amount
FROM star.author
         INNER JOIN supply ON author.name_author = supply.author
WHERE amount <> 0;

UPDATE book
SET genre_id = (SELECT genre.genre_id
                FROM genre
                WHERE name_genre = 'Роман')
WHERE book_id = 9;
############################################# DELETE ####################################

DELETE
FROM author
WHERE name_author LIKE 'Д%';

# Удалить всех авторов и все их книги, общее количество книг которых меньше 20.

SELECT name_author
FROM star.author
WHERE author_id = ANY (SELECT book.author_id
                       FROM book
                       GROUP BY author_id
                       HAVING SUM(amount) > 20);
DELETE
FROM star.genre
WHERE genre_id = ANY (SELECT book.genre_id
                      FROM book
                      GROUP BY genre_id
                      HAVING COUNT(book.title) < 4);

SELECT author.author_id
FROM book
         INNER JOIN star.author USING (author_id)
WHERE book.amount < 3;

DELETE author
FROM star.author
         INNER JOIN book USING (author_id)
         INNER JOIN star.genre USING (genre_id)
WHERE genre.name_genre = 'Поэзия';

UPDATE book
SET genre_id = (SELECT genre.genre_id
                FROM genre
                WHERE name_genre = 'Роман')
WHERE author_id IN (SELECT author.author_id
                    FROM star.author
                    WHERE author.name_author IN ('Булгаков М.А.', 'Достоевский Ф.М'));

UPDATE book
    INNER JOIN supply ON book.title = supply.title
    SET book.price = supply.price
WHERE book.price < supply.price;

DELETE author
FROM author
         INNER JOIN book USING (author_id)
WHERE title LIKE '%_ _%';

SELECT book.title, book.price, supply.title, supply.price
FROM book
         INNER JOIN supply ON book.amount = supply.amount
WHERE supply.author IS NULL;



SELECT *
FROM author;
SELECT *
FROM genre;
SELECT *
FROM book;
SELECT *
FROM supply;
SELECT *
FROM ordering;



