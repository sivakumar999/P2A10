<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductRegistration.aspx.cs" Inherits="Assign10.ProductRegistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
    <title>Product Registration</title>
    <style type="text/css">
        .auto-style1 {
            width: 50%;
        }
        .auto-style2 {
            width: 163px;
        }
        .auto-style3 {
            display: block;
            font-size: 1rem;
            font-weight: 400;
            line-height: 1.5;
            color: var(--bs-body-color);
            -webkit-appearance: none;
            -moz-appearance: none;
            appearance: none;
            background-clip: padding-box;
            border-radius: var(--bs-border-radius);
            transition: none;
            background-color: var(--bs-body-bg);
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <!-- Product Image -->
            &nbsp;<!-- Product Name --><table class="auto-style1">
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                 <div class="col-md-4"><asp:Image runat="server" ID="Image1" ImageUrl="~/Images/p2.jpg"
    Width="150" Height="150" CssClass="img-fluid" /></div>

            <!-- Product Name -->
                <tr>
                    <td class="auto-style2">
                <label for="TxtProductName">Product Name:</label>
                </td>
                    <td>
                <asp:TextBox ID="TxtName" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                    ControlToValidate="TxtName"
                    ErrorMessage="Product Name is required." Display="Dynamic"
                    ForeColor="Red" CssClass="text-danger"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                <label for="DdlCategory">Category:</label>
                </td>
                    <td>
                <asp:DropDownList ID="DdlCategory" runat="server" CssClass="form-control">
                    <asp:ListItem Text="Select" Value="" />
                    <asp:ListItem Text="Camera" Value="Camera" />
                    <asp:ListItem Text="Mobile" Value="Mobile" />
                    <asp:ListItem Text="Laptop" Value="Laptop" />
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                    ControlToValidate="DdlCategory"
                    ErrorMessage="Category is required." Display="Dynamic"
                    ForeColor="Red" CssClass="text-danger"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                <label for="TxtPrice">Price:</label>
                </td>
                    <td>
                <asp:TextBox ID="TxtPrice" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                    ControlToValidate="TxtPrice"
                    ErrorMessage="Price is required." Display="Dynamic"
                    ForeColor="Red" CssClass="text-danger"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                    ControlToValidate="TxtPrice"
                    ValidationExpression="^\d+(\.\d{1,2})?$"
                    ErrorMessage="Invalid Price. Use a numeric format." Display="Dynamic"
                    ForeColor="Red" CssClass="text-danger"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                <label for="TxtDescription">Description:</label>
                </td>
                    <td>
                <asp:TextBox ID="TxtDescription" runat="server" TextMode="MultiLine" Rows="4"
                    CssClass="form-control"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                <label for="CalendarReleaseDate">Release Date:</label></td>
                    <td>
                <asp:Calendar ID="CalendarReleaseDate" runat="server" CssClass="auto-style3" Width="329px">
                        </asp:Calendar>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                <asp:Button ID="BtnRegister" runat="server" Text="Register Product"
                    CssClass="btn btn-primary" OnClick="BtnRegister_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                <asp:Label ID="LblConfirmation" runat="server" ForeColor="Green" EnableViewState="false"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <div>
            </div>

           
        </div>
    </form>
</body>
</html>
