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
	Activity.LoadLayout("WeightMassLayout")

	Spinner1.AddAll(Array("Kilogram", "Gram", "Miligram", "Metric Ton", "Pound", "Ounce", "Carat"))
	Spinner2.AddAll(Array("Kilogram", "Gram", "Miligram", "Metric Ton", "Pound", "Ounce", "Carat"))

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
	
	Else If firstUnit = "Kilogram" Then
		If secondUnit = "Gram" Then
			etCon2.Text = etCon1.Text * 1000
		Else If secondUnit = "Milligram" Then
			etCon2.Text = etCon1.Text * 1000000
		Else If secondUnit = "Metric Ton" Then
			etCon2.Text = etCon1.Text / 1000
		Else If secondUnit = "Pound" Then
			etCon2.Text = etCon1.Text * 2.2046226218
		Else If secondUnit = "Ounce" Then
			etCon2.Text = etCon1.Text * 35.27396195
		Else If secondUnit = "Carat" Then
			etCon2.Text = etCon1.Text * 5000
		End If

	Else If firstUnit = "Gram" Then
		If secondUnit = "KiloGram" Then
			etCon2.Text = etCon1.Text / 1000
		Else If secondUnit = "Milligram" Then
			etCon2.Text = etCon1.Text * 1000
		Else If secondUnit = "Metric Ton" Then
			etCon2.Text = etCon1.Text / 1000000
		Else If secondUnit = "Pound" Then
			etCon2.Text = etCon1.Text * 0.0022046226
		Else If secondUnit = "Ounce" Then
			etCon2.Text = etCon1.Text * 0.0352739619
		Else If secondUnit = "Carat" Then
			etCon2.Text = etCon1.Text * 5
		End If

	Else If firstUnit = "Milligram" Then
		If secondUnit = "Kilogram" Then
			etCon2.Text = etCon1.Text / 1000000
			Else If secondUnit = "Gram" Then
			etCon2.Text = etCon1.Text / 1000
			Else If secondUnit = "Metric Ton" Then
			etCon2.Text = etCon1.Text / 1000000000
			Else If secondUnit = "Pound" Then
			etCon2.Text = etCon1.Text * 0.0000022046
			Else If secondUnit = "Ounce" Then
			etCon2.Text = etCon1.Text * 0.000035274
			Else If secondUnit = "Carat" Then
			etCon2.Text = etCon1.Text * 0.005
		End If

	Else If firstUnit = "Metric Ton" Then
		If secondUnit = "Kilogram" Then
			etCon2.Text = etCon1.Text * 1000
			Else If secondUnit = "Gram" Then
			etCon2.Text = etCon1.Text * 1000000
			Else If secondUnit = "Milligram" Then
			etCon2.Text = etCon1.Text * 1000000000
			Else If secondUnit = "Pound" Then
			etCon2.Text = etCon1.Text * 2204.6226218
			Else If secondUnit = "Ounce" Then
			etCon2.Text = etCon1.Text * 35273.96915
			Else If secondUnit = "Carat" Then
			etCon2.Text = etCon1.Text * 5000000
		End If

	Else If firstUnit = "Pound" Then
		If secondUnit = "Kilogram" Then
			etCon2.Text = etCon1.Text * 0.45359237
			Else If secondUnit = "Gram" Then
			etCon2.Text = etCon1.Text * 453.59237
			Else If secondUnit = "Milligram" Then
			etCon2.Text = etCon1.Text * 453592.37
			Else If secondUnit = "Metric Ton" Then
			etCon2.Text = etCon1.Text * 0.0004535924
			Else If secondUnit = "Ounce" Then
			etCon2.Text = etCon1.Text * 16
			Else If secondUnit = "Carat" Then
			etCon2.Text = etCon1.Text * 2267.96185
		End If

	Else If firstUnit = "Ounce" Then
		If secondUnit = "Kilogram" Then
			etCon2.Text = etCon1.Text * 0.0283495231
			Else If secondUnit = "Gram" Then
			etCon2.Text = etCon1.Text * 28.349523125
			Else If secondUnit = "Milligram" Then
			etCon2.Text = etCon1.Text * 28349.523125
			Else If secondUnit = "Metric Ton" Then
			etCon2.Text = etCon1.Text * 0.0000283495
			Else If secondUnit = "Pound" Then
			etCon2.Text = etCon1.Text * 0.0625
			Else If secondUnit = "Carat" Then
			etCon2.Text = etCon1.Text * 141.74761563
		End If

	Else If firstUnit = "Carat" Then
		If secondUnit = "Kilogram" Then
			etCon2.Text = etCon1.Text * 0.0002
			Else If secondUnit = "Gram" Then
			etCon2.Text = etCon1.Text * 0.2
			Else If secondUnit = "Milligram" Then
			etCon2.Text = etCon1.Text * 200
			Else If secondUnit = "Metric Ton" Then
			etCon2.Text = etCon1.Text * 0.0000002
			Else If secondUnit = "Pound" Then
			etCon2.Text = etCon1.Text * 0.0004409245
			Else If secondUnit = "Ounce" Then
			etCon2.Text = etCon1.Text * 0.0070547924
		End If
		
	End If


End Sub

