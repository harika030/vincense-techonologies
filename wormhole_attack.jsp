<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import ="java.text.SimpleDateFormat" %>
<%@ page import ="javax.crypto.Cipher" %> 
<%@ page import ="org.bouncycastle.util.encoders.Base64" %>
<%

    try
		{
		    
		    
			String amount=request.getParameter("amount");      
			String rid=request.getParameter("rid"); 
   	      
			String aname="Wormhole Attack";
			
			String aurl=String.valueOf(request.getRequestURL());
			 
			 
			 
		  SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
		  SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
	
						   Date now = new Date();
						   String strDate = sdfDate.format(now);
						   String strTime = sdfTime.format(now);
						   String date = strDate + "   " + strTime;
			 
			// if u want to resist url attackers,u can add this 
			String sql="SELECT * FROM wormhole_attack where aurl='"+aurl+"' ";
			Statement stmt = connection.createStatement();
			ResultSet rs =stmt.executeQuery(sql);
			
			if (rs.next()==true) 
					{
		
		
				%>
<style type="text/css">
<!--
.style1 {
	color: #FF0000;
	font-weight: bold;
}
-->
</style>

<br/>
									<p class="style1">Wormholw Attack is Resisted!! </p>
									<br/><br/><a href="index.html">Home</a>
									<%
								
								
					}
					else
					{
					
					
			String sql11="update dsdetails set amount='"+amount+"' where rid='"+rid+"' ";
								Statement stmt11 = connection.createStatement();
								stmt11.executeUpdate(sql11); 
			
			
			String sql1="insert into wormhole_attack (aname,rid,amount,dt,aurl)values('"+aname+"','"+rid+"','"+amount+"','"+date+"','"+aurl+"') ";
								Statement stmt1 = connection.createStatement();
								stmt1.executeUpdate(sql1); %>
					
					
					<style type="text/css">
<!--
.style1 {
	color: #FF0000;
	font-weight: bold;
}
-->
</style>

<br/>
									<p class="style1">Wormhole Attack Attacked Successfull!! </p>
									<br/><br/><a href="index.html">Home</a>
									<%
								
			
			
								 }
					
					
	}
	catch(Exception e)
	{
		out.print(e);
	}
	
%>