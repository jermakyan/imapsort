<?php
$hostname = '{mail2.platbox.com:993/imap/ssl}INBOX';
$username = 'register.test2@platbox.com'; # например somebody@gmail.com
$password = 'Qweasd78';

$inbox = imap_open($hostname,$username,$password) or die('Cannot connect to mail server: ' . imap_last_error());

$emails = imap_search($inbox,'UNSEEN');
$max_emails = 16;
