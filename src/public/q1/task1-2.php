<?php
$dbUserName = 'root';
$dbPassword = 'password';
$pdo = new PDO('mysql:host=mysql; dbname=tq_quest; charset=utf8',$dbUserName, $dbPassword);

$sql = "select * from spendings";
$statement = $pdo->prepare($sql);
$statement->execute();
$spendings = $statement->fetchAll(PDO::FETCH_ASSOC);

echo '<pre>';
var_dump($spendings);
echo '<pre>';