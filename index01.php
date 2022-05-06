<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>World's Biggest Artwork Gallery</title>
    <link rel="stylesheet" href="style/homepage.css">

</head>
<body>
   <section class="header">
    <nav class="navbar">
        <div class="nav">
            <img src="img/logo.png" class="logo" alt="" srcset="">
            <a href="cart.php">
            <img src="img/cart.png" class="cart" alt="" srcset="">
            </a>

            <div class="navitems">
                <div class="search">
                 
            </a>
                </div>
                <div>
                    
                </div>
                <form method="POST" action="index.php">
                    <button type="submit" class="btn" > Log Out </button>
                </form>
                <div></div>
            </div>
        </div>
        <ul class="container">
            <li class="item"><a href="#" class="link">Home</a></li>
          
            <li class="item"><a href="display_artwork.php" class="link">Catalog</a></li>
            <li class="item"><a href="About_Us.html" class="link">About Us</a></li>
            <li class="item"><a href="contact_us.php" class="link">Contact Us</a></li>
            <li class="item"><a href="FAQ.html" class="link">FAQ</a></li>
            <li class="item"><a href="search.php" class="link">Search</a></li>
        </ul>
    </nav>
    <div class= "Description">
        <h1>World's Biggest Artwork Gallery</h1>
        <p>This is an e-commerce website where an artist will sell his/her taken photos, paintings and crafts.</br> Here, we will be able to see the product's picture, description and price and purchase the products</br> by adding them into a cart. It's a marketplace where people around the world can connect to buy</br> and sell unique arts and photography
        </p>
        <form action="display_artwork.php">
          <button class="button-design" type = "submit">View Catalog</button>
        </form>
    </div>
    </section>

</body>
</html>

