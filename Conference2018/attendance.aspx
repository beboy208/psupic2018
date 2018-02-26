<%@ Page Title="Attendance" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="attendance.aspx.cs" Inherits="Conference2018.attendance" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <img id="jumbotron" src="imgs/jumbotron3.png" />
    </div>
    <div class="row">
        <div class="col-md-12">
            <h3>Self registration.</h3>
            <div id="successAlert" class="alert alert-success" runat="server" visible="false">
            </div>
            <div id="dangerAlert" class="alert alert-danger" runat="server" visible="false">
            </div>
            <div class="container">
                <div class="form-group">
                    <asp:Label ID="lbCode" runat="server" AssociatedControlID="txtCode">PSUPassport/CitizenID</asp:Label>
                    <asp:TextBox ID="txtCode" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required" ForeColor="Red"
                        ControlToValidate="txtCode" Display="Dynamic"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <asp:Label ID="lbName" runat="server" AssociatedControlID="txtName">Fullname</asp:Label>
                    <asp:TextBox ID="txtName" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Required" ForeColor="Red"
                        ControlToValidate="txtName" Display="Dynamic"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <asp:Label ID="lbEmail" runat="server" AssociatedControlID="txtEmail">Email</asp:Label>
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Required" ForeColor="Red"
                        ControlToValidate="txtEmail" Display="Dynamic"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <asp:Label ID="lbPhone" runat="server" AssociatedControlID="txtPhone">Phone</asp:Label>
                    <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:Label ID="lbAddress" runat="server" AssociatedControlID="txtAddress">Address</asp:Label>
                    <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <asp:Button ID="btnSubmit" runat="server" CssClass="btn btn-primary" Text="Registration" OnClick="btnSubmit_Click" />
            </div>
        </div>
    </div>
</asp:Content>
