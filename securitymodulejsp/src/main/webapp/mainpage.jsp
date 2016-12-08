
<html>
<body>





	<%
		String password = request.getParameter("userid");
		String email = request.getParameter("email");

		if (email.equals("") && password.equals("")) {

			request.setAttribute("user", "Username and email can not be blank");

			RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
			if (dispatcher != null) {
				dispatcher.forward(request, response);
				return ;
			}

		}

		if (password.equals("")) {

			request.setAttribute("user", "password can not be blank");
			out.print("");

			RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
			if (dispatcher != null) {
				dispatcher.forward(request, response);
				return ;
			}

			
		}

		if (email.equals("")) {

			request.setAttribute("user", " email can not be blank");

			RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
			if (dispatcher != null) {
				dispatcher.forward(request, response);
				return ;
			}

			

		}
	%>


	<%
		if (request.getSession().getAttribute("email").equals(email)
				&& (request.getSession().getAttribute("email").equals(email))) {

			out.print("welcome to our applicaiton ");

		}

		else {

			request.setAttribute("user", " invalid user name and password");

			// session.setAttribute("user","invalid login");  

			RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
			if (dispatcher != null) {
				dispatcher.forward(request, response);
				return ;
			}

		}
	%>










</body>
</html>
