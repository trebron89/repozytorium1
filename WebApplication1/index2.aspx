<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index2.aspx.cs" Inherits="WebApplication1.index2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <script>
        $(document).ready(function () {
            $("#myBtn").click(function () {
                $("#myModal").modal();
            });
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <!-- modal start -->
        <div class="container">

            <div class="container">
                <h2>Modal Login Example</h2>
                <!-- Trigger the modal with a button -->
                <button type="button" class="btn btn-default btn-lg" id="myBtn">Login</button>

                <!-- Modal -->
                <div class="modal fade" id="myModal" role="dialog">
                    <div class="modal-dialog">

                        <!-- Modal content-->
                        <div class="modal-content">
                            <div class="modal-header" style="padding: 35px 50px;">
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                <h4><span class="glyphicon glyphicon-lock"></span>Login</h4>
                            </div>
                            <div class="modal-body" style="padding: 40px 50px;">
                                <form role="form">
                                    <div class="form-group">
                                        <label for="usrname"><span class="glyphicon glyphicon-user"></span>Username</label>
                                        <input type="text" class="form-control" id="usrname" placeholder="Enter email">
                                    </div>
                                    <div class="form-group">
                                        <label for="psw"><span class="glyphicon glyphicon-eye-open"></span>Password</label>
                                        <input type="text" class="form-control" id="psw" placeholder="Enter password">
                                    </div>
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox" value="" checked>Remember me</label>
                                    </div>
                                    <button type="submit" class="btn btn-success btn-block"><span class="glyphicon glyphicon-off"></span>Login</button>
                                </form>
                            </div>
                            <div class="modal-footer">
                                <button type="submit" class="btn btn-danger btn-default pull-left" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span>Cancel</button>
                                <p>Not a member? <a href="#">Sign Up</a></p>
                                <p>Forgot <a href="#">Password?</a></p>
                            </div>
                        </div>


                    </div>
                </div>
            </div>

        </div>       
        <!-- koniec modal -->

    </form>
</body>
</html>
