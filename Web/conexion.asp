
<%
   Response.Buffer = False
   Server.ScriptTimeOut  = 36000
   response.expires=-1


   Dim conexion_
   Set conexion_ = Server.CreateObject ("ADODB.Connection")
   conexion_.CommandTimeout = 0
   conexion_.Open "driver={SQL Server};server=(local);database=MercaWeb; uid=sa;pwd=Asterisk2014"
 
%> 