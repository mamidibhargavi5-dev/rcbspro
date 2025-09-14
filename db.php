<?php
$conn = new mysqli("localhost", "root", "", "attendance_db");
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
?>

<?php
$host = "sql101.infinityfree.com";   // Your DB host
$user = "if0_39936239_attendance_db";      // Your DB username
$pass = "smartrcbs";      // Your DB password
$db   = "if0_39936239_attendance_db"; // Your database name

$conn = mysqli_connect($host, $user, $pass, $db);

if (!$conn) {
    die("❌ Connection failed: " . mysqli_connect_error());
}
?>
