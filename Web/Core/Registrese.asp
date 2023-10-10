<!-- #include file="conexion.asp" -->


<!doctype html>
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="../css/style2.css">
    <link rel="stylesheet" href="../css/bootstrap.min2.css">    
    <title>Resgistrese con Nosotros</title>
  </head>

    <!-- cuerpo del formulario de logueo -->
<body>
  <div class="d-lg-flex half">
    <div class="bg order-1 order-md-2" style="background-image: url('../img/bg_1.jpg');"></div>
    <div class="contents order-2 order-md-1">
      <div class="container">
        <div class="row align-items-center justify-content-center">
          <div class="col-md-7">
            <h3>Registrese con <strong>Nosotros</strong></h3>
            <p class="mb-4">Compra Supermercado a domicilio en bogota - Puedes pagar tu pedido con tarjeta o en efectivo contra entrega.</p>
            <form action="Registra.asp" method="POST" name="FrontPage_Form" class="C" onSubmit="return FrontPage_Form_Validator(this)">
              <!-- seccion para dividir usuario y contraseña -->
              <div class="form-group first">
                <label for="nombre">Nombre</label>
                <input name="D1" type="text" class="form-control" placeholder="Digite su Nombre" id="D1">
              </div>
              <div class="form-group first">
                <label for="Identificacion">Identificacion</label>
                <input name="D2" type="text" class="form-control" placeholder="Ingrese su Identificacion" id="D2">
              </div>
              <div class="form-group first">
                <label for="Direccion">Direccion</label>
                <input name="D3" type="text" class="form-control" placeholder="Ingrese su Direccion" id="D3">
              </div>
              <div class="form-group first">
                <label for="Telefono">Telefono</label>
                <input name="D4" type="text" class="form-control" placeholder="Ingrese su Telefono" id="D4">
              </div> 
              <div class="form-group first">
                <label for="Email">Email</label>
                <input name="D5" type="text" class="form-control" placeholder="Ingrese su Email" id="D5">
              </div>  
              <div class="form-group first">
                <label for="Password">Password</label>
                <input name="D6" type="text" class="form-control" placeholder="Ingrese su Password" id="D6">
              </div>        
              <div class="d-flex mb-5 align-items-center">
                <label class="control control--checkbox mb-0"><span class="caption">Gracias Por Registrarse</span>
                  <input type="checkbox" checked="checked"/>
                  <div class="control__indicator"></div>
                </label>
              </div>
              <p>
			<button type="submit" class="btn btn-primary"><span class="glyphicon glyphicon-envelope"></span> Grabar</button>

 		  </p>
                <!-- cierre formulario general -->
            </form>
          </div>
        </div>
      </div>
    </div>    
  </div>  
</body>
</html>