create user 'devops'@'%' identified by 'mestre';
grant all privileges on *.* to devops@'%' identified by 'mestre';

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

CREATE TABLE IF NOT EXISTS `phone_book` (
  `id` int(5) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

INSERT INTO `phone_book` (`id`, `name`, `phone`, `address`) VALUES
(1, 'Wallace Bruno Gentil', '+55 (11) 7070 - 7070', 'Ali do lado');

ALTER TABLE `phone_book`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `phone_book`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
