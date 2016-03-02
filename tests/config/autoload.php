<?php require __DIR__ . '/../../vendor/autoload.php';

\Corcel\Database::connect(array(
    'database'  => 'corcel-to-corcel-dev',
    'username'  => 'root',
    'password'  => '',
    'host' => '127.0.0.1',
));
//
//$corcel = new \Corcel\Database\Manager(null);
//
//$corcel->addConnection([
//    'database' => 'corcel-to-corcel-dev',
//    'username' => 'root',
//    'password' => '',
//    'host' => '127.0.0.1',
//], 'corcel');