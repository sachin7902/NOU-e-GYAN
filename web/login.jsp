<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>noegyan</title>
    <link rel="stylesheet" href="css/bootstrap.css">
    <script src="js/bootstrap.bundle.js"></script>
</head>
<body>
    <script>
        function validate()
        {
            var userid=document.getElementById("userid");
            var password=document.getElementById("password");
            if(userid.value=="" || userid.value==null)
            {
                alert("Please enter userid");
                userid.focus();
            }
            else if(password.value=="" || password.value==null)
            {
                alert("Please enter password");
                password.focus();
            }
            else
            {
                document.getElementById("frmlogin").submit();
            }
        }
    </script>
    
    <jsp:include page="header.jsp"/>
    
<!-- main section start -->
    <div class="row">
        <div class="col-sm-12" style="background-color:pink; min-height:500px">
            <h2 style="color:blue; text-align:center">Login Form</h2>
            <form id="frmlogin" onsubmit="event.preventDefault();validate();" method="post" class="form-group" action="controller.jsp">
                <input type="hidden" name="page" value="login"/>
                <table class="table table-bordered" style="width:70%; margin:auto;">
                    <tr>
                        <td>Enter User id/ Roll No.</td>
                        <td>
                            <input type="text" name="userid" class="form-control" id="userid"/>
                        </td>
                    </tr>
                    
                    <tr>
                        <td>Enter Password</td>
                        <td>
                        <input type="password" name="password" class="form-control" id="password"/>
                    </td>
                    </tr>
                   
                    <tr>
                        <td></td>
                        <td>
                            <button type="submit"   class="btn btn-success"> Login</button>
                        </td>
                    </tr>
                </table>
                
            </form>
        </div>
        
        
        <jsp:include page="footer.jsp"/>
    
    
    
    <!-- main section end -->
    
    <!-- footer start -->
    
    <!-- footer end -->
</body>
</html>