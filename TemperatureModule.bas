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
	Activity.LoadLayout("TemperatureLayout")

	Spinner1.AddAll(Array("Celcius", "Fahrenheit", "Kelvin"))
	Spinner2.AddAll(Array("Celcius", "Fahrenheit", "Kelvin"))

	Spinner1.SelectedIndex = 0
	Spinner2.SelectedIndex = 1
	

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
	
	Else If firstUnit = "Celcius" Then
		If secondUnit = "Fahrenheit" Then
			etCon2.Text = (etCon1.Text * 1.8) + 32 
		Else If secondUnit = "Kelvin" Then
			etCon2.Text = etCon1.Text + 273.15
		End If
	
	Else If firstUnit = "Fahrenheit" Then
		If secondUnit = "Celcius" Then
			etCon2.Text = (etCon1.Text - 32) * (5/9)
		Else If secondUnit = "Kelvin" Then
			etCon2.Text = (etCon1.Text - 32) * (5/9) + 273.15
		End If
	
	Else If firstUnit = "Kelvin" Then
		If secondUnit = "Celcius" Then
			etCon2.Text = etCon1.Text - 273.15
		Else If secondUnit = "Fahrenheit" Then
			etCon2.Text = (etCon1.Text - 273.15) * (9/5) + 32
		End If
	End If

End Sub

Private Sub Spinner1_ItemClick (Position As Int, Value As Object)
		
	Dim firstUnit As String = Spinner2.SelectedItem
	Dim secondUnit As String = Spinner1.SelectedItem
	
	If firstUnit = secondUnit Then
		etCon2.Text = etCon1.Text
	
	Else If firstUnit = "Celcius" Then
		If secondUnit = "Fahrenheit" Then
			etCon2.Text = (etCon1.Text * 1.8) + 32
		Else If secondUnit = "Kelvin" Then
			etCon2.Text = etCon1.Text + 273.15
		End If
	
	Else If firstUnit = "Fahrenheit" Then
		If secondUnit = "Celcius" Then
			etCon2.Text = (etCon1.Text - 32) * (5/9)
		Else If secondUnit = "Kelvin" Then
			etCon2.Text = (etCon1.Text - 32) * (5/9) + 273.15
		End If
	
	Else If firstUnit = "Kelvin" Then
		If secondUnit = "Celcius" Then
			etCon2.Text = etCon1.Text - 273.15
		Else If secondUnit = "Fahrenheit" Then
			etCon2.Text = (etCon1.Text - 273.15) * (9/5) + 32
		End If
	End If

End Sub

Private Sub btHome_Click
		
	StartActivity(Main)
	
End Sub