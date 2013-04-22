<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<List<DialogFormExampleMVC2.Models.Profile>>" %>


        
    
    <table border="0" cellpadding="0" cellspacing="0">
    <tr>
        <th>Name</th>
        <th>Nick Name</th>
        <th>Email</th>
        <th>Age</th>
        <th>Action</th>
    </tr>
    <%foreach (var item in Model)
      {%>
        <tr>
            
            <td><%= Html.Encode(item.Name) %></td>
            <td><%= Html.Encode(item.NickName) %></td>
            <td><%= Html.Encode(item.Email) %></td>
            <td><%= Html.Encode(item.Age) %></td>
            <td><%= Html.ActionLink("Remove", "RemoveProfile", new { id=item.Id})%></td>
        </tr>  
      <%} %>
        
    </table>
    
    


