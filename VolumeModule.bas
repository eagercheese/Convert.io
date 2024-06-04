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
	Activity.LoadLayout("VolumeLayout")

	Spinner1.AddAll(Array("Cubic Kilometer", "Cubic Meter", "Cubic Centimeter", "Cubic Millimeter", "Liter", "Milliliter", "Gallon", "Quart", "Pint", "Cup"))
	Spinner2.AddAll(Array("Cubic Kilometer", "Cubic Meter", "Cubic Centimeter", "Cubic Millimeter", "Liter", "Milliliter", "Gallon", "Quart", "Pint", "Cup"))

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
	
	Else If firstUnit = "Cubic Kilometer" Then
		If secondUnit = "Cubic Meter" Then
			etCon2.Text = etCon1.Text * 1000000000
			Else If secondUnit = "Cubic Centimeter" Then
			etCon2.Text = etCon1.Text * 1000000000000000
			Else If secondUnit = "Cubic Millimeter" Then
			etCon2.Text = etCon1.Text * 1000000000000000000
			Else If secondUnit = "Liter" Then
			etCon2.Text = etCon1.Text * 1000000000000
			Else If secondUnit = "Milliliter" Then
			etCon2.Text = etCon1.Text * 1000000000000000
			Else If secondUnit = "Gallon" Then
			etCon2.Text = etCon1.Text * 264172052358
			Else If secondUnit = "Quart" Then
			etCon2.Text = etCon1.Text * 1056688209433
			Else If secondUnit = "Pint" Then
			etCon2.Text = etCon1.Text * 2113376418865
			Else If secondUnit = "Cup" Then
			etCon2.Text = etCon1.Text * 4226752837730
		End If

	Else If firstUnit = "Cubic Meter" Then
		If secondUnit = "Cubic Kilometer" Then
			etCon2.Text = etCon1.Text / 1000000000
			Else If secondUnit = "Cubic Centimeter" Then
			etCon2.Text = etCon1.Text * 1000000
			Else If secondUnit = "Cubic Millimeter" Then
			etCon2.Text = etCon1.Text * 1000000000
			Else If secondUnit = "Liter" Then
			etCon2.Text = etCon1.Text * 1000
			Else If secondUnit = "Milliliter" Then
			etCon2.Text = etCon1.Text * 1000000
			Else If secondUnit = "Gallon" Then
			etCon2.Text = etCon1.Text * 264.17205236
			Else If secondUnit = "Quart" Then
			etCon2.Text = etCon1.Text * 1056.6882094
			Else If secondUnit = "Pint" Then
			etCon2.Text = etCon1.Text * 2113.3764189
			Else If secondUnit = "Cup" Then
			etCon2.Text = etCon1.Text * 4226.7528377
		End If

	Else If firstUnit = "Cubic Centimeter" Then
		If secondUnit = "Cubic Kilometer" Then
			etCon2.Text = etCon1.Text * 0.000000000000001
			Else If secondUnit = "Cubic Meter" Then
			etCon2.Text = etCon1.Text / 1000000
			Else If secondUnit = "Cubic Millimeter" Then
			etCon2.Text = etCon1.Text * 1000
			Else If secondUnit = "Liter" Then
			etCon2.Text = etCon1.Text / 1000
			Else If secondUnit = "Milliliter" Then
			etCon2.Text = etCon1.Text
			Else If secondUnit = "Gallon" Then
			etCon2.Text = etCon1.Text * 0.0002641721
			Else If secondUnit = "Quart" Then
			etCon2.Text = etCon1.Text * 0.0010566882
			Else If secondUnit = "Pint" Then
			etCon2.Text = etCon1.Text * 0.0021133764
			Else If secondUnit = "Cup" Then
			etCon2.Text = etCon1.Text * 0.0042267528
		End If

	Else If firstUnit = "Cubic Millimeter" Then
		If secondUnit = "Cubic Kilometer" Then
			etCon2.Text = etCon1.Text * 0.000000000000000001
			Else If secondUnit = "Cubic Meter" Then
			etCon2.Text = etCon1.Text / 1000000000
			Else If secondUnit = "Cubic Centimeter" Then
			etCon2.Text = etCon1.Text / 1000
			Else If secondUnit = "Liter" Then
			etCon2.Text = etCon1.Text / 1000000
			Else If secondUnit = "Milliliter" Then
			etCon2.Text = etCon1.Text / 1000
			Else If secondUnit = "Gallon" Then
			etCon2.Text = etCon1.Text * 0.0000002641720523
			Else If secondUnit = "Quart" Then
			etCon2.Text = etCon1.Text * 0.0000010567
			Else If secondUnit = "Pint" Then
			etCon2.Text = etCon1.Text * 0.0000021134
			Else If secondUnit = "Cup" Then
			etCon2.Text = etCon1.Text * 0.0000042268
		End If

	Else If firstUnit = "Liter" Then
		If secondUnit = "Cubic Kilometer" Then
			etCon2.Text = etCon1.Text * 0.000000000001
			Else If secondUnit = "Cubic Meter" Then
			etCon2.Text = etCon1.Text / 1000
			Else If secondUnit = "Cubic Centimeter" Then
			etCon2.Text = etCon1.Text * 1000
			Else If secondUnit = "Cubic Millimeter" Then
			etCon2.Text = etCon1.Text * 1000000
			Else If secondUnit = "Milliliter" Then
			etCon2.Text = etCon1.Text * 1000
			Else If secondUnit = "Gallon" Then
			etCon2.Text = etCon1.Text * 0.2641720524
			Else If secondUnit = "Quart" Then
			etCon2.Text = etCon1.Text * 1.0566882094
			Else If secondUnit = "Pint" Then
			etCon2.Text = etCon1.Text * 2.1133764189
			Else If secondUnit = "Cup" Then
			etCon2.Text = etCon1.Text * 4.2267528377
		End If

	Else If firstUnit = "Milliliter" Then
		If secondUnit = "Cubic Kilometer" Then
			etCon2.Text = etCon1.Text * 0.000000000000001
			Else If secondUnit = "Cubic Meter" Then
			etCon2.Text = etCon1.Text * 0.000001
			Else If secondUnit = "Cubic Centimeter" Then
			etCon2.Text = etCon1.Text * 1
			Else If secondUnit = "Cubic Millimeter" Then
			etCon2.Text = etCon1.Text * 1000
			Else If secondUnit = "Liter" Then
			etCon2.Text = etCon1.Text / 1000
			Else If secondUnit = "Gallon" Then
			etCon2.Text = etCon1.Text * 0.0002641721
			Else If secondUnit = "Quart" Then
			etCon2.Text = etCon1.Text * 0.0010566882
			Else If secondUnit = "Pint" Then
			etCon2.Text = etCon1.Text * 0.0021133764
			Else If secondUnit = "Cup" Then
			etCon2.Text = etCon1.Text * 0.0042267528
		End If

	Else If firstUnit = "Gallon" Then
		If secondUnit = "Cubic Kilometer" Then
			etCon2.Text = etCon1.Text * 0.000000000003785411784
			Else If secondUnit = "Cubic Meter" Then
			etCon2.Text = etCon1.Text * 0.0037854118
			Else If secondUnit = "Cubic Centimeter" Then
			etCon2.Text = etCon1.Text * 3785.411784
			Else If secondUnit = "Cubic Millimeter" Then
			etCon2.Text = etCon1.Text * 3785411.784
			Else If secondUnit = "Liter" Then
			etCon2.Text = etCon1.Text * 3.785411784
			Else If secondUnit = "Milliliter" Then
			etCon2.Text = etCon1.Text * 3785.411784
			Else If secondUnit = "Quart" Then
			etCon2.Text = etCon1.Text * 4
			Else If secondUnit = "Pint" Then
			etCon2.Text = etCon1.Text * 8
			Else If secondUnit = "Cup" Then
			etCon2.Text = etCon1.Text * 16
		End If

	Else If firstUnit = "Quart" Then
		If secondUnit = "Cubic Kilometer" Then
			etCon2.Text = etCon1.Text * 0.0000000000009463529459
			Else If secondUnit = "Cubic Meter" Then
			etCon2.Text = etCon1.Text * 0.0009463529
			Else If secondUnit = "Cubic Centimeter" Then
			etCon2.Text = etCon1.Text * 946.352946
			Else If secondUnit = "Cubic Millimeter" Then
			etCon2.Text = etCon1.Text * 946352.946
			Else If secondUnit = "Liter" Then
			etCon2.Text = etCon1.Text * 0.946352956
			Else If secondUnit = "Milliliter" Then
			etCon2.Text = etCon1.Text * 946.352946
			Else If secondUnit = "Gallon" Then
			etCon2.Text = etCon1.Text / 4
			Else If secondUnit = "Pint" Then
			etCon2.Text = etCon1.Text * 2
			Else If secondUnit = "Cup" Then
			etCon2.Text = etCon1.Text * 4
		End If

	Else If firstUnit = "Pint" Then
		If secondUnit = "Cubic Kilometer" Then
			etCon2.Text = etCon1.Text * 0.0000000000004731764729
			Else If secondUnit = "Cubic Meter" Then
			etCon2.Text = etCon1.Text * 0.0004731765
			Else If secondUnit = "Cubic Centimeter" Then
			etCon2.Text = etCon1.Text * 473.176473
			Else If secondUnit = "Cubic Millimeter" Then
			etCon2.Text = etCon1.Text * 473176.473
			Else If secondUnit = "Liter" Then
			etCon2.Text = etCon1.Text * 0.473176473
			Else If secondUnit = "Milliliter" Then
			etCon2.Text = etCon1.Text * 473.176473
			Else If secondUnit = "Gallon" Then
			etCon2.Text = etCon1.Text * 0.125
			Else If secondUnit = "Quart" Then
			etCon2.Text = etCon1.Text * 0.5
			Else If secondUnit = "Cup" Then
			etCon2.Text = etCon1.Text * 2
		End If

	Else If firstUnit = "Cup" Then
		If secondUnit = "Cubic Kilometer" Then
			etCon2.Text = etCon1.Text * 0.00000000000025
			Else If secondUnit = "Cubic Meter" Then
			etCon2.Text = etCon1.Text * 0.0002365882
			Else If secondUnit = "Cubic Centimeter" Then
			etCon2.Text = etCon1.Text * 236.5882365
			Else If secondUnit = "Cubic Millimeter" Then
			etCon2.Text = etCon1.Text * 236588.2365
			Else If secondUnit = "Liter" Then
			etCon2.Text = etCon1.Text * 0.2365882365
			Else If secondUnit = "Milliliter" Then
			etCon2.Text = etCon1.Text * 236.5882365
			Else If secondUnit = "Gallon" Then
			etCon2.Text = etCon1.Text * 0.0625
		Else If secondUnit = "Quart" Then
			etCon2.Text = etCon1.Text * 0.25
		Else If secondUnit = "Pint" Then
			etCon2.Text = etCon1.Text * 0.5
		End If
	End If


