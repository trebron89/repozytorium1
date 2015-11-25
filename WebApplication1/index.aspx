<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<%@ Register Assembly="WebApplication1" Namespace="WebApplication1.klasy" TagPrefix="cc1" %>
<%--<%@ Register TagName="LinkBtnNEW" TagPrefix="asd" src="~/klasy/LinkBtnNEW.cs" %>--%>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="Content/bootstrap.min.css" />

    <!-- Custom styles for this template -->
    <%-- <link href="http://getbootstrap.com/examples/starter-template/starter-template.css" rel="stylesheet" />--%>


    <link rel="stylesheet" href="Content/bootstrap-theme.min.css" />
    <script src="Scripts/jquery-1.9.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>


</head>
<body>
    dupa
    <form id="form1" runat="server">

        <div class="container">

            <!-- Nav tabs -->
            <nav class="navbar navbar-inverse navbar-fixed-top ">
                <div class="container" style="background-color: red">

                    <div id="navbar" class="collapse navbar-collapse navbar-left">
                        <ul class="nav navbar-nav ">
                            <li class="active"><a href="#">Home</a></li>
                            <li><a href="#">About</a></li>
                            <li><a href="#">Contact</a></li>
                        </ul>
                    </div>

                    <!--/.nav-collapse -->
                </div>
            </nav>

        </div>
        <br />
        <br />
        <br />
        <br />
        <div class="container">
            <div class="row">
                <div class="col-sm-6">

                    <%--REPEATER--%>

                    <asp:Repeater ID="RepeaterSamochody" runat="server" OnItemDataBound="RepeaterSamochody_ItemDataBound" OnItemCommand="RepeaterSamochody_ItemCommand">

                        <HeaderTemplate>
                            <table class="table table-striped">

                                <thead>
                                    <tr>
                                        <th>Model</th>
                                        <th>Marka</th>
                                        <th>Cena</th>
                                    </tr>
                                </thead>

                                <tbody>
                        </HeaderTemplate>

                        <ItemTemplate>
                            <tr>
                                <td>
                                    <cc1:LinkBtnNEW ID="lbtnMarka" Id_obiektu="0" Text="" runat="server" />
                                    <%-- <asd:LinkBtnNEW ID="lbtnMarka" id_obiektu="ssaasa" runat="server">test</asd:LinkBtnNEW>--%></td>
                                <td>
                                    <asp:Label ID="lbModel" runat="server" Text="Label"></asp:Label></td>
                                <td>
                                    <asp:Label ID="lbCena" runat="server" Text="Label"></asp:Label></td>
                            </tr>
                        </ItemTemplate>

                        <FooterTemplate>
                            </tbody>
                            </table>
                        </FooterTemplate>

                    </asp:Repeater>


                    <%-- KONIEC REPEATER--%>
                </div>
                <div class="col-sm-4">
                    <div>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
                    </div>
                </div>


            </div>
            <div class="container">

                <ul class="nav nav-stacked">
                    <li role="presentation" class="active"><a href="#">Home</a></li>
                    <li role="presentation"><a href="#">Profile</a></li>
                    <li role="presentation"><a href="#">Messages</a></li>
                </ul>
            </div>



        </div>

        <div class="container">

            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </div>
    </form>

</body>
</html>


<%--@using System.Web.Optimization--%> 