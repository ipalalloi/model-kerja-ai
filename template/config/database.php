<?php
// Set default timezone ke Waktu Indonesia Tengah (WITA / Makassar)
date_default_timezone_set('Asia/Makassar');

// Membaca file .env secara manual
$envPath = __DIR__ . '/../.env';
if (file_exists($envPath)) {
    $lines = file($envPath, FILE_IGNORE_NEW_LINES | FILE_SKIP_EMPTY_LINES);
    foreach ($lines as $line) {
        if (strpos(trim($line), '#') === 0) {
            continue;
        }
        list($name, $value) = explode('=', $line, 2);
        $name = trim($name);
        $value = trim($value);
        
        // Bersihkan tanda kutip jika ada
        $value = trim($value, '"\'');
        
        $_ENV[$name] = $value;
        $_SERVER[$name] = $value;
    }
}

$host = $_ENV['DB_HOST'] ?? 'localhost';
$db   = $_ENV['DB_DATABASE'] ?? 'db_spmi_pemetaan';
$user = $_ENV['DB_USERNAME'] ?? 'root';
$pass = $_ENV['DB_PASSWORD'] ?? '';
$charset = 'utf8mb4';

$dsn = "mysql:host=$host;dbname=$db;charset=$charset";
$options = [
    PDO::ATTR_ERRMODE            => PDO::ERRMODE_EXCEPTION,
    PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
    PDO::ATTR_EMULATE_PREPARES   => false,
];

if (!isset($pdo)) {
    try {
        $pdo = new PDO($dsn, $user, $pass, $options);
    } catch (\PDOException $e) {
        // Log error secara internal, jangan tampilkan ke user
        error_log("Database Connection Error: " . $e->getMessage());
        die("Sistem sedang dalam pemeliharaan.");
    }
}