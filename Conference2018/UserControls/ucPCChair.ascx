<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucPCChair.ascx.cs" Inherits="Conference2018.UserControls.ucPCChair" %>

<asp:Repeater ID="repeater" runat="server">
    <HeaderTemplate>
        <div class="pc-container">
    </HeaderTemplate>
    <ItemTemplate>
        <div class="pc-member">
            <span class="img <%# Eval("css") %>"></span>
            <div class="content">
                <strong><%# Eval("title") %> <%# Eval("name") %></strong>
                <p><%# Eval("otherInfo") %></p>
            </div>
        </div>
    </ItemTemplate>
    <FooterTemplate>
        </div>
    </FooterTemplate>
</asp:Repeater>
