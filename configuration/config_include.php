<?php


// Url


// Configuration

function alltotal() { include 'configuration/config_alltotal.php'; } // Alltotal Configuration
function connect() { include 'configuration/config_connect.php'; } // Connect Configuration
function excelreader() { include 'configuration/config_excel_reader.php'; } // Excel Reader Configuration
function generate() { include 'configuration/config_generate.php'; } // Generate Configuration
function pagination() { include 'configuration/config_pagination.php'; } // Pagination Configuration
function session() { include 'configuration/config_session.php'; } // Session Configuration
function session2() { include 'configuration/config_session2.php'; } // Session Two Configuration
function timing() { include 'configuration/config_time.php'; } // Timing Two Configuration

// Component

function body() { include 'component/core/body.php'; } // Body Component
function footer() { include 'component/core/footer.php'; } // Footer Component
function head() { include 'component/core/head.php'; } // Head Component
function theader() { include 'component/core/theader.php'; } // Header Component
function menu() { include 'component/core/menu.php'; } // Menu Component
function usermenu() { include 'component/core/user_menu.php'; } // Menu Component


// ETC

function breadcrumb() { include 'component/core/breadcrumb.php'; } // Breadcrumb Component
function etc() { include 'configuration/config_etc.php'; } // etc Configuration
function encryption() { include 'configuration/config_encrypt.php'; } // encrypt Configuration

function safe_number_format($value, $decimals = 2, $decimal_separator = '.', $thousands_separator = ',') {
    // Ganti nilai NULL dengan 0
    $numeric_value = is_numeric($value) ? $value : 0;

    // Format angka
    return number_format($numeric_value, $decimals, $decimal_separator, $thousands_separator);
}
function safe_mysqli_real_escape_string(mysqli $connection, $string) {
    // Pastikan nilai $string tidak NULL, gunakan string kosong sebagai default
    $string = $string ?? '';

    // Escape string menggunakan mysqli_real_escape_string
    return mysqli_real_escape_string($connection, $string);
}
$decimal ="0";
$a_decimal =",";
$thousand =".";
?>