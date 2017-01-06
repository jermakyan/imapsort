<?php
//$dsn = "mysql:host=127.0.0.1;dbname=photoalbum;charset=utf8_general_ci";
$dsn = "pgsql:host=127.0.0.1;dbname=imapsoft";
$user = 'imapsoft';
$pass = 'Qweasd78';
$opt = array(
    PDO::ATTR_ERRMODE            => PDO::ERRMODE_EXCEPTION,
    PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC
);
$pdo = new PDO($dsn, $user, $pass, $opt);
//var_dump($pdo);