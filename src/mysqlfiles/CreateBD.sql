CREATE TABLE IF NOT EXISTS people (
  id          INT         NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name        VARCHAR(50) NOT NULL,
  fone_number VARCHAR(12) NOT NULL,
  email       VARCHAR(50) NOT NULL

);

CREATE TABLE IF NOT EXISTS status_sms_devino (
  status VARCHAR(20) NOT NULL PRIMARY KEY
);

CREATE TABLE IF NOT EXISTS Log_sms_devino (
  id        INT         NOT NULL AUTO_INCREMENT PRIMARY KEY,
  status    VARCHAR(20) NOT NULL,
  TEXT      VARCHAR(90) NOT NULL,
  recipient INT         NOT NULL,

  FOREIGN KEY (status) REFERENCES status_sms_devino (status),
  FOREIGN KEY (recipient) REFERENCES people (id)
);

DROP TABLE Log_sms_devino;