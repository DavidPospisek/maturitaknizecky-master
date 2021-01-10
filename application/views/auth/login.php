
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Přihlášení</title>
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Le styles -->
    <link href="<?php echo base_url('css/bootstrap.css')?>" rel="stylesheet">
    <style type="text/css">
      /* Override some defaults */
      html, body {
        background-color: #FF5733;
      }
      body {
        padding-top: 60px; 
      }
      .container {
        width: 1892px;
      }

      /* The white background content wrapper */
      .container > .content {
        background-color: #336EFF ;
        padding: 40px;
        margin: 20 -20px; 
        -webkit-border-radius: 10px 10px 10px 10px;
           -moz-border-radius: 10px 10px 10px 10px;
                border-radius: 10px 10px 10px 10px;
        -webkit-box-shadow: 0 1px 2px rgba(0,0,0,.15);
           -moz-box-shadow: 0 1px 2px rgba(0,0,0,.15);
                box-shadow: 0 1px 2px rgba(0,0,0,.15);
      }

    .login-form {
    margin-left: 750px;
    }
  
    legend {
    margin-right: -1500px;
    font-weight: bold;
      color: #404040;
    }

    </style>

</head>
<body>
  <div class="container">
    <div class="content">
      <div class="row">
        <div class="login-form">
<div class="page-header">
    <h1>Přihlášení</h1>
  </div>          <?php if($message) { ?> 
          <div class="alert alert-error">
  
 
</div>
<?php } ?>
          <form action="<?php echo base_url('auth/login')?>" method="post" accept-charset="utf-8">
            
              <div class="clearfix">
                <div class="input-prepend">
                <span class="add-on"><i class="icon-envelope"></i></span>
              
                <input type="text" name="identity" value="" id="identity" placeholder="Uživatelské jméno">
                </div>
              </div>
              <div class="clearfix">
                <div class="input-prepend">
                <span class="add-on"><i class="icon-lock"></i></span>
                <input type="password" name="password" placeholder="Heslo">
                </div>
              </div>
              <button class="btn btn-primary" type="submit">Přihlásit se</button>
              <p><a href="forgot_password">Zapomněli jste heslo?</a></p>
            
          </form>
        </div>
      </div>
    </div>
  </div> <!-- /container -->
  <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
        <script>window.jQuery || document.write('<script src="js/vendor/jquery-1.9.1.min.js"><\/script>')</script>

        <script src="<?php echo base_url('js/vendor/bootstrap.min.js') ?>"></script>

        <script src="<?php echo base_url('js/plugins.js') ?>"></script>
        <script src="<?php echo base_url('js/main.js') ?>"></script>

        <script>
            var _gaq=[['_setAccount','UA-XXXXX-X'],['_trackPageview']];
            (function(d,t){var g=d.createElement(t),s=d.getElementsByTagName(t)[0];
            g.src=('https:'==location.protocol?'//ssl':'//www')+'.google-analytics.com/ga.js';
            s.parentNode.insertBefore(g,s)}(document,'script'));
        </script>
</body>
</html>