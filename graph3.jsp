
<%@ include file="connect.jsp"%>

<%
try
{
	 String query="select count(Product_Purchase),Product_Purchase from dsdetails group by Product_Purchase";
	 Statement st=connection.createStatement();
	 ResultSet rs=st.executeQuery(query);
					
%>

<html>
<head>
<title>Account Type Results</title>
<script type="text/javascript" src="sources/jscharts.js"></script>
<style type="text/css">
<!--
.style4 {color: #FF0000}
.style5 {color: #0000FF}
-->
</style>
</head>
<body>
<div id="graph">Loading graph...</div>
<script type="text/javascript">
var myData=new Array();
var colors=[];

<%
	int i=0,count=0,count1=0,s2=0;
	String s1;

	while(rs.next())
	{
	  s1=rs.getString(2);
	  s2=rs.getInt(1);
	  
	  
	  
	  				
				    
	 
	 
	 
	
	%>
	
	myData["<%=i%>"]=["<%= s1%>",<%= s2%>];
        
	<%
	count=0;
	                
	i++;
	}                
					
	
	
	
	%>
	
	var myChart = new JSChart('graph', 'bar');
	myChart.setDataArray(myData);
	myChart.setBarColor('#FF3300');
	myChart.setBarOpacity(0.8);
	myChart.setBarBorderColor('#FFFFFF');
	myChart.setBarValues(true);
	myChart.setTitleColor('#FF0000');
	myChart.setAxisColor('#000000');
	myChart.setAxisValuesColor('#0000FF');
	myChart.setSize(1100,400);
	myChart.draw();
	
</script>
<span class="style5"></span><span class="style4"></span>

</body>
</html>
<%
}
catch(Exception e)
{
e.printStackTrace();
}
%>