Private Sub Spinner1_ItemClick (Position As Int, Value As Object)
	
	Dim firstUnit As String = Spinner2.SelectedItem
	Dim secondUnit As String = Spinner1.SelectedItem

	If firstUnit = secondUnit Then
		etCon2.Text = etCon1.Text
	
	Else If firstUnit = "Kilogram" Then
		If secondUnit = "Gram" Then
			etCon2.Text = etCon1.Text * 1000
		Else If secondUnit = "Milligram" Then
			etCon2.Text = etCon1.Text * 1000000
		Else If secondUnit = "Metric Ton" Then
			etCon2.Text = etCon1.Text / 1000
		Else If secondUnit = "Pound" Then
			etCon2.Text = etCon1.Text * 2.2046226218
		Else If secondUnit = "Ounce" Then
			etCon2.Text = etCon1.Text * 35.27396195
		Else If secondUnit = "Carat" Then
			etCon2.Text = etCon1.Text * 5000
		End If

	Else If firstUnit = "Gram" Then
		If secondUnit = "KiloGram" Then
			etCon2.Text = etCon1.Text / 1000
		Else If secondUnit = "Milligram" Then
			etCon2.Text = etCon1.Text * 1000
		Else If secondUnit = "Metric Ton" Then
			etCon2.Text = etCon1.Text / 1000000
		Else If secondUnit = "Pound" Then
			etCon2.Text = etCon1.Text * 0.0022046226
		Else If secondUnit = "Ounce" Then
			etCon2.Text = etCon1.Text * 0.0352739619
		Else If secondUnit = "Carat" Then
			etCon2.Text = etCon1.Text * 5
		End If

	Else If firstUnit = "Milligram" Then
		If secondUnit = "Kilogram" Then
			etCon2.Text = etCon1.Text / 1000000
		Else If secondUnit = "Gram" Then
			etCon2.Text = etCon1.Text / 1000
		Else If secondUnit = "Metric Ton" Then
			etCon2.Text = etCon1.Text / 1000000000
		Else If secondUnit = "Pound" Then
			etCon2.Text = etCon1.Text * 0.0000022046
		Else If secondUnit = "Ounce" Then
			etCon2.Text = etCon1.Text * 0.000035274
		Else If secondUnit = "Carat" Then
			etCon2.Text = etCon1.Text * 0.005
		End If

	Else If firstUnit = "Metric Ton" Then
		If secondUnit = "Kilogram" Then
			etCon2.Text = etCon1.Text * 1000
		Else If secondUnit = "Gram" Then
			etCon2.Text = etCon1.Text * 1000000
		Else If secondUnit = "Milligram" Then
			etCon2.Text = etCon1.Text * 1000000000
		Else If secondUnit = "Pound" Then
			etCon2.Text = etCon1.Text * 2204.6226218
		Else If secondUnit = "Ounce" Then
			etCon2.Text = etCon1.Text * 35273.96915
		Else If secondUnit = "Carat" Then
			etCon2.Text = etCon1.Text * 5000000
		End If

	Else If firstUnit = "Pound" Then
		If secondUnit = "Kilogram" Then
			etCon2.Text = etCon1.Text * 0.45359237
		Else If secondUnit = "Gram" Then
			etCon2.Text = etCon1.Text * 453.59237
		Else If secondUnit = "Milligram" Then
			etCon2.Text = etCon1.Text * 453592.37
		Else If secondUnit = "Metric Ton" Then
			etCon2.Text = etCon1.Text * 0.0004535924
		Else If secondUnit = "Ounce" Then
			etCon2.Text = etCon1.Text * 16
		Else If secondUnit = "Carat" Then
			etCon2.Text = etCon1.Text * 2267.96185
		End If

	Else If firstUnit = "Ounce" Then
		If secondUnit = "Kilogram" Then
			etCon2.Text = etCon1.Text * 0.0283495231
		Else If secondUnit = "Gram" Then
			etCon2.Text = etCon1.Text * 28.349523125
		Else If secondUnit = "Milligram" Then
			etCon2.Text = etCon1.Text * 28349.523125
		Else If secondUnit = "Metric Ton" Then
			etCon2.Text = etCon1.Text * 0.0000283495
		Else If secondUnit = "Pound" Then
			etCon2.Text = etCon1.Text * 0.0625
		Else If secondUnit = "Carat" Then
			etCon2.Text = etCon1.Text * 141.74761563
		End If

	Else If firstUnit = "Carat" Then
		If secondUnit = "Kilogram" Then
			etCon2.Text = etCon1.Text * 0.0002
		Else If secondUnit = "Gram" Then
			etCon2.Text = etCon1.Text * 0.2
		Else If secondUnit = "Milligram" Then
			etCon2.Text = etCon1.Text * 200
		Else If secondUnit = "Metric Ton" Then
			etCon2.Text = etCon1.Text * 0.0000002
		Else If secondUnit = "Pound" Then
			etCon2.Text = etCon1.Text * 0.0004409245
		Else If secondUnit = "Ounce" Then
			etCon2.Text = etCon1.Text * 0.0070547924
		End If
		
	End If

End Sub

Private Sub btHome_Click
		
	StartActivity(Main)
	
End Sub