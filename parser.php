<?php
require_once 'config/connect.php';
//прикрутить проверку существования файлов и сделать цикл чтобы пробегать по вложениям
//$s = fopen($fname='files/'.'Platbox20160913_20160913.txt', "rt");
$s = fopen($fname='files/'.'test1.txt', "rt");
$stroka = explode("\n",fread($s,filesize($fname)));   //это массив!

$colvo = count($stroka);
echo "всего строк: " . $colvo . "<br>";
//for($z=0; $z<$colvo; $z++)
for($z=0; $z<$colvo; $z++)
{
//используем функцию strpos для поиска текста в строке.
    if (strpos($stroka[$z], 'Total') !== false) // Проверяю есть ли в строке слово Total, ничего не выводим иначе всю строку. Слово total было в примере, и эту строку парсить не надо.
    {
        //do nothing;
    } else {
        echo $stroka[$z] . "<br>";
        list($number, $date, $email_adres, $summa) = explode (";", $stroka[$z] ); //не работает если разделитель пробел
        echo 'Номер '.var_dump($number).'<br>';
        echo 'Дата '.var_dump($date).'<br>';
        echo 'email '.var_dump($email_adres).'<br>';
        echo 'Сумма '.var_dump((int)$summa).'<br>';

        $query="INSERT INTO test2(number, timestamp, email, summa) VALUES ('".$number. "', '" .$date. "', '" .$email_adres. "', '".(int)$summa."')";
        $count=$pdo->exec($query);
        if ($count == false )
            echo "Ошибка SQL: <pre>";
            print_r($pdo->errorInfo());
            echo '<pre>';
        }

}
//после завершения перемещать найденные файлы в другую папку
fclose ($s);
