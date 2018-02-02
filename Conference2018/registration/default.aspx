<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Conference2018.registration._default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <img id="jumbotron" src="../imgs/jumbotron3.png" />
    </div>

    <asp:Login ID="Login1" runat="server"
        LoginButtonText="Verify"
        PasswordLabelText="PaperID:"
        PasswordRequiredErrorMessage="PaperID is required."
        TitleText="" UserNameLabelText="Email:"
        UserNameRequiredErrorMessage="Email is required."
        DisplayRememberMe="False" Orientation="Horizontal"
        TextBoxStyle-CssClass="form-control" 
        LabelStyle-CssClass=""
        LoginButtonStyle-CssClass="btn btn-default"
        MembershipProvider="DefaultMembershipProvider" CssClass="form-inline" OnLoggedIn="Login1_LoggedIn">
    </asp:Login>

    
    <p />
    <asp:GridView ID="gvSubmission" runat="server" AutoGenerateColumns="False"
        CssClass="table table-striped table-bordered table-hover">
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="PaperID" />
            <asp:BoundField DataField="Title" HeaderText="Title" />
            <asp:HyperLinkField DataNavigateUrlFields="id" 
                DataNavigateUrlFormatString="./registration.aspx?paper={0}" 
                Text="Regist" 

                ItemStyle-CssClass="btn" />
        </Columns>
        
    </asp:GridView>
</asp:Content>
