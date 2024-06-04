B4A=true
Group=Default Group
ModulesStructureVersion=1
Type=Activity
Version=12.8
@EndOfDesignText@
#Region  Activity Attributes 
	#FullScreen: False
	#IncludeTitle: False
#End Region

Sub Process_Globals
	'These global variables will be declared once when the application starts.
	'These variables can be accessed from all modules.

End Sub

Sub Globals
	'These global variables will be redeclared each time the activity is created.
	'These variables can only be accessed from this module.

	Private btHome As Button
	Private etCon1 As EditText
	Private etCon2 As EditText
	Private Spinner1 As Spinner
	Private Spinner2 As Spinner
End Sub

Sub Activity_Create(FirstTime As Boolean)
	'Do not forget to load the layout file created with the visual designer. For example:
	Activity.LoadLayout("TimeLayout")

	
	Spinner1.AddAll(Array("Second", "Millisecond", "Microsecond", "Nanosecond", "Minute", "Hour", "Day", "Week"))
	Spinner2.AddAll(Array("Second", "Millisecond", "Microsecond", "Nanosecond", "Minute", "Hour", "Day", "Week"))

	Spinner1.SelectedIndex = 0
	Spinner2.SelectedIndex = 0
	
End Sub

Sub Activity_Resume

	etCon1.Text = 0
	etCon2.Text = 0

End Sub

Sub Activity_Pause (UserClosed As Boolean)

End Sub


Private Sub Spinner2_ItemClick (Position As Int, Value As Object)
					
	Dim firstUnit As String = Spinner1.SelectedItem
	Dim secondUnit As String = Spinner2.SelectedItem
	
	If firstUnit = secondUnit Then
		etCon2.Text = etCon1.Text
	
	Else If firstUnit = "Second" Then
		If secondUnit = "Millisecond" Then
			etCon2.Text = etCon1.Text * 1000
			Else If secondUnit = "Microsecond" Then
			etCon2.Text = etCon1.Text * 1000000
			Else If secondUnit = "Nanosecond" Then
			etCon2.Text = etCon1.Text * 1000000000
			Else If secondUnit = "Minute" Then
			etCon2.Text = etCon1.Text / 60
			Else If secondUnit = "Hour" Then
			etCon2.Text = etCon1.Text / 3600
			Else If secondUnit = "Day" Then
			etCon2.Text = etCon1.Text / 86400
			Else If secondUnit = "Week" Then
			etCon2.Text = etCon1.Text / 604800
		End If

	Else If firstUnit = "Millisecond" Then
		If secondUnit = "Second" Then
			etCon2.Text = etCon1.Text / 1000
			Else If secondUnit = "Microsecond" Then
			etCon2.Text = etCon1.Text * 1000
			Else If secondUnit = "Nanosecond" Then
			etCon2.Text = etCon1.Text * 1000000
			Else If secondUnit = "Minute" Then
			etCon2.Text = etCon1.Text / 60000
			Else If secondUnit = "Hour" Then
			etCon2.Text = etCon1.Text / 3600000
			Else If secondUnit = "Day" Then
			etCon2.Text = etCon1.Text / 86400000
			Else If secondUnit = "Week" Then
			etCon2.Text = etCon1.Text / 604800000
		End If

	Else If firstUnit = "Microsecond" Then
		If secondUnit = "Second" Then
			etCon2.Text = etCon1.Text / 1000000
			Else If secondUnit = "Millisecond" Then
			etCon2.Text = etCon1.Text / 1000
			Else If secondUnit = "Nanosecond" Then
			etCon2.Text = etCon1.Text * 1000
			Else If secondUnit = "Minute" Then
			etCon2.Text = etCon1.Text / 60000000
			Else If secondUnit = "Hour" Then
			etCon2.Text = etCon1.Text / 3600000000
			Else If secondUnit = "Day" Then
			etCon2.Text = etCon1.Text / 86400000000
			Else If secondUnit = "Week" Then
			etCon2.Text = etCon1.Text / 604800000000
		End If

	Else If firstUnit = "Nanosecond" Then
		If secondUnit = "Second" Then
			etCon2.Text = etCon1.Text / 1000000000
			Else If secondUnit = "Millisecond" Then
			etCon2.Text = etCon1.Text / 1000000
			Else If secondUnit = "Microsecond" Then
			etCon2.Text = etCon1.Text / 1000
			Else If secondUnit = "Minute" Then
			etCon2.Text = etCon1.Text / 60000000000
			Else If secondUnit = "Hour" Then
			etCon2.Text = etCon1.Text / 3600000000000
			Else If secondUnit = "Day" Then
			etCon2.Text = etCon1.Text / 86400000000000
			Else If secondUnit = "Week" Then
			etCon2.Text = etCon1.Text / 604800000000000
		End If

	Else If firstUnit = "Minute" Then
		If secondUnit = "Second" Then
			etCon2.Text = etCon1.Text * 60
			Else If secondUnit = "Millisecond" Then
			etCon2.Text = etCon1.Text * 60000
			Else If secondUnit = "Microsecond" Then
			etCon2.Text = etCon1.Text * 60000000
			Else If secondUnit = "Nanosecond" Then
			etCon2.Text = etCon1.Text * 60000000000
			Else If secondUnit = "Hour" Then
			etCon2.Text = etCon1.Text / 60
			Else If secondUnit = "Day" Then
			etCon2.Text = etCon1.Text / 1440
			Else If secondUnit = "Week" Then
			etCon2.Text = etCon1.Text / 10080
		End If

	Else If firstUnit = "Hour" Then
		If secondUnit = "Second" Then
			etCon2.Text = etCon1.Text * 3600
			Else If secondUnit = "Millisecond" Then
			etCon2.Text = etCon1.Text * 3600000
			Else If secondUnit = "Microsecond" Then
			etCon2.Text = etCon1.Text * 3600000000
			Else If secondUnit = "Nanosecond" Then
			etCon2.Text = etCon1.Text * 3600000000000
			Else If secondUnit = "Minute" Then
			etCon2.Text = etCon1.Text * 60
			Else If secondUnit = "Day" Then
			etCon2.Text = etCon1.Text / 24
			Else If secondUnit = "Week" Then
			etCon2.Text = etCon1.Text / 168
		End If


	Else If firstUnit = "Day" Then
		If secondUnit = "Second" Then
			etCon2.Text = etCon1.Text * 86400
			Else If secondUnit = "Millisecond" Then
			etCon2.Text = etCon1.Text * 86400000
			Else If secondUnit = "Microsecond" Then
			etCon2.Text = etCon1.Text * 86400000000
			Else If secondUnit = "Nanosecond" Then
			etCon2.Text = etCon1.Text * 86400000000000
			Else If secondUnit = "Minute" Then
			etCon2.Text = etCon1.Text * 1440
			Else If secondUnit = "Hour" Then
			etCon2.Text = etCon1.Text * 24
			Else If secondUnit = "Week" Then
			etCon2.Text = etCon1.Text / 7
		End If

	Else If firstUnit = "Week" Then
		If secondUnit = "Second" Then
			etCon2.Text = etCon1.Text * 604800
			Else If secondUnit = "Millisecond" Then
			etCon2.Text = etCon1.Text * 604800000
			Else If secondUnit = "Microsecond" Then
			etCon2.Text = etCon1.Text * 604800000000
			Else If secondUnit = "Nanosecond" Then
			etCon2.Text = etCon1.Text * 604800000000000
			Else If secondUnit = "Minute" Then
			etCon2.Text = etCon1.Text * 10080
			Else If secondUnit = "Hour" Then
			etCon2.Text = etCon1.Text * 168
		Else If secondUnit = "Day" Then
			etCon2.Text = etCon1.Text * 7
		End If
	End If
