Imports System.Data.SqlClient

Public Class AddMember

    Dim connect As New SqlConnection("Server=desktop-r8d3cah\sqlexpress;Database= school_m_system; Integrated Security= True")

    Private Sub AddMemberCLoseIcon_Click_Event(sender As Object, e As RoutedEventArgs)
        Me.Close()
    End Sub

    Private Sub AddMember_ActionEvent(sender As Object, e As RoutedEventArgs) Handles button.Click
        Try
            If _idField.Text = "" Or _namesField.Text = "" Then
                MessageBox.Show("Fill in all fields", "Warning", MessageBoxButton.OK)
            End If
            Dim insertQuery As String = "INSERT INTO teacher (teacherID, teacherfull_name, qualification, salary) VALUES ('" & _idField.Text & "','" & _namesField.Text & "','" & _qualField.Text & "','" & _salaryField.Text & "')"
            ExecuteQuery(insertQuery)
            _confirmLbl.Visibility = Visibility.Visible
            _idField.Text = ""
            _namesField.Text = ""
            _qualField.Text = ""
            _salaryField.Text = ""
        Catch ex As Exception
            'MessageBox.Show(ex.Message)
            MessageBox.Show(ex.Message, "Error", MessageBoxButton.OK)
        End Try

    End Sub


    ' define a helper function

    Public Sub ExecuteQuery(query As String)
        Dim command1 As New SqlCommand(query, connect)
        connect.Open()

        command1.ExecuteNonQuery()

        connect.Close()
    End Sub
End Class