End Sub

Private Sub Spinner1_ItemClick (Position As Int, Value As Object)

	
	Dim firstUnit As String = Spinner2.SelectedItem
	Dim secondUnit As String = Spinner1.SelectedItem
	
	If firstUnit = secondUnit Then
		etCon2.Text = etCon1.Text
	
	Else If firstUnit = "Cubic Kilometer" Then
		If secondUnit = "Cubic Meter" Then
			etCon2.Text = etCon1.Text * 1000000000
		Else If secondUnit = "Cubic Centimeter" Then
			etCon2.Text = etCon1.Text * 1000000000000000
		Else If secondUnit = "Cubic Millimeter" Then
			etCon2.Text = etCon1.Text * 1000000000000000000
		Else If secondUnit = "Liter" Then
			etCon2.Text = etCon1.Text * 1000000000000
		Else If secondUnit = "Milliliter" Then
			etCon2.Text = etCon1.Text * 1000000000000000
		Else If secondUnit = "Gallon" Then
			etCon2.Text = etCon1.Text * 264172052358
		Else If secondUnit = "Quart" Then
			etCon2.Text = etCon1.Text * 1056688209433
		Else If secondUnit = "Pint" Then
			etCon2.Text = etCon1.Text * 2113376418865
		Else If secondUnit = "Cup" Then
			etCon2.Text = etCon1.Text * 4226752837730
		End If

	Else If firstUnit = "Cubic Meter" Then
		If secondUnit = "Cubic Kilometer" Then
			etCon2.Text = etCon1.Text / 1000000000
		Else If secondUnit = "Cubic Centimeter" Then
			etCon2.Text = etCon1.Text * 1000000
		Else If secondUnit = "Cubic Millimeter" Then
			etCon2.Text = etCon1.Text * 1000000000
		Else If secondUnit = "Liter" Then
			etCon2.Text = etCon1.Text * 1000
		Else If secondUnit = "Milliliter" Then
			etCon2.Text = etCon1.Text * 1000000
		Else If secondUnit = "Gallon" Then
			etCon2.Text = etCon1.Text * 264.17205236
		Else If secondUnit = "Quart" Then
			etCon2.Text = etCon1.Text * 1056.6882094
		Else If secondUnit = "Pint" Then
			etCon2.Text = etCon1.Text * 2113.3764189
		Else If secondUnit = "Cup" Then
			etCon2.Text = etCon1.Text * 4226.7528377
		End If

	Else If firstUnit = "Cubic Centimeter" Then
		If secondUnit = "Cubic Kilometer" Then
			etCon2.Text = etCon1.Text * 0.000000000000001
		Else If secondUnit = "Cubic Meter" Then
			etCon2.Text = etCon1.Text / 1000000
		Else If secondUnit = "Cubic Millimeter" Then
			etCon2.Text = etCon1.Text * 1000
		Else If secondUnit = "Liter" Then
			etCon2.Text = etCon1.Text / 1000
		Else If secondUnit = "Milliliter" Then
			etCon2.Text = etCon1.Text
		Else If secondUnit = "Gallon" Then
			etCon2.Text = etCon1.Text * 0.0002641721
		Else If secondUnit = "Quart" Then
			etCon2.Text = etCon1.Text * 0.0010566882
		Else If secondUnit = "Pint" Then
			etCon2.Text = etCon1.Text * 0.0021133764
		Else If secondUnit = "Cup" Then
			etCon2.Text = etCon1.Text * 0.0042267528
		End If

	Else If firstUnit = "Cubic Millimeter" Then
		If secondUnit = "Cubic Kilometer" Then
			etCon2.Text = etCon1.Text * 0.000000000000000001
		Else If secondUnit = "Cubic Meter" Then
			etCon2.Text = etCon1.Text / 1000000000
		Else If secondUnit = "Cubic Centimeter" Then
			etCon2.Text = etCon1.Text / 1000
		Else If secondUnit = "Liter" Then
			etCon2.Text = etCon1.Text / 1000000
		Else If secondUnit = "Milliliter" Then
			etCon2.Text = etCon1.Text / 1000
		Else If secondUnit = "Gallon" Then
			etCon2.Text = etCon1.Text * 0.0000002641720523
		Else If secondUnit = "Quart" Then
			etCon2.Text = etCon1.Text * 0.0000010567
		Else If secondUnit = "Pint" Then
			etCon2.Text = etCon1.Text * 0.0000021134
		Else If secondUnit = "Cup" Then
			etCon2.Text = etCon1.Text * 0.0000042268
		End If

	Else If firstUnit = "Liter" Then
		If secondUnit = "Cubic Kilometer" Then
			etCon2.Text = etCon1.Text * 0.000000000001
		Else If secondUnit = "Cubic Meter" Then
			etCon2.Text = etCon1.Text / 1000
		Else If secondUnit = "Cubic Centimeter" Then
			etCon2.Text = etCon1.Text * 1000
		Else If secondUnit = "Cubic Millimeter" Then
			etCon2.Text = etCon1.Text * 1000000
		Else If secondUnit = "Milliliter" Then
			etCon2.Text = etCon1.Text * 1000
		Else If secondUnit = "Gallon" Then
			etCon2.Text = etCon1.Text * 0.2641720524
		Else If secondUnit = "Quart" Then
			etCon2.Text = etCon1.Text * 1.0566882094
		Else If secondUnit = "Pint" Then
			etCon2.Text = etCon1.Text * 2.1133764189
		Else If secondUnit = "Cup" Then
			etCon2.Text = etCon1.Text * 4.2267528377
		End If

	Else If firstUnit = "Milliliter" Then
		If secondUnit = "Cubic Kilometer" Then
			etCon2.Text = etCon1.Text * 0.000000000000001
		Else If secondUnit = "Cubic Meter" Then
			etCon2.Text = etCon1.Text * 0.000001
		Else If secondUnit = "Cubic Centimeter" Then
			etCon2.Text = etCon1.Text * 1
		Else If secondUnit = "Cubic Millimeter" Then
			etCon2.Text = etCon1.Text * 1000
		Else If secondUnit = "Liter" Then
			etCon2.Text = etCon1.Text / 1000
		Else If secondUnit = "Gallon" Then
			etCon2.Text = etCon1.Text * 0.0002641721
		Else If secondUnit = "Quart" Then
			etCon2.Text = etCon1.Text * 0.0010566882
		Else If secondUnit = "Pint" Then
			etCon2.Text = etCon1.Text * 0.0021133764
		Else If secondUnit = "Cup" Then
			etCon2.Text = etCon1.Text * 0.0042267528
		End If

	Else If firstUnit = "Gallon" Then
		If secondUnit = "Cubic Kilometer" Then
			etCon2.Text = etCon1.Text * 0.000000000003785411784
		Else If secondUnit = "Cubic Meter" Then
			etCon2.Text = etCon1.Text * 0.0037854118
		Else If secondUnit = "Cubic Centimeter" Then
			etCon2.Text = etCon1.Text * 3785.411784
		Else If secondUnit = "Cubic Millimeter" Then
			etCon2.Text = etCon1.Text * 3785411.784
		Else If secondUnit = "Liter" Then
			etCon2.Text = etCon1.Text * 3.785411784
		Else If secondUnit = "Milliliter" Then
			etCon2.Text = etCon1.Text * 3785.411784
		Else If secondUnit = "Quart" Then
			etCon2.Text = etCon1.Text * 4
		Else If secondUnit = "Pint" Then
			etCon2.Text = etCon1.Text * 8
		Else If secondUnit = "Cup" Then
			etCon2.Text = etCon1.Text * 16
		End If

	Else If firstUnit = "Quart" Then
		If secondUnit = "Cubic Kilometer" Then
			etCon2.Text = etCon1.Text * 0.0000000000009463529459
		Else If secondUnit = "Cubic Meter" Then
			etCon2.Text = etCon1.Text * 0.0009463529
		Else If secondUnit = "Cubic Centimeter" Then
			etCon2.Text = etCon1.Text * 946.352946
		Else If secondUnit = "Cubic Millimeter" Then
			etCon2.Text = etCon1.Text * 946352.946
		Else If secondUnit = "Liter" Then
			etCon2.Text = etCon1.Text * 0.946352956
		Else If secondUnit = "Milliliter" Then
			etCon2.Text = etCon1.Text * 946.352946
		Else If secondUnit = "Gallon" Then
			etCon2.Text = etCon1.Text / 4
		Else If secondUnit = "Pint" Then
			etCon2.Text = etCon1.Text * 2
		Else If secondUnit = "Cup" Then
			etCon2.Text = etCon1.Text * 4
		End If

	Else If firstUnit = "Pint" Then
		If secondUnit = "Cubic Kilometer" Then
			etCon2.Text = etCon1.Text * 0.0000000000004731764729
		Else If secondUnit = "Cubic Meter" Then
			etCon2.Text = etCon1.Text * 0.0004731765
		Else If secondUnit = "Cubic Centimeter" Then
			etCon2.Text = etCon1.Text * 473.176473
		Else If secondUnit = "Cubic Millimeter" Then
			etCon2.Text = etCon1.Text * 473176.473
		Else If secondUnit = "Liter" Then
			etCon2.Text = etCon1.Text * 0.473176473
		Else If secondUnit = "Milliliter" Then
			etCon2.Text = etCon1.Text * 473.176473
		Else If secondUnit = "Gallon" Then
			etCon2.Text = etCon1.Text * 0.125
		Else If secondUnit = "Quart" Then
			etCon2.Text = etCon1.Text * 0.5
		Else If secondUnit = "Cup" Then
			etCon2.Text = etCon1.Text * 2
		End If

	Else If firstUnit = "Cup" Then
		If secondUnit = "Cubic Kilometer" Then
			etCon2.Text = etCon1.Text * 0.00000000000025
		Else If secondUnit = "Cubic Meter" Then
			etCon2.Text = etCon1.Text * 0.0002365882
		Else If secondUnit = "Cubic Centimeter" Then
			etCon2.Text = etCon1.Text * 236.5882365
		Else If secondUnit = "Cubic Millimeter" Then
			etCon2.Text = etCon1.Text * 236588.2365
		Else If secondUnit = "Liter" Then
			etCon2.Text = etCon1.Text * 0.2365882365
		Else If secondUnit = "Milliliter" Then
			etCon2.Text = etCon1.Text * 236.5882365
		Else If secondUnit = "Gallon" Then
			etCon2.Text = etCon1.Text * 0.0625
		Else If secondUnit = "Quart" Then
			etCon2.Text = etCon1.Text * 0.25
		Else If secondUnit = "Pint" Then
			etCon2.Text = etCon1.Text * 0.5
		End If
	End If
	
End Sub

Private Sub btHome_Click
		
	StartActivity(Main)
	
End Sub