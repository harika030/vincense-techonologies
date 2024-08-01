<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>u_view_all_datasets</title>
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
.style7 {font-family: "Times New Roman", Times, serif}
.style8 {font-size: 20px}
.style9 {color: #0000FF}
.style10 {color: #be3131}
.style11 {color: #000000}
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
          <li class="active"><a href="a_login.jsp"><span>Admin</span></a></li>
          <li><a href="u_login.jsp"><span>User</span></a></li>
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
          <p align="center" class="style2">View All Datasets </p>
          <p>&nbsp;</p>
		  
<p align="right"><a href="u_main.jsp" class="style6 style10">Back</a></p>


<table width="610" border="1.5" cellpadding="0" cellspacing="0" align="center">
         <tr bgcolor="#00FF33">
		   
 <td width="50" height="54" bgcolor="#9eb8dd"><div align="center" class="style12 style7 style8 style9">RID</div></td>
 <td width="50" height="54" bgcolor="#9eb8dd"><div align="center" class="style12 style7 style8 style9">type	</div></td>
 <td width="50" height="54" bgcolor="#9eb8dd"><div align="center" class="style12 style7 style8 style9">Product_Purchase	</div></td>
 <td width="50" height="54" bgcolor="#9eb8dd"><div align="center" class="style12 style7 style8 style9">amount</div></td>	
 <td width="50" height="54" bgcolor="#9eb8dd"><div align="center" class="style12 style7 style8 style9">nameOrig</div></td>	
 <td width="50" height="54" bgcolor="#9eb8dd"><div align="center" class="style12 style7 style8 style9">oldbalanceOrg</div></td>	
 <td width="50" height="54" bgcolor="#9eb8dd"><div align="center" class="style12 style7 style8 style9">newbalanceOrig</div></td>	
 <td width="50" height="54" bgcolor="#9eb8dd"><div align="center" class="style12 style7 style8 style9">nameDest</div></td>	
 <td width="50" height="54" bgcolor="#9eb8dd"><div align="center" class="style12 style7 style8 style9">ttype</div></td>
 <td width="50" height="54" bgcolor="#9eb8dd"><div align="center" class="style12 style7 style8 style9">HCode</div></td>
	
		 </tr>

<%@ include file="connect.jsp" %>                      
<%	  
			  
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13;
	int i=0,j=1,k=0;

 try 
	{		
      	                    String query="select * from dsdetails "; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() ) 
			                {
				                 i=rs.getInt(1);
								s2=rs.getString(2);//name
								s3=rs.getString(3);//name
								s4=rs.getString(4);//mail
								s5=rs.getString(5);
								s6=rs.getString(6);
								s7=rs.getString(7);
								s8=rs.getString(8);
								s9=rs.getString(9);
								s10=rs.getString(10);
								s11=rs.getString(11);
								
		
		
		%>
                    
                    <tr>
                      <td height="44" bgcolor="#00FFFF"><div align="center" class="style12 style5 style7 style13 style14 style8 style11"><%=s2%></div></td>
					  <td bgcolor="#00FFFF"><div align="center" class="style12 style5 style7 style13 style14 style8 style11"><%=s3%></div></td>
					  <td bgcolor="#00FFFF"><div align="center" class="style12 style5 style7 style13 style14 style8 style11"><%=s4%></div></td>
					  <td bgcolor="#00FFFF"><div align="center" class="style12 style5 style7 style13 style14 style8 style11"><%=s5%></div></td>
					  <td bgcolor="#00FFFF"><div align="center" class="style12 style5 style7 style13 style14 style8 style11"><%=s6%></div></td>
					  <td bgcolor="#00FFFF"><div align="center" class="style12 style5 style7 style13 style14 style8 style11"><%=s7%></div></td>
					  <td bgcolor="#00FFFF"><div align="center" class="style12 style5 style7 style13 style14 style8 style11"><%=s8%></div></td>
					  <td bgcolor="#00FFFF"><div align="center" class="style12 style5 style7 style13 style14 style8 style11"><%=s9%></div></td>
					  <td bgcolor="#00FFFF"><div align="center" class="style12 style5 style7 style13 style14 style8 style11"><%=s10%></div></td>
					  <td bgcolor="#00FFFF"><div align="center" class="style12 style5 style7 style13 style14 style8 style11"><textarea><%=s11%></textarea></div></td>
	      </tr>
					  
        <%
		
	  j=j+1;}
           

connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
        </table>
		 <p align="right"><a href="u_main.jsp" class="style6 style10">Back</a></p>
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
