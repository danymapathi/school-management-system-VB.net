Public Class Dashboard

    Private Sub _staffBtn_Click(sender As Object, e As RoutedEventArgs) Handles _staffBtn.Click
        DashboardFrame.Navigate(New Uri("Staff.xaml", UriKind.RelativeOrAbsolute))
    End Sub

    Private Sub _studentsBtn_Click(sender As Object, e As RoutedEventArgs) Handles _studentsBtn.Click
        DashboardFrame.Navigate(New Uri("Students.xaml", UriKind.RelativeOrAbsolute))
    End Sub

    Private Sub _sectionBtn_Click(sender As Object, e As RoutedEventArgs) Handles _sectionBtn.Click
        DashboardFrame.Navigate(New Uri("Sections.xaml", UriKind.RelativeOrAbsolute))
    End Sub
End Class
