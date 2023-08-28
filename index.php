<?php 
//On vérifie si il existe l 'url avec la variable q 

if(isset($_GET['q'])){

	// VARIABLE
	$shortcut = htmlspecialchars($_GET['q']);

	// IS A SHORTCUT ?
	$bdd = new PDO('mysql:host=localhost;dbname=zurly;charset=utf8', 'root', '');
	$req =$bdd->prepare('SELECT COUNT(*) AS x FROM links WHERE shortcut = ?');
	$req->execute(array($shortcut));


	// REDIRECTION
	$req = $bdd->prepare('SELECT * FROM links WHERE shortcut = ?');
	$req->execute(array($shortcut));

	while($result = $req->fetch()){

		header('location: '.$result['url']);
		exit();

	}

}


//récupération de l'url envoyer par l'utilisateur
if(isset($_POST['url'])){
   $url = $_POST['url'];

   //vérification QUE C'EST BIEN UNE URL QUI AI ENVOYER
    if(!filter_var($url, FILTER_VALIDATE_URL)){
        //pas de lien
        header('location: ../bitly/index.php?error=true&message=adresse url non valide');
        exit();
    }
   //le shortcut de l'url
   $shortcut = crypt($url,rand());

   //vérifier si l'url a déja été proposer

   //connection a la base de données
   try{
     $bdd = new PDO('mysql:host=localhost;dbname=zurly;charset=utf8','root','');
   } catch(Exception $e){
    die('erreur'.$e->getMessage());
   }
   //requêtes pour savoir si l'url proposé a déja existé dans la base de données
   $req = $bdd->prepare('SELECT COUNT(*)
                         AS x
                         FROM links
                         WHERE url = ?   
   ');
   $req->execute(array($url));

   while($result = $req->fetch()){
    if($result['x'] != 0 ){
        header('location: ../bitly/index.php?error=true&message=Url déja raccourcie');
        exit();
    }
   }

   //envoie dans la base de données

$req = $bdd->prepare('INSERT INTO links(url, shortcut)
                      VALUES(?,?)');
$req->execute(array($url, $shortcut));
header('location: ../bitly/index.php?short='.$shortcut);
exit();


}

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="design/index.css">
    <title>Document</title>
</head>
<body>
    <section class="container_fluid_0">
     
        <div class="container_intro">   
              <h2 class="zurly">Zurly</h2>
              <div class="container">
                   <h1>Une url longue ? raccourcissez la !</h1>
                    <span>Largement meilleur et plus court que les autres</span>
                    <form method="POST" action="index.php" class="container_input">
                        <table border>
                            <tr>
                                <input type="url" name="url" >
                                <button type="submit">RACCOURCIR</button>
                            </tr>
                        </table>
                    </form>
        <div class="container_newUrl">

        <?php if(isset($_GET['error'])&& isset($_GET['message'])){ ?>
        <p><?php echo htmlspecialchars($_GET['message']);?></p>
        <?php } else if(isset($_GET['short'])){?>
            <p>http://localhost:8080/projet/phpUdemy/bitly/index.php/?q=<?php echo htmlspecialchars($_GET['short']);?></p>
        <?php } ?>

        </div>
              </div>
           
        </div>
      
</section>
    <section class="container_fluid_1">
        <h2>Ces marques nous font confiance</h2>
        <div class="container_0">
            <div class="container_img">
                 <img src="./pictures/1.png" alt="" srcset="">
            </div>

            <div class="container_img">
                 <img src="./pictures/2.png" alt="" srcset="">
            </div>

            <div class="container_img">
                 <img src="./pictures/3.png" alt="" srcset="">
            </div>

            <div class="container_img">
                 <img src="./pictures/4.png" alt="" srcset="">
            </div>
           
        </div>
    </section>

    <section class="container_fluid_2">
        <h2>ZURLY</h2>
        <span>ex: © Tous droits réservés - 2022</span>
    </section>
</body>
</html>