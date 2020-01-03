<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Employee Database.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet1.css" rel="stylesheet" type="text/css" />
    
    <link rel="stylesheet" type="text/css" href="css/util.css" />
    <link rel="stylesheet" type="text/css" href="css/main.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div  class="container-contact100">
            <div class="wrap-contact100">
<div class="contact100-form">
    <span class="contact100-form-title">
					Enter Employee Details
	</span>

    	<label class="label-input100">Enter Employee ID *</label>
        <div class="wrap-input100 validate-input">
		    <asp:TextBox ID="TextBox1" class="input100" runat="server" placeholder="Eg. 29372" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
            <span class="focus-input100"></span>
		</div>

        <label class="label-input100">Enter Employee name *</label>
        <div class="wrap-input100 validate-input" data-validate="Valid Name Input is required">
            <asp:TextBox ID="TextBox2" CssClass="input100" runat="server" placeholder="Eg. John Doe"></asp:TextBox>
            <span class="focus-input100"></span>
        </div>

        <label class="label-input100" for="email">Enter Employee Address *</label>
		<div class="wrap-input100 validate-input" data-validate = "Valid email Input is required">
            <asp:TextBox ID="TextBox3" CssClass="input100" runat="server" placeholder="Eg. 8469 Hilltop Streethatan, VA 23139"></asp:TextBox>
            <span class="focus-input100"></span>
		</div> 

		<label class="label-input100" for="phone">Enter Employee Salary</label>
		<div class="wrap-input100 validate-input" data-validate = "Valid Salary Input is required">
			<asp:TextBox ID="TextBox4" CssClass="input100" runat="server"  placeholder="Eg. 120000"></asp:TextBox>
			<span class="focus-input100"></span>
		</div>

    <div class="container-contact100-form-btn">
					<asp:Button  ID="Button1" CssClass="contact100-form-btn" runat="server" OnClick="Button1_Click" Text="Save Details" />&nbsp&nbsp
               <asp:Button  ID="Button2" CssClass="contact100-form-btn" runat="server" OnClick="Button2_Click" Text="Update Details" />
				</div>
				
				<div class="container-contact100-form-btn">
					<asp:Button  ID="Button3" CssClass="contact100-form-btn" runat="server" OnClick="Button3_Click" Text="Delete Details" />&nbsp&nbsp
               <asp:Button  ID="Button4" CssClass="contact100-form-btn" runat="server" OnClick="Button4_Click" Text="Find Details" />
				</div>
</div>
                <div class="contact100-more flex-col-c" style="background-image: url('images/bg-01.jpg');">
                    <div class="flex-w size1 p-b-20">
					<div class="txt1 p-r-25">
					</div>

					<div class="flex-col size2">
						<span class="txt1 p-b-20" style="font-size: 40px">
							Company Name
						</span>

					</div>
                        <div class="flex-w size1 p-b-47">
					<div class="txt1 p-r-25">
						<span class="lnr lnr-map-marker"></span>
					</div>

					<div class="flex-col size2">
						<span class="txt1 p-b-20">
							Address
						</span>

						<span class="txt2">
							Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer sit amet neque felis.
						</span>
					</div>
				</div>

				<div class="dis-flex size1 p-b-47">
					<div class="txt1 p-r-25">
						<span class="lnr lnr-phone-handset"></span>
					</div>

					<div class="flex-col size2">
						<span class="txt1 p-b-20">
							Lets Talk
						</span>

						<span class="txt3">
							+1 800 1236879
						</span>
					</div>
				</div>
                        <div class="dis-flex size1 p-b-47">
					<div class="txt1 p-r-25">
						<span class="lnr lnr-envelope"></span>
					</div>

					<div class="flex-col size2">
						<span class="txt1 p-b-20">
							General Support
						</span>

						<span class="txt3">
							contact@example.com
						</span>
					</div>
				</div>
                         <asp:ListBox ID="ListBox1" runat="server" AutoPostBack="True" Height="138px" OnSelectedIndexChanged="ListBox1_SelectedIndexChanged" Width="383px"></asp:ListBox>
				</div>
        </div>

            </div>
        </div>
        
    </form>
</body>
</html>
