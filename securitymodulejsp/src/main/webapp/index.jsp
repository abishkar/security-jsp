<html>
<% out.print("Welcome to Security Module"); %>
<br>
  <%  String module=application.getInitParameter("dname");  
out.print(module);%>

<form method="POST" action='mainpage.jsp'>
      
       
   
       
       
        Email : <input type="text" name="email"
            /> <br /> <input
            type="submit" value="Login" />
            
             <% out.print("Password"); %> : <input type="text"  name="userid"    /> 
             
             
              <br>
            
            
            
            <a href="signup.jsp">Signup</a>
</form>


             <%  
             String name=(String)request.getAttribute("user");
   
            
             if(name!=null){
  
	 
	out.print(name); 
	
	  
  }
    
   
    %>  


</html>
