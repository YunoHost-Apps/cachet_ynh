
INSERT INTO `settings` (`id`, `name`, `value`) VALUES
(1, 'app_name', 'YunoHost Status Page'),
(2, 'app_domain', 'https://__DOMAIN__'),
(3, 'app_timezone', 'Europe/Paris'),
(4, 'app_locale', '__LANGUAGE__'),
(5, 'app_incident_days', '7');


INSERT INTO `users` (`id`, `username`, `password`, `email`, `api_key`, `active`, `level`) VALUES
(1, '__ADMIN__', '__PASSWORD_HASH__', '__EMAIL__', '', 1, 1);
