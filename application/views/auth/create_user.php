<html>
    <head>
        <title>Register</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        <link rel="stylesheet/less" type="text/css" href="styles.less">
        <script src="less.js" type="text/javascript"></script> 
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <style>
    body {
            text-align: center;
    }
    </style>
    </head>
    <body style="background-color:lightgreen;">
        <div class="container">
        <div class="col-lg-4">
        </div>
<br>
         <div class="col-lg-4">
             <div class="card" style="width: 60rem; ">
             
	<div class="card-header">
<h3 align="center">Zaregistruj se vyplněním údajů</h3>
	</div>
	<div class="card-body">
<?php echo form_open("auth/create_user");?>

      <p>
            <?php echo lang('create_user_fname_label', 'first_name');?> <br/>
            <?php echo form_input($first_name);?>
      </p>

      <p>
            <?php echo lang('create_user_lname_label', 'last_name');?> <br/>
            <?php echo form_input($last_name);?>
      </p>
      
      <?php
      if($identity_column!=='email') {
          echo '<p>';
          echo lang('create_user_identity_label', 'identity');
          echo '<br />';
          echo form_error('identity');
          echo form_input($identity);
          echo '</p>';
      }
      ?>
      <p>
            <?php echo lang('create_user_company_label', 'company');?><br/>
            <?php echo form_input($company);?>
      </p>
      <p>
      <?php echo lang('create_user_email_label', 'email');?><br/>
            <?php echo form_input($email);?>
      </p>
      <p>
   <?php echo lang('create_user_phone_label', 'phone');?><br/>
   <?php echo form_input($phone);?>
      </p>
      <p>
  <?php echo lang('create_user_password_label', 'password');?><br/>
 <?php echo form_input($password);?>
      </p>

      <p>
   <?php echo lang('create_user_password_confirm_label', 'password_confirm');?><br/>
   <?php echo form_input($password_confirm);?>
      </p>

     <p><input class="btn btn-md text-dark bg-secondary" type="submit" id="login" value="Registrovat se"</p>

<?php echo form_close();?>
</div>
</div>
    </div>
    </div>
        <div class="col-4">
            
        </div>
        <p class="text-align: center"><b style="color: black;">Vytvořeno jako DÚ do WEBU by David Pospíšek</b></p>
    </body>



