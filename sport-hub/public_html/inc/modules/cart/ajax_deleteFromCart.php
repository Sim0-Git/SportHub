<?php
require("../../../../private/initializer.php");

// Check if session of the carts exists or not
if (!isset($_SESSION[SESSION_CARTS])) {
    $_SESSION[SESSION_CARTS] = [];
}

// Check if it's the ajax request
if (!is_ajax_request()) {
    exit();
} else {
    $product_id = isset($_POST[PRODUCT_ID]) ? $_POST[PRODUCT_ID] : "";
    if (in_array($product_id, $_SESSION[SESSION_CARTS])) {
        // If it's not inside the session
        $postArr = remove_from_array($product_id, $_SESSION[SESSION_CARTS]);
        $_SESSION[SESSION_CARTS] = $postArr;
        echo true;
    } else {
        echo false;
    }
}
