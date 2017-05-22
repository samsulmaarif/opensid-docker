<?php
// -------------------------------------------------------------------------
// Konfigurasi database dalam file ini menggantikan konfigurasi di file asli
// SID di donjo-app/config/database.php.
//
// Letakkan username, password dan database sebetulnya di file ini.
// File ini JANGAN di-commit ke GIT. TAMBAHKAN di .gitignore
// -------------------------------------------------------------------------

$db['default']['hostname'] = getenv('DB_PORT_3306_TCP_ADDR');
$db['default']['username'] = 'opensid';
$db['default']['password'] = 'opensid';
$db['default']['database'] = 'opensid';
?>
