-- Robin Pindel
-- Module 6 ebookshop files with comments
-- 6/25/2023
-- 
-- This file contains the SQL to populate the tables "books" and "categories" in the ebookshop eshop "shop" database.
-- I added the personal book entries I included in my application servlet file to the database as well.
-- 
-- Reference - Edited after Download from:
-- Apress. (n.d.-b). beginning-jakarta-ee-web-dev/ch04_code/mysql at master · 
-- Apress/beginning-jakarta-ee-web-dev. GitHub. 
-- https://github.com/Apress/beginning-jakarta-ee-web-dev/tree/master/ch04_code/mysql


INSERT INTO `shop`.`categories` (`category_id`, `category_name`) VALUES ('1', 'Web Development');
INSERT INTO `shop`.`categories` (`category_id`, `category_name`) VALUES ('2', 'Science Fiction');
INSERT INTO `shop`.`categories` (`category_id`, `category_name`) VALUES ('3', 'Historical Mysteries');
INSERT INTO `shop`.`categories` (`category_id`, `category_name`) VALUES ('4', 'Food and Cooking');
INSERT INTO `shop`.`categories` (`category_id`, `category_name`) VALUES ('5', 'Programming Languages');
INSERT INTO `shop`.`books` (`book_id`, `title`, `author`, `price`, `category_id`) VALUES ('1', 'MYSQL 8 Query Performance Tuning', 'Jesper Wisborg Krogh', '34.31', '1');
INSERT INTO `shop`.`books` (`book_id`, `title`, `author`, `price`, `category_id`) VALUES ('2', 'JavaScript Next', 'Raju Gandhi', '36.70', '1');
INSERT INTO `shop`.`books` (`book_id`, `title`, `author`, `price`, `category_id`) VALUES ('3', 'The Complete Robot', 'Isaac Asimov', '12.13', '2');
INSERT INTO `shop`.`books` (`book_id`, `title`, `author`, `price`, `category_id`) VALUES ('4', 'Foundation and Earth', 'Isaac Asimov', '11.07', '2');
INSERT INTO `shop`.`books` (`book_id`, `title`, `author`, `price`, `category_id`) VALUES ('5', 'The Da Vinci Code', 'Dan Brown', '7.99', '3');
INSERT INTO `shop`.`books` (`book_id`, `title`, `author`, `price`, `category_id`) VALUES ('6', 'A Column of Fire', 'Ken Follett', '6.99', '3');INSERT INTO `shop`.`books` (`book_id`, `title`, `author`, `price`, `category_id`) VALUES ('7', 'Rudimentary Python', 'Sara Slither', '29.99', '5');
INSERT INTO `shop`.`books` (`book_id`, `title`, `author`, `price`, `category_id`) VALUES ('8', 'Java: Beyond the Beans', 'B. Lackoffee', '49.99', '5');
INSERT INTO `shop`.`books` (`book_id`, `title`, `author`, `price`, `category_id`) VALUES ('9', 'Dynatrace: Analysis and Seeing the Hidden Data', 'Y. Nointeger', '34.99', '1');
INSERT INTO `shop`.`books` (`book_id`, `title`, `author`, `price`, `category_id`) VALUES ('10', 'The Perfect Pancake', 'F.L. Apjack', '19.99', '4');
INSERT INTO `shop`.`books` (`book_id`, `title`, `author`, `price`, `category_id`) VALUES ('11', 'Fishy on Me: RMDBS for the Navy', 'Tico', '78.99', '5');
INSERT INTO `shop`.`books` (`book_id`, `title`, `author`, `price`, `category_id`) VALUES ('12', 'Programming with Android 200', 'Google Overloads', '17.99', '5');
INSERT INTO `shop`.`books` (`book_id`, `title`, `author`, `price`, `category_id`) VALUES ('13', 'The Poopy Place: Sewage Nightmares', 'P. Ewe Oswald', '10.49', '3');