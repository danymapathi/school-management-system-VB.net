Imports System.Data
Imports System.Data.SqlClient


Public Class Fees


    Dim connect As New SqlConnection("Server=desktop-r8d3cah\sqlexpress;Database= school_m_system; Integrated Security= True")






    Private Sub Fee_CloseButton_ClickEvent(sender As Object, e As RoutedEventArgs)
        Me.Close()

    End Sub

    Private Sub fee_loaded(sender As Object, e As RoutedEventArgs)

    End Sub

    Private Sub checkBtn_Click(sender As Object, e As RoutedEventArgs) Handles checkBtn.Click

        Try

            Dim query As String = "select * from student_fees where studentID = '" & _studentID.Text & "' and classID = '" & _classId.Text & "';"
            connect.Open()
            Dim command As SqlCommand = New SqlCommand(query, connect)
            Dim dr As SqlDataReader = command.ExecuteReader

            If dr.HasRows Then
                While dr.Read
                    paidFeesField.Text = dr.Item("studentFee")
                End While
            End If

            Dim fee As Double = 360000
            Dim paidFees = Val(paidFeesField.Text)
            Dim rd As Double = fee - paidFees
            If rd = 0 Then
                unpaidFeesField.Text = "No Dept"
            ElseIf fee < 0 Then
            ElseIf fee > 0 Then
                unpaidFeesField.Text = rd.ToString()

            End If

            connect.Close()
        Catch ex As Exception
            MessageBox.Show(ex.Message)
            connect.Close()

        End Try
    End Sub

    Private Sub payButton_Click(sender As Object, e As RoutedEventArgs) Handles payButton.Click
        If paidFeesField.Text IsNot String.Empty Then
            ' update query

            Dim amount As Double = Val(payField.Text) + Val(paidFeesField.Text)

            Try
                connect.Open()

                ' fetching the selected item , and show in controls
                Dim query As String = "update student_fees set studentFee = '" & amount.ToString() & "' where studentID = '" & _studentID.Text & "' and classID = '" & _classId.Text & "';"
                Dim command As SqlCommand = New SqlCommand(query, connect)
                Dim dr As SqlDataReader = command.ExecuteReader

                MessageBox.Show("Data successfully set", "Success", MessageBoxButton.OK)

                connect.Close()
            Catch ex As Exception
                MessageBox.Show(ex.Message)
                connect.Close()
            End Try
        ElseIf paidFeesField.Text = String.Empty Then
            ' MessageBox.Show("No student selected ...!", "Warning", MessageBoxButton.OK)
            Try
                Dim insertQuery As String = "insert into student_fees values ('" & payField.Text & "','" & _studentID.Text & "','" & _classId.Text & "');"
                ExecuteQuery(insertQuery)
            Catch ex As Exception
                MessageBox.Show(ex.Message)
            End Try

        End If

    End Sub

    ' define a helper function

    Public Sub ExecuteQuery(query As String)
        Dim command1 As New SqlCommand(query, connect)
        connect.Open()

        command1.ExecuteNonQuery()

        connect.Close()
    End Sub
End Class