End Sub

Private Sub Spinner1_ItemClick (Position As Int, Value As Object)
						
	Dim firstUnit As String = Spinner2.SelectedItem
	Dim secondUnit As String = Spinner1.SelectedItem
	
	If firstUnit = secondUnit Then
		etCon2.Text = etCon1.Text
	
	Else If firstUnit = "Second" Then
		If secondUnit = "Millisecond" Then
			etCon2.Text = etCon1.Text * 1000
		Else If secondUnit = "Microsecond" Then
			etCon2.Text = etCon1.Text * 1000000
		Else If secondUnit = "Nanosecond" Then
			etCon2.Text = etCon1.Text * 1000000000
		Else If secondUnit = "Minute" Then
			etCon2.Text = etCon1.Text / 60
		Else If secondUnit = "Hour" Then
			etCon2.Text = etCon1.Text / 3600
		Else If secondUnit = "Day" Then
			etCon2.Text = etCon1.Text / 86400
		Else If secondUnit = "Week" Then
			etCon2.Text = etCon1.Text / 604800
		End If

	Else If firstUnit = "Millisecond" Then
		If secondUnit = "Second" Then
			etCon2.Text = etCon1.Text / 1000
		Else If secondUnit = "Microsecond" Then
			etCon2.Text = etCon1.Text * 1000
		Else If secondUnit = "Nanosecond" Then
			etCon2.Text = etCon1.Text * 1000000
		Else If secondUnit = "Minute" Then
			etCon2.Text = etCon1.Text / 60000
		Else If secondUnit = "Hour" Then
			etCon2.Text = etCon1.Text / 3600000
		Else If secondUnit = "Day" Then
			etCon2.Text = etCon1.Text / 86400000
		Else If secondUnit = "Week" Then
			etCon2.Text = etCon1.Text / 604800000
		End If

	Else If firstUnit = "Microsecond" Then
		If secondUnit = "Second" Then
			etCon2.Text = etCon1.Text / 1000000
		Else If secondUnit = "Millisecond" Then
			etCon2.Text = etCon1.Text / 1000
		Else If secondUnit = "Nanosecond" Then
			etCon2.Text = etCon1.Text * 1000
		Else If secondUnit = "Minute" Then
			etCon2.Text = etCon1.Text / 60000000
		Else If secondUnit = "Hour" Then
			etCon2.Text = etCon1.Text / 3600000000
		Else If secondUnit = "Day" Then
			etCon2.Text = etCon1.Text / 86400000000
		Else If secondUnit = "Week" Then
			etCon2.Text = etCon1.Text / 604800000000
		End If

	Else If firstUnit = "Nanosecond" Then
		If secondUnit = "Second" Then
			etCon2.Text = etCon1.Text / 1000000000
		Else If secondUnit = "Millisecond" Then
			etCon2.Text = etCon1.Text / 1000000
		Else If secondUnit = "Microsecond" Then
			etCon2.Text = etCon1.Text / 1000
		Else If secondUnit = "Minute" Then
			etCon2.Text = etCon1.Text / 60000000000
		Else If secondUnit = "Hour" Then
			etCon2.Text = etCon1.Text / 3600000000000
		Else If secondUnit = "Day" Then
			etCon2.Text = etCon1.Text / 86400000000000
		Else If secondUnit = "Week" Then
			etCon2.Text = etCon1.Text / 604800000000000
		End If

	Else If firstUnit = "Minute" Then
		If secondUnit = "Second" Then
			etCon2.Text = etCon1.Text * 60
		Else If secondUnit = "Millisecond" Then
			etCon2.Text = etCon1.Text * 60000
		Else If secondUnit = "Microsecond" Then
			etCon2.Text = etCon1.Text * 60000000
		Else If secondUnit = "Nanosecond" Then
			etCon2.Text = etCon1.Text * 60000000000
		Else If secondUnit = "Hour" Then
			etCon2.Text = etCon1.Text / 60
		Else If secondUnit = "Day" Then
			etCon2.Text = etCon1.Text / 1440
		Else If secondUnit = "Week" Then
			etCon2.Text = etCon1.Text / 10080
		End If

	Else If firstUnit = "Hour" Then
		If secondUnit = "Second" Then
			etCon2.Text = etCon1.Text * 3600
		Else If secondUnit = "Millisecond" Then
			etCon2.Text = etCon1.Text * 3600000
		Else If secondUnit = "Microsecond" Then
			etCon2.Text = etCon1.Text * 3600000000
		Else If secondUnit = "Nanosecond" Then
			etCon2.Text = etCon1.Text * 3600000000000
		Else If secondUnit = "Minute" Then
			etCon2.Text = etCon1.Text * 60
		Else If secondUnit = "Day" Then
			etCon2.Text = etCon1.Text / 24
		Else If secondUnit = "Week" Then
			etCon2.Text = etCon1.Text / 168
		End If


	Else If firstUnit = "Day" Then
		If secondUnit = "Second" Then
			etCon2.Text = etCon1.Text * 86400
		Else If secondUnit = "Millisecond" Then
			etCon2.Text = etCon1.Text * 86400000
		Else If secondUnit = "Microsecond" Then
			etCon2.Text = etCon1.Text * 86400000000
		Else If secondUnit = "Nanosecond" Then
			etCon2.Text = etCon1.Text * 86400000000000
		Else If secondUnit = "Minute" Then
			etCon2.Text = etCon1.Text * 1440
		Else If secondUnit = "Hour" Then
			etCon2.Text = etCon1.Text * 24
		Else If secondUnit = "Week" Then
			etCon2.Text = etCon1.Text / 7
		End If

	Else If firstUnit = "Week" Then
		If secondUnit = "Second" Then
			etCon2.Text = etCon1.Text * 604800
		Else If secondUnit = "Millisecond" Then
			etCon2.Text = etCon1.Text * 604800000
		Else If secondUnit = "Microsecond" Then
			etCon2.Text = etCon1.Text * 604800000000
		Else If secondUnit = "Nanosecond" Then
			etCon2.Text = etCon1.Text * 604800000000000
		Else If secondUnit = "Minute" Then
			etCon2.Text = etCon1.Text * 10080
		Else If secondUnit = "Hour" Then
			etCon2.Text = etCon1.Text * 168
		Else If secondUnit = "Day" Then
			etCon2.Text = etCon1.Text * 7
		End If
	End If
End Sub

Private Sub btHome_Click
		
	StartActivity(Main)
	
End Sub