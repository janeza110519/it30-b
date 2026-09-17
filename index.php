<?php

// Database Connection
$host = 'localhost';
$db = 'it30_lab_db';
$user = 'root';
$pass = '';
$charset = 'utf8mb4';

$dsn = "mysql:host=$host; dbname=$db; charset=$charset";

$options = [
    PDO::ATTR_ERRMODE => PDO:ERRMODE_EXEPTION,
    PDO::ATTR_DEFUALT_FETCH_MODE => PDO:FETCH_ASSOC,
    PDO::ATTR_EMULATE_PREPARES => false,
];

try{
    $pdo = new PDO($dsn,$user,$pass, $options);
    echo 'connection successful';
}catch(PDOException $e){
    die("Database connection failed" . $e->getMessage());
}

//Session
session_start();

//Determine current section
$section = $_GET['section'] ??'students';

//Determine CRUD Operation
$action = $_GET['action'] ?? '';

//Fetch Students
if($section==='students'){

    $stmt = $pdo->("
    SELECT *
    FROM students
    ORDER BY student_id DESC
");

$students = $stmt->fetchAll();

}


?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Library System</title>
</head>
<body>
    
</body>
</html>