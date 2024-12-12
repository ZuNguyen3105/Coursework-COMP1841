<?php
try{
    include 'includes/DatabaseConnection.php';
    include 'includes/DataBaseFunctions.php';

    // $sql = 'SELECT joke.id, jokedate, joke_pic ,joketext, `name`, email, categoryName FROM joke 
    // INNER JOIN author ON authorid = author.id
    // INNER JOIN category ON categoryid = category.id';

    $posts = allposts($pdo);
    $title = 'Post list';
    $totalposts = totalposts($pdo);

    ob_start();
    include 'templates/public_posts.html.php';
    $output = ob_get_clean();
}catch (PDOException $e){
    $title = 'An error has occured';
    $output = 'Database error:' . $e->getMessage();
    
}
include 'templates/layout.html.php';