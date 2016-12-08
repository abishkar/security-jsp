    
    <html>  
    <body>  
    
    
    <form method="POST" action='signup.jsp'>
       
       <% out.print("Password"); %> : <input type="text"  name="userid"    /> 
       
        Email : <input type="text" name="email"
            /> <br /> <input
            type="submit" value="Signup" />
            
            
            
    
       
            
</form>
    
      <%  
    
   
    String password=request.getParameter("userid"); 
             String email=request.getParameter("email"); 
           if(email!=null && password!=null){
          if(email.equals("") && password.equals("") ){ 
            	
            	 request.setAttribute("user","Username and email can not be blank");  
            	  out.print("Username and email can not be blank"); 
            	  return;
            	  
            	
          }
            	 

         
            
            
          if(password.equals("") ){ 
          	
         	 request.setAttribute("user","password can not be blank");  
         	 out.print("password can not be blank"); 
         	 return ;
         	  
         	
         	 

          }
            
          
          
          if(email.equals("")  ){ 
          	
         	 request.setAttribute("user"," email can not be blank");  
         	  out.print("email can not be blank"); 
         	  return;
         	  
         	 
          }
          
          out.print("user created successfully");    
          request.getSession().setAttribute("email", email);
          request.getSession().setAttribute("password", password);
          
          
      } 
          
          
       
          
      
      
    
   
    %>  
    
    
  
    </body>  
    </html>  