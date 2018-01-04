<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucImportantDates.ascx.cs" Inherits="Conference2018.UserControls.ucImportantDates" %>
<dl class="important-dates">
    <%
        System.Resources.ResourceManager rm = new System.Resources.ResourceManager(typeof(Resources.Resource));
        string[] dateStrings = { "Schedule2", "Schedule3", "Schedule4", "Schedule5",
                           "Schedule6", "Schedule7"};

        foreach (var d in dateStrings)
        {
            var label = rm.GetString(string.Format("{0}LB", d));
    %>
    <dt>
        <%= label %></dt>
    <dd>
        <% 
            var oldDate = rm.GetString(string.Format("{0}ValueOld", d));
            if (!string.IsNullOrWhiteSpace(oldDate))
            {%>
        <span class="glyphicon glyphicon-info-sign"></span>
        <span class="oldDate">
            <%= oldDate %>
        </span>
        <% }
            var dateValue = rm.GetString(string.Format("{0}Value", d));
        %>
        <%= dateValue %>
    </dd>

    <%
        }
    %>
</dl>
