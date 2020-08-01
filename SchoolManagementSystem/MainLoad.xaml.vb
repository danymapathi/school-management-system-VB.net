Public Class MainLoad
    Dim mw As MainWindow
    Public staff As Staff = New Staff
    Dim dashb As Dashboard = New Dashboard
    Dim std As Students = New Students

    Private Sub MainFormLoadedEvent(sender As Object, e As RoutedEventArgs)

        MainLoadFrame.Navigate(New Uri("Dashboard.xaml", UriKind.RelativeOrAbsolute))



        'gridLoad.Children.Add(dashb)


    End Sub

    Private Sub logIn_MenuItem_Click_Event(sender As Object, e As RoutedEventArgs)
        mw = New MainWindow
        Me.Hide()
        mw.Show()
    End Sub

    Private Sub Exit_MenuItem_Click_Event(sender As Object, e As RoutedEventArgs)
        Application.Current.Shutdown()
    End Sub

    Private Sub DashBoard_MenuItem_ClickEvent(sender As Object, e As RoutedEventArgs)
        MainLoadFrame.Navigate(New Uri("Dashboard.xaml", UriKind.RelativeOrAbsolute))

    End Sub

    Private Sub Staff_MenuItem_ClickEvent(sender As Object, e As RoutedEventArgs)
        MainLoadFrame.Navigate(New Uri("Staff.xaml", UriKind.RelativeOrAbsolute))

    End Sub

    Private Sub Student_MenuItem_ClickEvent(sender As Object, e As RoutedEventArgs)
        MainLoadFrame.Navigate(New Uri("Students.xaml", UriKind.RelativeOrAbsolute))

    End Sub
End Class
