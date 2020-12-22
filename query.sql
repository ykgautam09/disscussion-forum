CREATE DATABASE IF NOT EXISTS `discussion`
    DEFAULT CHARACTER SET utf8
    DEFAULT COLLATE utf8_general_ci;
USE `discussion`;

DROP TABLE IF EXISTS `course_question`;
CREATE TABLE `course_question`
(
    `id`            BIGINT AUTO_INCREMENT PRIMARY KEY,
    `course_id`     INT      NOT NULL,
    `question`      TEXT     NOT NULL,
    `username`      CHAR(50) NOT NULL,
    `tag1`          CHAR(50)  DEFAULT NULL,
    `tag2`          CHAR(50)  DEFAULT NULL,
    `tag3`          CHAR(50)  DEFAULT NULL,
    `entry_time`    TIMESTAMP DEFAULT current_timestamp,
    `image_link`    TEXT      DEFAULT NULL,
    `have_reply`    INT       DEFAULT 0,
    `vote`          INT       DEFAULT 0,
    `miscellaneous` TEXT      DEFAULT NULL
);

DROP TABLE IF EXISTS `course_answer`;
CREATE TABLE `course_answer`
(
    `id`                 BIGINT AUTO_INCREMENT PRIMARY KEY,
    `course_question_id` BIGINT   NOT NULL,
    `answer`             TEXT     NOT NULL,
    `username`           CHAR(50) NOT NULL,
    `entry_time`         TIMESTAMP DEFAULT current_timestamp,
    `image_link`         TEXT      DEFAULT NULL,
    `vote`               INT       DEFAULT 0,
    `order`              INT       DEFAULT 0,
    `depth`              INT       DEFAULT 0,
    `modified`           INT       DEFAULT 0,
    `miscellaneous`      TEXT      DEFAULT NULL
);


DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`
(
    `id`          BIGINT AUTO_INCREMENT PRIMARY KEY,
    `pass`        TEXT      NOT NULL,
    `username`    CHAR(50)  NOT NULL,
    `email`       CHAR(100) NOT NULL,
    `link`        TEXT DEFAULT NULL,
    `description` TEXT DEFAULT NULL
);
