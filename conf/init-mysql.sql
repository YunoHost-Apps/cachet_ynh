
REPLACE INTO `settings` (`group`, `name`, `payload`) VALUES
-- ('app', 'name', 'YunoHost Status Page'),
('app','domain', 'https://__DOMAIN____PATH__'),
('app','timezone', 'Europe/Paris'),
('app','locale', '__LANGUAGE__'),
('app','incident_days', '7');


INSERT INTO `users` (`name`, `password`, `email`) VALUES
('__ADMIN__', '__PASSWORD_HASH__', '__ADMIN_MAIL__');
