<?php
require_once __DIR__ . '../../vendor/autoload.php';
use App\Incomes;

$incomes = new Incomes();
var_dump($incomes->fetchAllIncomes());