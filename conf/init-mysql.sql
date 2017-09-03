
INSERT INTO `settings` (`id`, `name`, `value`) VALUES
(1, 'app_name', 'YunoHost Status Page'),
(2, 'app_domain', 'https://__DOMAIN__'),
(3, 'app_timezone', 'Europe/Paris'),
(4, 'app_locale', '__LANGUAGE__'),
(5, 'app_incident_days', '7');


INSERT INTO `users` (`id`, `username`, `password`, `email`, `api_key`, `active`, `level`) VALUES
(1, '__USER__', '__PASSWORD_HASH__', '__EMAIL__', '', 1, 1);

-- API key : 3INrrFW4zwdpDJbqxT0O


-- INSERT INTO `settings` (`id`, `name`, `value`, `created_at`, `updated_at`) VALUES
-- (1, 'app_name', 'yolo', '2017-09-02 20:22:38', '2017-09-02 20:22:38'),
-- (2, 'app_domain', 'https://ortest.local', '2017-09-02 20:22:38', '2017-09-02 20:22:38'),
-- (3, 'app_timezone', 'Africa/Cairo', '2017-09-02 20:22:38', '2017-09-02 20:22:38'),
-- (4, 'app_locale', 'en', '2017-09-02 20:22:38', '2017-09-02 20:22:38'),
-- (5, 'app_incident_days', '7', '2017-09-02 20:22:38', '2017-09-02 20:22:38');


-- INSERT INTO `users` (`id`, `username`, `password`, `remember_token`, `google_2fa_secret`, `email`, `api_key`, `active`, `level`, `created_at`, `updated_at`) VALUES
-- (1, 'jimmy', '$2y$10$49h3sucbCUhvDsCCtlQlAOB2z5R9mdyw0sSYCDA0rFe0kndxl3w.W', NULL, NULL, 'jimmy@ortest.local', '3INrrFW4zwdpDJbqxT0O', 1, 1, '2017-09-02 20:22:38', '2017-09-02 20:22:38');
