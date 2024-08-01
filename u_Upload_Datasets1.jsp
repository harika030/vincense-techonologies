<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>USAMPLE</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/droid_sans_400-droid_sans_700.font.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>

<style type="text/css">
<!--
.style1 {font-size: 45px}
.style2 {
	color: #be3131;
	font-size: 30px;
}
.style6 {font-size: 18px}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="index.html" class="style1">CryptoMaze Privacy Preserving Splitting of Off Chain Payments
</a></h1>
      </div>
      
      <div class="clr"></div>
      <div class="menu_nav">
        <ul>
          <li><a href="index.html"><span>Home Page</span></a></li>
          <li><a href="a_login.jsp"><span>Admin</span></a></li>
          <li class="active"><a href="u_login.jsp"><span>User</span></a></li>
        </ul>
      </div>
      <div class="slider">
        <div id="coin-slider"> 
		                       <a href="#"><img src="images/slide1.jpg" width="960" height="360" alt="" /></a> 
		                       <a href="#"><img src="images/slide2.jpg" width="960" height="360" alt="" /></a> 
							   <a href="#"><img src="images/slide3.jpg" width="960" height="360" alt="" /></a>
		</div>
      </div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <p>&nbsp;</p>
          <p align="center" class="style2">USAMPLE</p>
          <p>&nbsp;</p>
		  
          		  
		  <h2 class="star" align="left"><span><span class="style6">Datasets Uploaded Details !!! </span><span class="style6"></span> </span></h2>
          <p class="star" align="center">&nbsp;</p>
		  
		  
		  <%@page import="java.util.*"%>
<%@ include file="connect.jsp"%>
<%@page
	import="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
<%@ page
	import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream"%>
<%@ page
	import="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
<%@page
	import="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
 
 
    <%@ page import ="java.io.FileNotFoundException" %>  
    <%@ page import ="java.io.IOException" %>  
    <%@ page import ="java.util.Iterator" %>  
    <%@ page import ="java.util.ArrayList" %> 
    <%@ page import="org.apache.poi.xssf.usermodel.*" %>
    <%@ page import ="org.apache.poi.hssf.usermodel.HSSFCell" %>  
    <%@ page import ="org.apache.poi.hssf.usermodel.HSSFRow" %>  
    <%@ page import ="org.apache.poi.hssf.usermodel.HSSFSheet" %>  
    <%@ page import ="org.apache.poi.hssf.usermodel.HSSFWorkbook" %>  
    <%@ page import ="org.apache.poi.poifs.filesystem.POIFSFileSystem" %>
    <%@ page import="org.apache.poi.ss.usermodel.Cell" %>
    <%@ page import ="org.apache.poi.ss.usermodel.Row"%>
    <%@ page import="org.apache.poi.ss.usermodel.Sheet" %>
    <%@ page import="org.apache.poi.ss.usermodel.Workbook" %>
    <%@ page import ="org.apache.poi.xssf.usermodel.XSSFWorkbook" %>
    <%@ page import="com.oreilly.servlet.MultipartRequest" %>
	
	
 
	
    <%
    try{
	
   	    String fname=request.getParameter("fname");
				
		String sql="delete from dsdetails";
		Statement stmt = connection.createStatement();
		stmt.executeUpdate(sql);	
		
	   String RID,type,Product_Purchase,amount,nameOrig,oldbalanceOrg,newbalanceOrig,nameDest,ttype;
       connection.setAutoCommit(false);
       PreparedStatement pstm = null ;
       FileInputStream input = new FileInputStream(getServletContext().getRealPath("/")+"//"+fname);
	  
	  
       POIFSFileSystem fs = new POIFSFileSystem(input); //creating a new poi reference to the given excel file
       HSSFWorkbook wb = new HSSFWorkbook(fs);
       HSSFSheet sheet = wb.getSheetAt(0);
       Row row;
       Statement st=connection.createStatement();
       for(int i=1; i<=sheet.getLastRowNum(); i++){  //points to the starting of excel i.e excel first row
           row = (Row) sheet.getRow(i);  //sheet number
 
				 if( row.getCell(0)==null) { RID = "0";}  //suppose excel cell is empty then its set to 0 the variable
                  else RID = row.getCell(0).toString();   //else copies cell data to name variable
				  
                  if( row.getCell(1)==null) { type = "0";}  //suppose excel cell is empty then its set to 0 the variable
                  else type = row.getCell(1).toString();   //else copies cell data to name variable
				  
				  if( row.getCell(2)==null) { Product_Purchase = "0";}
				  else Product_Purchase = row.getCell(2).toString();
				  
				   if( row.getCell(3)==null) { amount = "0";}  
                  else amount = row.getCell(3).toString();   
				  
				  if( row.getCell(4)==null) { nameOrig = "0";}
				  else nameOrig = row.getCell(4).toString();
				  
				  if( row.getCell(5)==null) { oldbalanceOrg = "0";}
				  else oldbalanceOrg = row.getCell(5).toString();
				  
				  if( row.getCell(6)==null) { newbalanceOrig = "0";}
				  else newbalanceOrig = row.getCell(6).toString();
				  
				  if( row.getCell(7)==null) { nameDest = "0";}
				  else nameDest= row.getCell(7).toString();
				  
				  if( row.getCell(8)==null) { ttype= "0";}
				  else ttype = row.getCell(8).toString();
				  
				 
				 
				 			  
				    String filename="filename.txt";
      				PrintStream p = new PrintStream(new FileOutputStream(filename));
					p.print(new String(ttype));
			
					MessageDigest md = MessageDigest.getInstance("SHA1");
					FileInputStream fis11 = new FileInputStream(filename);
					DigestInputStream dis1 = new DigestInputStream(fis11, md);
					BufferedInputStream bis1 = new BufferedInputStream(dis1);
					//Read the bis so SHA1 is auto calculated at dis
					while (true) {
						int b1 = bis1.read();
						if (b1 == -1)
							break;
					}
 
					BigInteger bi1 = new BigInteger(md.digest());
					String spl1 = bi1.toString();
					String h1 = bi1.toString(16);
					
								
			Statement stss=connection.createStatement();
			
				stss.executeUpdate("insert into  dsdetails(RID,type,Product_Purchase,amount,nameOrig,oldbalanceOrg,newbalanceOrig,nameDest,ttype,hcode) values ('"+RID+"','"+type+"','"+Product_Purchase+"','"+amount+"','"+nameOrig+"','"+oldbalanceOrg+"','"+newbalanceOrig+"','"+nameDest+"','"+ttype+"','"+h1+"') "); 
			
				
       }
       connection.commit();
       pstm.close();
       connection.close();
       input.close();
 
   }catch(Exception e){
       
   }
 
 
%>
		  <h2>Datasets Imported Successfully !!!</h
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		 ><p align="right"><a href="u_main.jsp" class="style9 style6">Back</a></p>
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>User</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="u_main.jsp"><span>User Main</span></a></li>
			<li><a href="u_login.jsp"><span>Log Out</span></a></li>
          </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg"></div>
  <div class="footer">
    <div class="footer_resize">
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
<div align=center></div>
</body>
</html>
