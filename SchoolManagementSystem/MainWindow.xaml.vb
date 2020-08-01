Class MainWindow
    Dim ml As MainLoad
    Private Sub logInBtn_Click(sender As Object, e As RoutedEventArgs) Handles logInBtn.Click
        ml = New MainLoad

        Dim username As String = "Dan"
        Dim password As String = "12345"

        If usernametxtbx.Text.Equals(username) And passwordtxtbx.Password.Equals(password) Then
            Me.Hide()
            ml.Show()
        Else
            MessageBox.Show("Incorrect credentials", "Error", MessageBoxButton.OK)
        End If


    End Sub

    Private Sub close_Label_click(sender As Object, e As MouseButtonEventArgs) Handles label_Copy1.MouseDown
        Me.Close()

    End Sub
End Class
