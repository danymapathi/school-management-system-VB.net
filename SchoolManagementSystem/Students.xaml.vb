Imports System.Data
Imports System.Data.SqlClient

Public Class Students

    Dim connect As New SqlConnection("Server=desktop-r8d3cah\sqlexpress;Database= school_m_system; Integrated Security= True")

    ' defining class properties
    Private _stdId As String
    Public Property StudentID() As String
        Get
            Return _stdId
        End Get
        Set(ByVal value As String)
            _stdId = value
        End Set
    End Property

    Private _classID As String
    Public Property ClassID() As String
        Get
            Return _classID
        End Get
        Set(ByVal value As String)
            _classID = value
        End Set
    End Property

    Private Sub feeButton_Click_Event(sender As Object, e As RoutedEventArgs)
        Dim f As Fees = New Fees
        f.ShowDialog()
    End Sub

    Private Sub Button_Click_1(sender As Object, e As RoutedEventArgs)
        Dim ads As AddStudent = New AddStudent
        ads.ShowDialog()
    End Sub

    Private Sub _searchButton_Click(sender As Object, e As RoutedEventArgs) Handles _searchButton.Click


        If _searchSectionField.Text = String.Empty And _searchClassField.Text = String.Empty And _roomFieldT.Text = String.Empty Then
            MessageBox.Show("Specify Section and Class for fetching informations", "Warning", MessageBoxButton.OK)

        ElseIf _searchSectionField.Text IsNot String.Empty And _searchClassField.Text = String.Empty And _roomFieldT.Text = String.Empty Then
            Try
                Dim query As String = "select studentID, studentNames from students where sectionID = '" & _searchSectionField.Text & "';"

                Dim command2 As New SqlCommand(query, connect)

                Dim adapter As New SqlDataAdapter(command2)
                Dim table As New DataTable()
                adapter.Fill(table)

                _dataGrid.ItemsSource = table.DefaultView
            Catch ex As Exception
                MessageBox.Show(ex.Message)
            End Try

        ElseIf _searchClassField.Text IsNot String.Empty And _searchSectionField.Text IsNot String.Empty And _roomFieldT.Text IsNot String.Empty Then

            Try
                Dim query As String = "select studentID, studentNames from students where sectionID = '" & _searchSectionField.Text & "' and ClassID = '" & _searchClassField.Text & "' and roomID = '" & _roomFieldT.Text & "';"
                Dim command2 As New SqlCommand(query, connect)

                Dim adapter As New SqlDataAdapter(command2)
                Dim table As New DataTable()
                adapter.Fill(table)

                _dataGrid.ItemsSource = table.DefaultView
            Catch ex As Exception
                MessageBox.Show(ex.Message)
            End Try

        Else
            MessageBox.Show("Check Inputs before searching", "Warning")
        End If


    End Sub


    Private Sub _dataGrid_SelectionChanged(sender As Object, e As SelectionChangedEventArgs) Handles _dataGrid.SelectionChanged
        Dim row As DataRowView
        Dim rowResult As String
        row = _dataGrid.SelectedItem
        rowResult = row.Item(0).ToString()
        connect.Open()

        ' fetching the selected item , and show in controls
        Dim command As SqlCommand = New SqlCommand("select * from students where studentID = '" & rowResult & "';", connect)
        Dim dr As SqlDataReader = command.ExecuteReader

        If dr.HasRows Then
            While dr.Read
                _idField.Text = dr.Item("studentID")
                _stdId = _idField.Text

                _namesField.Text = dr.Item("studentNames")
                _sectionField.Text = dr.Item("SectionID")
                _classField.Text = dr.Item("ClassID")
                _classID = dr.Item("ClassID")

                _roomField.Text = dr.Item("roomID")
            End While
        End If

        connect.Close()

    End Sub

    Private Sub UpdateBtn_Click(sender As Object, e As RoutedEventArgs) Handles UpdateBtn.Click
        Try
            connect.Open()

            ' fetching the selected item , and show in controls
            Dim query As String = "update students set studentNames = '" & _namesField.Text & "', ClassID = '" & _classField.Text & "', SectionID = '" & _sectionField.Text & "', roomID = '" & _roomField.Text & "' where studentId = '" & _idField.Text & "';"
            Dim command As SqlCommand = New SqlCommand(query, connect)
            Dim dr As SqlDataReader = command.ExecuteReader

            MessageBox.Show("Data successfully set", "Success", MessageBoxButton.OK)

            connect.Close()
        Catch ex As Exception
            MessageBox.Show(ex.Message)
            connect.Close()
        End Try
    End Sub

    Private Sub fireBtn_Click(sender As Object, e As RoutedEventArgs) Handles fireBtn.Click
        Try
            connect.Open()

            Dim diaRes As MessageBoxResult = MessageBox.Show("Do you wish to drop the selected student ???", "Warning", MessageBoxButton.OKCancel)
            If diaRes = MessageBoxResult.Cancel Then
                connect.Close()
            ElseIf diaRes = MessageBoxResult.OK Then
                Dim query As String = " delete from students where studentID = '" & _idField.Text & "';"
                Dim command As SqlCommand = New SqlCommand(query, connect)
                Dim dr As SqlDataReader = command.ExecuteReader
                connect.Close()
            End If
        Catch ex As Exception
            MessageBox.Show(ex.Message)
            connect.Close()
        End Try
    End Sub
End Class
