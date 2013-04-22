<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<DialogFormExampleMVC2.Models.Profile>" %>

    <% using (Html.BeginForm()) {%>
        <%= Html.ValidationSummary(true) %>

            <div class="editor-label">
                <%= Html.LabelFor(model => model.Name) %>
            </div>
            <div class="editor-field">
                <%= Html.TextBoxFor(model => model.Name) %>
                <%= Html.ValidationMessageFor(model => model.Name) %>
            </div>
            
            <div class="editor-label">
                <%= Html.LabelFor(model => model.NickName) %>
            </div>
            <div class="editor-field">
                <%= Html.TextBoxFor(model => model.NickName) %>
                <%= Html.ValidationMessageFor(model => model.NickName) %>
            </div>
            
            <div class="editor-label">
                <%= Html.LabelFor(model => model.Email) %>
            </div>
            <div class="editor-field">
                <%= Html.TextBoxFor(model => model.Email) %>
                <%= Html.ValidationMessageFor(model => model.Email) %>
            </div>
            
            <div class="editor-label">
                <%= Html.LabelFor(model => model.Age) %>
            </div>
            <div class="editor-field">
                <%= Html.TextBoxFor(model => model.Age) %>
                <%= Html.ValidationMessageFor(model => model.Age) %>
            </div>
            
           
        

    <% } %>

   


