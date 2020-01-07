<%@ Page Language="C#" AutoEventWireup="true" %>
<%
    var adminRole = "WebAdmins";
    var username = "Administrator";
    var password = "Administrator";
    var email = "admin@localhost.com";
 
    if (!Roles.RoleExists(adminRole))
    {
        Roles.CreateRole(adminRole);
    }
 
    var user = Membership.GetUser(username);
    if (user == null)
    {
        user = Membership.CreateUser(username, password, email);
        user.IsApproved = true;
    }
    else
    {
        var newPassword = user.ResetPassword();
        %><p>New password: <%= newPassword %></p>
<%
    }
 
    if (!Roles.IsUserInRole(username, adminRole))
    {
        Roles.AddUserToRole(username, adminRole);
    }
%>
<p>Done!</p>
<p>Visit <a href="/episerver">the login page</a></p>
