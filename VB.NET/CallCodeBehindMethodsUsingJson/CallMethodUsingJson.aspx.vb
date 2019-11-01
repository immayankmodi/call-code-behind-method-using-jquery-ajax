Imports System.Web.Services

Public Class CallMethodUsingJson
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    <WebMethod()>
    Public Shared Function callFunction(ByVal FirstName As String, ByVal LastName As String) As String
        Return "Your name is " & FirstName & " " & LastName & ""
    End Function

End Class