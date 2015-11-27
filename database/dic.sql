DROP DATABASE IF EXISTS dict;
CREATE DATABASE dict;

DROP TABLE IF EXISTS dict.word;
CREATE TABLE dict.word (
  id      INT(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  english VARCHAR(255) COMMENT '单词',
  ipa_uk  VARCHAR(255) COMMENT '英式发音',
  ipa_us  VARCHAR(255) COMMENT '美式发音'
)
  COMMENT '单词表';

SELECT *
FROM dict.word;
DESC dict.word;

DROP TABLE IF EXISTS dict.word_detail;
CREATE TABLE dict.word_detail (
  id             INT(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  part_of_speach VARCHAR(255),
  chinese        VARCHAR(255) COMMENT '翻译',
  word_id        INT(11) UNSIGNED COMMENT '外键'
)
  COMMENT '词性表';
ALTER TABLE dict.word_detail ADD CONSTRAINT word_detail_word_id FOREIGN KEY (word_id) REFERENCES dict.word (id);
DESC dict.word_detail;
SELECT *
FROM dict.word_detail;

DROP TABLE IF EXISTS dict.word_sentence;
CREATE TABLE dict.word_sentence (
  id             INT(11)UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  english        VARCHAR(255) COMMENT '英语例句',
  chinese        VARCHAR(255) COMMENT '汉语翻译',
  origin         VARCHAR(255) COMMENT '来源',
  word_detail_id INT(11) UNSIGNED COMMENT '外键'
)
  COMMENT '例句';
ALTER TABLE dict.word_sentence ADD CONSTRAINT fk_word_sentence_word_detail_id FOREIGN KEY (word_detail_id) REFERENCES dict.word_sentence (id);
DESC dict.word_sentence;
SELECT *
FROM dict.word_sentence;