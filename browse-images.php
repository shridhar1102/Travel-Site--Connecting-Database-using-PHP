  <?php
  $dbconn = 'mysql:host=localhost;dbname=traveller';
  $dbusername = "root";
  $dbpassword = "";
  $imagepaths=array();
  $dbcontinents=array();
  $dbcountries=array();
  $dbcities=array();

  if ($_SERVER['REQUEST_METHOD'] == 'GET' && ((isset($_GET['city']) && $_GET['city']!=0) || (isset($_GET['country']) && $_GET['country']!=0))) 
  {
     $city = 0;
     $country=0;
     $sql="";
     if(isset($_GET['city']) && $_GET['city']!=0 && isset($_GET['country']) && $_GET['country']!=0){
       $sql="select location from travelimages where id in (select imageid from travelimagedetails where countryid='".$_GET['country']."' or cityid='".$_GET['city']."' group by imageid)";
     }else if(isset($_GET['city']) && $_GET['city']!=0){
       $sql="select location from travelimages where id in (select imageid from travelimagedetails where cityid='".$_GET['city']."' group by imageid)";
     }else {
       $sql="select location from travelimages where id in (select imageid from travelimagedetails where countryid='".$_GET['country']."' group by imageid)";
     }
     $db_pdo = null;

    try{

     $db_pdo =  new PDO($dbconn, $dbusername, $dbpassword); 

    }

    catch(PDOException $e)
    { 
      die($e->getMessage());
    }
       
        $message=null;
      if(!($message=$db_pdo->query($sql))) throw new PDOException();
        
      while($rowdata = $message->fetch()){
      
      $imagepaths[]=$rowdata['location']; 
      }
   
    $db_pdo = null;
   }
    
  else{

     $sql="select location from travelimages where id in (select imageid from travelimagedetails)"; 
     $db_pdo = null;

     try{

         $db_pdo =  new PDO($dbconn, $dbusername, $dbpassword); 
       }

    catch(PDOException $e)
    {
      die($e->getMessage());
    }
     
        $message=null;
      if(!($message=$db_pdo->query($sql))) throw new PDOException();
        
    while($rowdata = $message->fetch())
    {
      $imagepaths[]=$rowdata['location']; 
    }

    $db_pdo = null;
  }  
    $sql="select id,name from geocountries where id in (select countryid from travelimagedetails)"; 
     $db_pdo = null;
     try{
     $db_pdo =  new PDO($dbconn, $dbusername, $dbpassword);  
    }

    catch(PDOException $e)
    {
      die($e->getMessage());
    }
     
        $message=null;
      if(!($message=$db_pdo->query($sql))) throw new PDOException();
        
    while($rowdata = $message->fetch()){    
      $dbcountries[]=array($rowdata['id'], $rowdata['name']);
    }
    $db_pdo = null;
    
    
    $sql="select name from geocontinents"; 
     $db_pdo = null;

     try{

     $db_pdo =  new PDO($dbconn, $dbusername, $dbpassword);

    }
    catch(PDOException $e)
    {
      die($e->getMessage());
    }
     
        $message=null;
      if(!($message=$db_pdo->query($sql))) throw new PDOException();
        
    while($rowdata = $message->fetch())
    {
      $dbcontinents[]=$rowdata['name']; 
    }

    $db_pdo = null;

  $sql="select id,name from geocities where id in (select cityid from travelimagedetails)"; 
     $db_pdo = null;
     try{
     $db_pdo =  new PDO($dbconn, $dbusername, $dbpassword);  
    }

    catch(PDOException $e)
    {
      die($e->getMessage());
    }
     
        $message=null;
      if(!($message=$db_pdo->query($sql))) throw new PDOException();
        
    while($rowdata = $message->fetch())
    {    
      $dbcities[]=array($rowdata['id'], $rowdata['name']);
    }

    $db_pdo = null;

     
  ?>


<!DOCTYPE html>
<html lang="en">
<head>
   <title>Travel Template</title>
   <?php include 'includes/travel-head.inc.php'; ?>
</head>
<body>

<?php include 'includes/travel-header.inc.php'; ?>
   
<div class="container">  <!-- start main content container -->
   <div class="row">  <!-- start main content row -->
      <div class="col-md-3">  <!-- start left navigation rail column -->
         <?php include 'includes/travel-left-rail.inc.php'; ?>
      </div>  <!-- end left navigation rail --> 
      
      <div class="col-md-9">  <!-- start main content column -->
         <ol class="breadcrumb">
           <li><a href="#">Home</a></li>
           <li><a href="#">Browse</a></li>
           <li class="active">Images</li>
         </ol>          
    
         <div class="well well-sm">
            <form class="form-inline" role="form" method="get" action="<?php echo $_SERVER['PHP_SELF']; ?>">
              <div class="form-group" >
                <select class="form-control" name="city">
                  <option value="0">Filter by City</option>
          <?php  
        foreach ($dbcities as $city) {          
                      echo "<option value='".$city[0]."'>".$city[1]."</option>";
        }
        ?>
    
                </select>
              </div>
              <div class="form-group">
                <select class="form-control" name="country">
                  <option value="0">Filter by Country</option>
          <?php  
        foreach ($dbcountries as $country) {          
                      echo "<option value='".$country[0]."'>".$country[1]."</option>";
        }
        ?>
                </select>
              </div>  
              <button type="submit" class="btn btn-primary">Filter</button>
            </form>         
         </div>      <!-- end filter well -->
         
         <div class="well">
            <div class="row">
                <!-- display image thumbnails code here -->
        <?php  
        foreach ($imagepaths as $imagepath) {           
                      echo "<img class='img-thumbnail' src='".$imagepath."' />";
        }
        ?>
            </div>
         </div>   <!-- end images well -->

      </div>  <!-- end main content column -->
   </div>  <!-- end main content row -->
</div>   <!-- end main content container -->
   
<?php include 'includes/travel-footer.inc.php'; ?>   

   
   
 <!-- Bootstrap core JavaScript
 ================================================== -->
 <!-- Placed at the end of the document so the pages load faster -->
 <script src="bootstrap3_travelTheme/assets/js/jquery.js"></script>
 <script src="bootstrap3_travelTheme/dist/js/bootstrap.min.js"></script>
 <script src="bootstrap3_travelTheme/assets/js/holder.js"></script>
</body>
</html>


  