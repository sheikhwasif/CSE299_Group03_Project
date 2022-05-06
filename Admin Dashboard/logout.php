<?php
    @include 'config.php';

    session_start();
    session_unset();
    session_destroy();
    header("Location:/CSE299_PROJECT/index.php");
?>