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
                <div class="otherInfo">
                    <span class="organization"><%# Eval("organization") %></span>
                    <span class="phone"><%# Eval("phone") %></span>
                    <span class="email"><%# Eval("email") %></span>
                </div>
            </div>
        </div>
    </ItemTemplate>
    <FooterTemplate>
        </div>
    </FooterTemplate>
</asp:Repeater>
