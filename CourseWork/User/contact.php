<?php
if (isset($_POST['message'])) {
    $title = "Contact Us";
    $message = htmlspecialchars($_POST['message']); 
    
    
    $output = "Thank you for your message: " . $message . ". We will get back to you shortly.";
} else {
    $title = "Contact Us";
    ob_start();
    include '../templates/mailform.html.php'; 
    $output = ob_get_clean();
}

include '../templates/user_layout.html.php'; 
