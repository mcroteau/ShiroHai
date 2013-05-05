<html>
<head>
	<title>${title}</title>
</head>
<body>

	<div class="row">
		<div class="span12">
			<h1>${title} </h1>
		</div>
	</div>
	
	<div class="row">
		
		<div class="span12">

			<div class="control-group">
				<label class="control-label">Username</label>
				<div class="controls">${user.username}</div>
			</div>
			
			<div class="control-group">
				<label class="control-label">Name</label>
				<div class="controls">${user.name}</div>
			</div>
        	
			<div class="control-group">
				<label class="control-label">Email</label>
				<div class="controls">${user.email}</div>
			</div>		
			
			<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
			
			<h5>Roles</h5>
			<ul>
				<c:forEach items="${user.roles}" var="role">
			    	<li>${role}</li>
				</c:forEach>
			</ul>
			
			<h5>Permissions</h5>
			<ul>
				<c:forEach items="${user.permissions}" var="permission">
			    	<li>${permission}</li>
				</c:forEach>
			</ul>
			
			<a href="/shiro_hai/app/user/edit/${user.id}" class="btn">Edit</a>
			
			<form action="/shiro_hai/app/user/${delete.id}" method="DELETE">
				<input type="submit" class="btn" value="Delete"/>
			</form>

		</div>	
	</div>
	
</body>
</html>