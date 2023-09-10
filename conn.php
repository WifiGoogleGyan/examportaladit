<?php 

$host = "localhost";
$user = "id20888528_root";
$pass = "Ceepass_123456";
$db   = "id20888528_cee_db";
$conn = null;

try {
  $conn = new PDO("mysql:host={$host};dbname={$db};",$user,$pass);
} catch (Exception $e) {
  
}


 ?>