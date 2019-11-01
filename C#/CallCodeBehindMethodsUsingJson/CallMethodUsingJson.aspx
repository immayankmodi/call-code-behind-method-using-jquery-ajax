<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CallMethodUsingJson.aspx.cs" Inherits="CallCodeBehindMethodsUsingJson.CallMethodUsingJson" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>AspnetO.com | Call code-behind method using jquery json example</title>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js">
    </script>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#btnSubmit").click(function () {
                //first get all parameters if any
                var FirstName = $('#txtFirstName').val(),
                    LastName = $('#txtLastName').val();

                $.ajax({
                    type: "POST",
                    dataType: "json",
                    contentType: "application/json; charset=utf-8",
                    //url: "yourpagename.aspx/yourmethodnamewithoutbracesandparameters"
                    url: "CallMethodUsingJson.aspx/callFunction",
                    //Be carefull about single quotation marks while parsing parameters
                    //If function have no parameters, parse blank "data" for eg, data: "{ }",
                    data: "{'FirstName':'" + FirstName + "', 'LastName':'" + LastName + "'}",
                    success: function (success) {
                        //called on ajax call success
                        alert("Success: " + success.d);
                    },
                    //call on ajax call failure
                    error: function (xhr, textStatus, error) {
                        //called on ajax call success
                        //console.log("readyState: " + xhr.readyState);
                        //console.log("responseText: " + xhr.responseText);
                        //console.log("status: " + xhr.status);
                        //console.log("textStatus: " + textStatus);
                        alert("Error: " + error);
                    }
                });
            });
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h4>Call code-behind method using jquery json</h4>
            FirstName:
        <asp:TextBox ID="txtFirstName" runat="server" ClientIDMode="Static" />
            LastName:
        <asp:TextBox ID="txtLastName" runat="server" ClientIDMode="Static" />
            <asp:Button ID="btnSubmit" Text="Submit" runat="server" ClientIDMode="Static" OnClientClick="return false;" />
        </div>
    </form>
</body>
</html>
