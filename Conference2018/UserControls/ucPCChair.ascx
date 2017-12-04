<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucPCChair.ascx.cs" Inherits="Conference2018.UserControls.ucPCChair" %>

<asp:Repeater ID="repeater" runat="server">
    <HeaderTemplate>
        <div class="pc-container">
    </HeaderTemplate>
    <ItemTemplate>
        <div class="pc-member">
            <span class="img <%# Eval("css") %>"></span>
            <div class="content">
                <span class="name"><%# Eval("title") %> <%# Eval("name") %></span>
                <span class="executive"><%# Eval("executive") %> </span>
                <span class="otherInfo"><%# Eval("otherInfo") %></span>
            </div>
        </div>
    </ItemTemplate>
    <FooterTemplate>
        </div>
    </FooterTemplate>
</asp:Repeater>
