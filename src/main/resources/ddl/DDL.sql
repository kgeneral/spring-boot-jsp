create table board (
  id int(11) NOT NULL AUTO_INCREMENT,
  title varchar(255) NOT NULL,
  content text DEFAULT NULL,
  created_date datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_date datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  user_name varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
)