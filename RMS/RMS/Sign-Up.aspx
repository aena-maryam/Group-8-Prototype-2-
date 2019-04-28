<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Sign-Up.aspx.cs" Inherits="RMS.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 style="text-align:center; margin-top: 25px; font-weight:bold; font-size:40px; color:#ffffff; font-family:'Adobe Hebrew'"> Sign Up At RMS</h2>
    
    <table>
        <tr id="zero-column-division" style="margin-top:0px; margin-left:400px; display:block">
            <td ><i class="glyphicon glyphicon-envelope" style="font-size:24px; color:#29364f"></i></td>
            <td><asp:TextBox placeholder="Enter your First Name" ID="u_fname" style="color: #29364f; font-size:18px; margin-left:7px; margin-right:35%; padding-top:10px; padding-bottom:-10px;" runat="server"></asp:TextBox></td>
           
            <td ><i class="glyphicon glyphicon-user" style="margin-left:50px; font-size:24px; color:#29364f"></i></td>
            <td><asp:TextBox placeholder="Enter your Last Name"  ID="u_lname" style="color: #29364f; margin-left:9px; font-size:18px; padding-top:10px; padding-bottom:-10px;" runat="server"></asp:TextBox></td>
        </tr>
    </table>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="u_fname" style="margin-left:32%; font-size:18px" ErrorMessage="First Name Required" ForeColor="Red"></asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="u_lname" style="margin-left:11%; font-size:18px" ErrorMessage="Last Name Required" ForeColor="Red"></asp:RequiredFieldValidator>


    <table>
        <tr id="first-column-division" style="margin-top:20px; margin-left:400px; display:block">
            <td ><i class="glyphicon glyphicon-envelope" style="font-size:24px; color:#29364f"></i></td>
            <td><asp:TextBox placeholder="  Enter the Email ID" ID="u_email" style="color: #29364f; font-size:18px; margin-left:7px; margin-right:35%; padding-top:10px; padding-bottom:-10px;" runat="server"></asp:TextBox></td>
           
            <td ><i class="glyphicon glyphicon-user" style="margin-left:50px; font-size:24px; color:#29364f"></i></td>
            <td><asp:TextBox placeholder="Enter the username"  ID="u_name" style="color: #29364f; margin-left:9px; font-size:18px; padding-top:10px; padding-bottom:-10px;" runat="server"></asp:TextBox></td>
        </tr>
    </table>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="u_email" style="margin-left:32%; font-size:18px" ErrorMessage="Email ID Required" ForeColor="Red"></asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="u_name" style="margin-left:11%; font-size:18px" ErrorMessage="Username Required" ForeColor="Red"></asp:RequiredFieldValidator>
        
    <table>
        <tr id="second-column-division" style="margin-top:20px; margin-left:400px; display:block">
            <td ><i class="glyphicon glyphicon-lock" style="font-size:24px; color:#29364f"></i></td>
            <td><asp:TextBox placeholder="Enter the password"  TextMode="Password" ID="password_" style="color: #29364f; margin-left:7px; font-size:18px; padding-top:10px; padding-bottom:-10px;" runat="server"></asp:TextBox></td>
            
            <td ><i class="fa fa-venus-mars custom" style="margin-left:50px; font-size:26px; font-weight:bold; color:#29364f"></i></td>
            <td><asp:DropDownList ID="gender" runat="server" style="font-size:24px;margin-left:7px;">
                <asp:ListItem Value="">Select the gender</asp:ListItem>
                <asp:ListItem Value="1">Male</asp:ListItem>
                <asp:ListItem Value="2">Female</asp:ListItem>
                <asp:ListItem Value="12">Other</asp:ListItem>
                </asp:DropDownList></td>
            </tr>
    </table>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="password_" style="margin-left:32%; font-size:18px" ErrorMessage="Password Required" ForeColor="Red"></asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="gender" style="margin-left:11%; font-size:18px" ErrorMessage="Gender Required" ForeColor="Red"></asp:RequiredFieldValidator>
        
    <table>
        <tr id="third-column-division" style="margin-top:20px; margin-left:360px; display:block">

            <td ><i class="fa fa-venus-mars custom" style="margin-left:40px; font-size:26px; font-weight:bold; color:#29364f"></i></td>
            <td><asp:DropDownList ID="securityQuestion" runat="server" style="font-size:24px;margin-left:7px;">
                <asp:ListItem Value="">Security Question</asp:ListItem>
                <asp:ListItem Value="1">Your nickname?</asp:ListItem>
                <asp:ListItem Value="2">A trait you hate?</asp:ListItem>
                <asp:ListItem Value="12">A lie you told?</asp:ListItem>
                </asp:DropDownList></td>


            <td ><i class="glyphicon glyphicon-lock" style="font-size:24px; color:#29364f"></i></td>
            <td><asp:TextBox placeholder="Security Answer" ID="answer" style="color: #29364f; margin-left:65px; font-size:18px; padding-top:10px; padding-bottom:-10px;" runat="server"></asp:TextBox></td>
            
        </tr>
    </table>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="securityQuestion" style="margin-left:32%; font-size:18px" ErrorMessage="Choose a Question" ForeColor="Red"></asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="answer" style="margin-left:11%; font-size:18px" ErrorMessage="Answer Required" ForeColor="Red"></asp:RequiredFieldValidator>
        

    <p style="margin-top:20px;">
        <i class="glyphicon glyphicon-earphone" style="font-size:20px; left:40.5%; color:#29364f"></i>
        <asp:TextBox placeholder="03219864012" ID="ph_no" style="color: #29364f; font-size:18px; margin-left:40.5%; padding-top:10px; padding-bottom:-10px;" runat="server"></asp:TextBox>
    </p>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="ph_no" style="margin-left:43%; font-size:18px" ErrorMessage="Phone Number Required" ForeColor="Red"></asp:RequiredFieldValidator>

    <br />
        <asp:Button OnClick="SignupButton_Click" ID="Button1" style="font-size:30px; color:#ffffff; font-family:'Adobe Hebrew'; font-weight:bold; border: 2px solid #ffffff; background-color: #42c1b6; text-align: center; display: inline-block; margin-top:10px; margin-left:44.8%;" runat="server" Text="Sign Up" />
    <br />
        <asp:Label ID="Message" runat="server" style="font-size:40px; margin-left:26%; margin-top:10px; font-weight:bold" Text=""></asp:Label>

</asp:Content>

