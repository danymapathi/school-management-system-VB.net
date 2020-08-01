Imports System.Data
Imports System.Data.SqlClient


Public Class Staff

    Dim connect As New SqlConnection("Server=desktop-r8d3cah\sqlexpress;Database= school_m_system; Integrated Security= True")

    Private Sub AddMember_Button_Click_Event(sender As Object, e As RoutedEventArgs)
        Dim am As AddMember = New AddMember()
        am.ShowDialog()
    End Sub

    Private Sub _searchStaffBtn_Click(sender As Object, e As RoutedEventArgs) Handles _searchStaffBtn.Click
        If _searchStaffField.Text = String.Empty Then
            MessageBox.Show("Fill in search field")

        Else
            Try
                connect.Open()

                ' fetching the selected item , and show in controls
                Dim query As String = "select * from teacher where teacherID = '" & _searchStaffField.Text & "';"
                Dim command As SqlCommand = New SqlCommand(query, connect)
                Dim dr As SqlDataReader = Command.ExecuteReader
                If dr.HasRows Then
                    While dr.Read
                        _idField.Text = dr.Item("teacherID")
                        _nemesField.Text = dr.Item("teacherfull_name")
                        _qualField.Text = dr.Item("qualification")
                        _salField.Text = dr.Item("salary")

                    End While
                End If
                connect.Close()

                ' displaying subject - section - class details onto the datagrid

                ' querying subjects - class
                Dim query2 As String = "select subjects.subjectName, class.className From subjects Join teacher  On subjects.teacherID = teacher.teacherID Join class On class.teacherID = teacher.teacherID   Where teacher.teacherID = '" & _searchStaffField.Text & "';"
                Dim comm As SqlCommand = New SqlCommand(query2, connect)
                Dim adapter As New SqlDataAdapter(comm)
                Dim table As New DataTable()
                adapter.Fill(table)
                _subCS_dg.ItemsSource = table.DefaultView

                'query sections
                Dim query3 As String = "select sections.sectionName from sections join sections_teacher on sections.sectionID = sections_teacher.sectionID where sections_teacher.teacherID = '" & _searchStaffField.Text & "';"
                Dim comm1 As SqlCommand = New SqlCommand(query3, connect)
                Dim adapter1 As SqlDataAdapter = New SqlDataAdapter(comm1)
                Dim table1 As New DataTable()
                adapter1.Fill(table1)
                sectionDg.ItemsSource = table1.DefaultView

            Catch ex As Exception
                MessageBox.Show(ex.Message)
                connect.Close()

            End Try
        End If
    End Sub

    Private Sub staff_loaded(sender As Object, e As RoutedEventArgs)
        Try
            Dim query As String = "select teacherfull_name from teacher;"

            Dim command2 As New SqlCommand(query, connect)

            Dim adapter As New SqlDataAdapter(command2)
            Dim table As New DataTable()
            adapter.Fill(table)

            _dataGrid.ItemsSource = table.DefaultView
        Catch ex As Exception
            MessageBox.Show(ex.Message)
        End Try

    End Sub

    Private Sub UpdateBtn_Click(sender As Object, e As RoutedEventArgs) Handles UpdateBtn.Click
        Try
            connect.Open()

            ' fetching the selected item , and show in controls
            Dim query As String = "update teacher set teacherfull_name = '" & _nemesField.Text & "', qualification = '" & _qualField.Text & "', salary = " & Val(_salField.Text) & " where teacherID = '" & _idField.Text & "';"
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

            ' fetching the selected item , and show in controls


            Dim diaRes As MessageBoxResult = MessageBox.Show("Do you wish to fire the selected member ???", "Warning", MessageBoxButton.OKCancel)
            If diaRes = MessageBoxResult.Cancel Then
                connect.Close()
            ElseIf diaRes = MessageBoxResult.OK Then
                Dim query As String = " delete from teacher where teacherID = '" & _idField.Text & "';"
                Dim command As SqlCommand = New SqlCommand(query, connect)
                Dim dr As SqlDataReader = command.ExecuteReader
                connect.Close()
            End If
        Catch ex As Exception
            MessageBox.Show(ex.Message)
            connect.Close()
        End Try
    End Sub

    Private Sub attributeCourseBtn_Click(sender As Object, e As RoutedEventArgs) Handles attributeCourseBtn.Click
        Try
            If _attributeField.Text = "" Then
                MessageBox.Show("Fill in the field", "Warning", MessageBoxButton.OK)
            End If
            Dim insertQuery As String = "insert into subjects values ('" & _idField.Text & "','" & _attributeField.Text & "','" & _idField.Text & "');"
            ExecuteQuery(insertQuery)
            MessageBox.Show("Course attributed ", "Success")
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
