   <!-- #include file="conexion.asp" -->
   
  
  <%Response.Buffer = True%>
   
  <html>
  
  <head>
  <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
  <meta name="GENERATOR" content="Microsoft FrontPage 4.0">
  <meta name="ProgId" content="FrontPage.Editor.Document">
  
  <script language="JavaScript">
  <!--
  var txt=" .:: Insertar ::. - Pedido ";
  var refresco=null;
  function titulo() {
  document.title=txt;
  txt=txt.substring(1,txt.length)+txt.charAt(0); 
  refresco=setTimeout("titulo()",200);}
  titulo();
  
  //-->
  </script>
  </head>
  
  <body>
  
  <%
   



  vNOMBRE=ltrim(rtrim(request.form("D1")))
  vDOCUMENTO=ltrim(rtrim(request.form("D2")))
  vDIRECCION=ltrim(rtrim(request.form("D3"))) 
  vTELEFONO=ltrim(rtrim(request.form("D4")))
  vEMAIL=ltrim(rtrim(request.form("D5")))
  vPASSWORD=ltrim(rtrim(request.form("D6")))



  
 
INSERT_SQL2 = "INSERT INTO PEDIDOS..TBL_RECARGANACIONAL (IDROL,NOMBRE,DOCUMENTO,DIRECCION,TELEFONO,EMAIL,PASSWORD,ESTADO)" & _
"VALUES(2,'" & vNOMBRE & "','" & vDOCUMENTO & "','" & vDIRECCION &"','','" & vTELEFONO &"','" & vEMAIL &"','" & vPASSWORD &"','" & vESTADO &"')" 

 response.Write(INSERT_SQL2) 
	
set Rs=conexion_.execute (INSERT_SQL2)



  %>
  
  <%
   Response.Clear
   RESPONSE.redirect("main.html")
  
   Response.End
   
  %>
  
  
  </body>
  
  </html>