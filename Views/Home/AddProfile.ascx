<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>
<%@ Import Namespace="DialogFormExampleMVC2.MVCHelper" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Home Page
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%= Html.Encode(ViewData["Message"]) %></h2>
    <p>
        To learn more about ASP.NET MVC visit <a href="http://asp.net/mvc" title="ASP.NET MVC Website">http://asp.net/mvc</a>.
    </p>
    <div id="ProfileContainer">
        <%=Html.Action("Profile")%>
    </div>
    <p>
        <%=Html.DialogFormLink("Add",Url.Action("AddProfile"),"Add Profile","ProfileContainer",Url.Action("Profile")) %>
    </p>
</asp:Content>
