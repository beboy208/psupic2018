<%@ Page Title="Attendance" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="attendance.aspx.cs" Inherits="Conference2018.attendance" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-md-12">
            <h3>Walkin Registration</h3>
            <div>
                <%
                    if (!Page.IsPostBack)
                    {
                        var sch = _ta.GetWorkingSchedule();
                        if (sch != null)
                        {
                            hdfScheduleDescription.Value = string.Format("{0} is available on {1} - {2}",
                                sch.Title, sch.From.ToString("MMMM dd, yyyy HH:mm"), sch.To.ToString("MMMM dd, yyyy HH:mm"));
                        } else
                        {
                            dangerAlert.InnerText = "Invalid ScheduleID.";
                            dangerAlert.Visible = true;
                        }

                        var toDay = DateTime.Now;
                        registForm.Enabled = !(sch == null || toDay < sch.From || toDay > sch.To);
                    }
                    txtScheduleDescription.Text = hdfScheduleDescription.Value;
                %>
                <asp:HiddenField ID="hdfScheduleDescription" runat="server" />
                <asp:Label ID="txtScheduleDescription" runat="server" />
            </div>
            <div id="successAlert" class="alert alert-success" runat="server" visible="false">
            </div>
            <div id="dangerAlert" class="alert alert-danger" runat="server" visible="false">
            </div>
            <div class="container" style="margin-top: 20px;" runat="server">
                <asp:Panel ID="registForm" runat="server">
                    <div class="form-group">
                        <asp:Label ID="lbCode" runat="server" AssociatedControlID="txtCode">PSUPassport/CitizenID</asp:Label>
                        <asp:TextBox ID="txtCode" runat="server" CssClass="form-control" placeholder="Required"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required" ForeColor="Red"
                            ControlToValidate="txtCode" Display="Dynamic"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="lbName" runat="server" AssociatedControlID="txtName">Fullname</asp:Label>
                        <asp:TextBox ID="txtName" runat="server" CssClass="form-control" placeholder="Required"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Required" ForeColor="Red"
                            ControlToValidate="txtName" Display="Dynamic"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="lbEmail" runat="server" AssociatedControlID="txtEmail">Email</asp:Label>
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" TextMode="Email" placeholder="Required"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Required" ForeColor="Red"
                            ControlToValidate="txtEmail" Display="Dynamic"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="lbPhone" runat="server" AssociatedControlID="txtPhone">Phone</asp:Label>
                        <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control" TextMode="Phone"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="lbAddress" runat="server" AssociatedControlID="txtAddress">Address</asp:Label>
                        <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <asp:Button ID="btnSubmit" runat="server" CssClass="btn btn-primary" Text="Registration" OnClick="btnSubmit_Click" />
                </asp:Panel>
            </div>
        </div>
    </div>
</asp:Content>
