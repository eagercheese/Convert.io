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
	Activity.LoadLayout("SpeedLayout")


	Spinner1.AddAll(Array("Meter/Second", "Kilometer/Hour", "Mile/Hour", "Meter/Hour", "Meter/Minute", "Kilometer/Minute", "Kilometer/Second", "Foot/Hour", "Foot/Minute", "Foot/Second", "Mile/Minute", "Mile/Second"))
	Spinner2.AddAll(Array("Meter/Second", "Kilometer/Hour", "Mile/Hour", "Meter/Hour", "Meter/Minute", "Kilometer/Minute", "Kilometer/Second", "Foot/Hour", "Foot/Minute", "Foot/Second", "Mile/Minute", "Mile/Second"))

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
		
	Else If firstUnit = "Meter/Second" Then
		If secondUnit = "Mile/Hour" Then
			etCon2.Text = etCon1.Text * 2.2369362921
		Else If secondUnit = "Kilometer/Hour" Then
			etCon2.Text = etCon1.Text * 1.609344
		Else If secondUnit = "Meter/Hour" Then
			etCon2.Text = etCon1.Text * 1609.344
		Else If secondUnit = "Meter/Minute" Then
			etCon2.Text = etCon1.Text * 26.8224
		Else If secondUnit = "Kilometer/Minute" Then
			etCon2.Text = etCon1.Text * 0.0268224
		Else If secondUnit = "Kilometer/Second" Then
			etCon2.Text = etCon1.Text * 0.00044704
		Else If secondUnit = "Foot/Hour" Then
			etCon2.Text = etCon1.Text * 5280
		Else If secondUnit = "Foot/Minute" Then
			etCon2.Text = etCon1.Text * 88
		Else If secondUnit = "Foot/Second" Then
			etCon2.Text = etCon1.Text * 1.467
		Else If secondUnit = "Mile/Minute" Then
			etCon2.Text = etCon1.Text * 0.0167
		Else If secondUnit = "Mile/Second" Then
			etCon2.Text = etCon1.Text * 0.000278
		End If
		
		Else If firstUnit = "Mile/Hour" Then
		If secondUnit = "Meter/Second" Then
			etCon2.Text = etCon1.Text * 0.44704
			Else If secondUnit = "Kilometer/Hour" Then
			etCon2.Text = etCon1.Text * 1.609344
			Else If secondUnit = "Meter/Hour" Then
			etCon2.Text = etCon1.Text * 1609.344
			Else If secondUnit = "Meter/Minute" Then
			etCon2.Text = etCon1.Text * 26.8224
			Else If secondUnit = "Kilometer/Minute" Then
			etCon2.Text = etCon1.Text * 0.0268224
			Else If secondUnit = "Kilometer/Second" Then
			etCon2.Text = etCon1.Text * 0.00044704
			Else If secondUnit = "Foot/Hour" Then
			etCon2.Text = etCon1.Text * 5280
			Else If secondUnit = "Foot/Minute" Then
			etCon2.Text = etCon1.Text * 88
			Else If secondUnit = "Foot/Second" Then
			etCon2.Text = etCon1.Text * 1.467
			Else If secondUnit = "Mile/Minute" Then
			etCon2.Text = etCon1.Text * 0.0167
			Else If secondUnit = "Mile/Second" Then
			etCon2.Text = etCon1.Text * 0.000278
		End If

		Else If firstUnit = "Kilometer/Hour" Then
		If secondUnit = "Meter/Second" Then
			etCon2.Text = etCon1.Text * 0.278
			Else If secondUnit = "Mile/Hour" Then
			etCon2.Text = etCon1.Text * 0.6213711922
			Else If secondUnit = "Meter/Hour" Then
			etCon2.Text = etCon1.Text * 1000
			Else If secondUnit = "Meter/Minute" Then
			etCon2.Text = etCon1.Text * 16.667
			Else If secondUnit = "Kilometer/Minute" Then
			etCon2.Text = etCon1.Text / 60
			Else If secondUnit = "Kilometer/Second" Then
			etCon2.Text = etCon1.Text / 3600
			Else If secondUnit = "Foot/Hour" Then
			etCon2.Text = etCon1.Text * 3280.839895
			Else If secondUnit = "Foot/Minute" Then
			etCon2.Text = etCon1.Text * 54.680664917
			Else If secondUnit = "Foot/Second" Then
			etCon2.Text = etCon1.Text * 0.9113444153
			Else If secondUnit = "Mile/Minute" Then
			etCon2.Text = etCon1.Text * 0.0103561865
			Else If secondUnit = "Mile/Second" Then
			etCon2.Text = etCon1.Text * 0.0001726031
		End If

		
		Else If firstUnit = "Mile/Hour" Then
		If secondUnit = "Meter/Second" Then
			etCon2.Text = etCon1.Text * 0.44704
			Else If secondUnit = "Kilometer/Hour" Then
			etCon2.Text = etCon1.Text * 1.609344
			Else If secondUnit = "Meter/Hour" Then
			etCon2.Text = etCon1.Text * 1609.344
			Else If secondUnit = "Meter/Minute" Then
			etCon2.Text = etCon1.Text * 26.8224
			Else If secondUnit = "Kilometer/Minute" Then
			etCon2.Text = etCon1.Text * 0.0268224
			Else If secondUnit = "Kilometer/Second" Then
			etCon2.Text = etCon1.Text * 0.00044704
			Else If secondUnit = "Foot/Hour" Then
			etCon2.Text = etCon1.Text * 5280
			Else If secondUnit = "Foot/Minute" Then
			etCon2.Text = etCon1.Text * 88
			Else If secondUnit = "Foot/Second" Then
			etCon2.Text = etCon1.Text * 1.467
			Else If secondUnit = "Mile/Minute" Then
			etCon2.Text = etCon1.Text / 60
			Else If secondUnit = "Mile/Second" Then
			etCon2.Text = etCon1.Text / 3600
		End If
				
		Else If firstUnit = "Meter/Hour" Then
		If secondUnit = "Meter/Second" Then
			etCon2.Text = etCon1.Text / 3600
			Else If secondUnit = "Kilometer/Hour" Then
			etCon2.Text = etCon1.Text / 1000
			Else If secondUnit = "Mile/Hour" Then
			etCon2.Text = etCon1.Text / 1609.34
			Else If secondUnit = "Meter/Minute" Then
			etCon2.Text = etCon1.Text / 60
			Else If secondUnit = "Kilometer/Minute" Then
			etCon2.Text = etCon1.Text * 0.0000166667
			Else If secondUnit = "Kilometer/Second" Then
			etCon2.Text = etCon1.Text / 3600000
			Else If secondUnit = "Foot/Hour" Then
			etCon2.Text = etCon1.Text * 3.280839895
			Else If secondUnit = "Foot/Minute" Then
			etCon2.Text = etCon1.Text * 0.0546806649
			Else If secondUnit = "Foot/Second" Then
			etCon2.Text = etCon1.Text * 0.0009113444
			Else If secondUnit = "Mile/Minute" Then
			etCon2.Text = etCon1.Text * 0.0000103562
			Else If secondUnit = "Mile/Second" Then
			etCon2.Text = etCon1.Text * 0.0000001726031089
		End If
					
		Else If firstUnit = "Meter/Minute" Then
		If secondUnit = "Meter/Second" Then
			etCon2.Text = etCon1.Text / 60
			Else If secondUnit = "Kilometer/Hour" Then
			etCon2.Text = etCon1.Text * 0.06
			Else If secondUnit = "Mile/Hour" Then
			etCon2.Text = etCon1.Text * 0.0372822715
			Else If secondUnit = "Meter/Hour" Then
			etCon2.Text = etCon1.Text * 60
			Else If secondUnit = "Kilometer/Minute" Then
			etCon2.Text = etCon1.Text / 1000
			Else If secondUnit = "Kilometer/Second" Then
			etCon2.Text = etCon1.Text / 60000
			Else If secondUnit = "Foot/Hour" Then
			etCon2.Text = etCon1.Text * 196.8503937
			Else If secondUnit = "Foot/Minute" Then
			etCon2.Text = etCon1.Text * 3.280839895
			Else If secondUnit = "Foot/Second" Then
			etCon2.Text = etCon1.Text * 0.0546806649
			Else If secondUnit = "Mile/Minute" Then
			etCon2.Text = etCon1.Text * 0.0006213712
			Else If secondUnit = "Mile/Second" Then
			etCon2.Text = etCon1.Text * 0.0000103562
		End If
							
		Else If firstUnit = "Kilometer/Minute" Then
		If secondUnit = "Meter/Second" Then
			etCon2.Text = etCon1.Text * 16.6667
			Else If secondUnit = "Kilometer/Hour" Then
			etCon2.Text = etCon1.Text * 60
			Else If secondUnit = "Mile/Hour" Then
			etCon2.Text = etCon1.Text * 37.282271534
			Else If secondUnit = "Meter/Hour" Then
			etCon2.Text = etCon1.Text * 60000
			Else If secondUnit = "Meter/Minute" Then
			etCon2.Text = etCon1.Text * 1000
			Else If secondUnit = "Kilometer/Second" Then
			etCon2.Text = etCon1.Text / 60
			Else If secondUnit = "Foot/Hour" Then
			etCon2.Text = etCon1.Text * 196850.3937
			Else If secondUnit = "Foot/Minute" Then
			etCon2.Text = etCon1.Text * 3280.839895
			Else If secondUnit = "Foot/Second" Then
			etCon2.Text = etCon1.Text * 54.680664917
			Else If secondUnit = "Mile/Minute" Then
			etCon2.Text = etCon1.Text * 0.6213711922
			Else If secondUnit = "Mile/Second" Then
			etCon2.Text = etCon1.Text * 0.0103561865
		End If
									
		Else If firstUnit = "Kilometer/Second" Then
		If secondUnit = "Meter/Second" Then
			etCon2.Text = etCon1.Text * 1000
			Else If secondUnit = "Kilometer/Hour" Then
			etCon2.Text = etCon1.Text * 3600
			Else If secondUnit = "Mile/Hour" Then
			etCon2.Text = etCon1.Text * 2236.9362921
			Else If secondUnit = "Meter/Hour" Then
			etCon2.Text = etCon1.Text * 3600000
			Else If secondUnit = "Meter/Minute" Then
			etCon2.Text = etCon1.Text * 60000
			Else If secondUnit = "Kilometer/Minute" Then
			etCon2.Text = etCon1.Text * 60
			Else If secondUnit = "Foot/Hour" Then
			etCon2.Text = etCon1.Text * 11811023.622
			Else If secondUnit = "Foot/Minute" Then
			etCon2.Text = etCon1.Text * 196850.3937
			Else If secondUnit = "Foot/Second" Then
			etCon2.Text = etCon1.Text * 3280.839895
			Else If secondUnit = "Mile/Minute" Then
			etCon2.Text = etCon1.Text * 37.282271534
			Else If secondUnit = "Mile/Second" Then
			etCon2.Text = etCon1.Text * 0.6213711922
		End If
											
		Else If firstUnit = "Foot/Hour" Then
		If secondUnit = "Meter/Second" Then
			etCon2.Text = etCon1.Text * 0.0000846667
			Else If secondUnit = "Kilometer/Hour" Then
			etCon2.Text = etCon1.Text * 0.0003048
			Else If secondUnit = "Mile/Hour" Then
			etCon2.Text = etCon1.Text * 0.0001893939
			Else If secondUnit = "Meter/Hour" Then
			etCon2.Text = etCon1.Text * 0.3048
			Else If secondUnit = "Meter/Minute" Then
			etCon2.Text = etCon1.Text * 0.00508
			Else If secondUnit = "Kilometer/Minute" Then
			etCon2.Text = etCon1.Text * 0.00000508
			Else If secondUnit = "Kilometer/Second" Then
			etCon2.Text = etCon1.Text * 0.00000008467
			Else If secondUnit = "Foot/Minute" Then
			etCon2.Text = etCon1.Text * 0.0166667
			Else If secondUnit = "Foot/Second" Then
			etCon2.Text = etCon1.Text * 0.000277778
			Else If secondUnit = "Mile/Minute" Then
			etCon2.Text = etCon1.Text * 0.0000031566
			Else If secondUnit = "Mile/Second" Then
			etCon2.Text = etCon1.Text * 0.0000000526094276
		End If
											
		Else If firstUnit = "Foot/Minute" Then
		If secondUnit = "Meter/Second" Then
			etCon2.Text = etCon1.Text * 0.00508
			Else If secondUnit = "Kilometer/Hour" Then
			etCon2.Text = etCon1.Text * 0.018288
			Else If secondUnit = "Mile/Hour" Then
			etCon2.Text = etCon1.Text * 0.0113636364
			Else If secondUnit = "Meter/Hour" Then
			etCon2.Text = etCon1.Text * 0.3048
			Else If secondUnit = "Meter/Minute" Then
			etCon2.Text = etCon1.Text * 0.00508
			Else If secondUnit = "Kilometer/Minute" Then
			etCon2.Text = etCon1.Text * 0.0003048
			Else If secondUnit = "Kilometer/Second" Then
			etCon2.Text = etCon1.Text * 0.00000508
			Else If secondUnit = "Foot/Hour" Then
			etCon2.Text = etCon1.Text * 60
			Else If secondUnit = "Foot/Second" Then
			etCon2.Text = etCon1.Text * 0.0166667
			Else If secondUnit = "Mile/Minute" Then
			etCon2.Text = etCon1.Text * 0.0001893939
			Else If secondUnit = "Mile/Second" Then
			etCon2.Text = etCon1.Text * 0.0000031566
		End If
		
		Else If firstUnit = "Foot/Second" Then
		If secondUnit = "Meter/Second" Then
			etCon2.Text = etCon1.Text * 0.3048
			Else If secondUnit = "Kilometer/Hour" Then
			etCon2.Text = etCon1.Text * 1.09728
			Else If secondUnit = "Mile/Hour" Then
			etCon2.Text = etCon1.Text * 0.6818181818
			Else If secondUnit = "Meter/Hour" Then
			etCon2.Text = etCon1.Text * 1097.28
			Else If secondUnit = "Meter/Minute" Then
			etCon2.Text = etCon1.Text * 18.288
			Else If secondUnit = "Kilometer/Minute" Then
			etCon2.Text = etCon1.Text * 0.018288
			Else If secondUnit = "Kilometer/Second" Then
			etCon2.Text = etCon1.Text * 0.0003048
			Else If secondUnit = "Foot/Hour" Then
			etCon2.Text = etCon1.Text * 3600
			Else If secondUnit = "Foot/Minute" Then
			etCon2.Text = etCon1.Text * 60
			Else If secondUnit = "Mile/Minute" Then
			etCon2.Text = etCon1.Text * 0.0113636364
			Else If secondUnit = "Mile/Second" Then
			etCon2.Text = etCon1.Text * 0.0001893939
		End If
		Else If firstUnit = "Mile/Minute" Then
		If secondUnit = "Meter/Second" Then
			etCon2.Text = etCon1.Text * 26.8224
			Else If secondUnit = "Kilometer/Hour" Then
			etCon2.Text = etCon1.Text * 96.56064
			Else If secondUnit = "Mile/Hour" Then
			etCon2.Text = etCon1.Text * 60
			Else If secondUnit = "Meter/Hour" Then
			etCon2.Text = etCon1.Text * 96560.64
			Else If secondUnit = "Meter/Minute" Then
			etCon2.Text = etCon1.Text * 1609.344
			Else If secondUnit = "Kilometer/Minute" Then
			etCon2.Text = etCon1.Text * 1.609344
			Else If secondUnit = "Kilometer/Second" Then
			etCon2.Text = etCon1.Text * 0.0268224
			Else If secondUnit = "Foot/Hour" Then
			etCon2.Text = etCon1.Text * 316800
			Else If secondUnit = "Foot/Minute" Then
			etCon2.Text = etCon1.Text * 5280
			Else If secondUnit = "Foot/Second" Then
			etCon2.Text = etCon1.Text * 88
			Else If secondUnit = "Mile/Second" Then
			etCon2.Text = etCon1.Text * 0.0166667
		End If
						
		Else If firstUnit = "Mile/Second" Then
		If secondUnit = "Meter/Second" Then
			etCon2.Text = etCon1.Text * 1609.344
			Else If secondUnit = "Kilometer/Hour" Then
			etCon2.Text = etCon1.Text * 5793.6384
			Else If secondUnit = "Mile/Hour" Then
			etCon2.Text = etCon1.Text * 3600
			Else If secondUnit = "Meter/Hour" Then
			etCon2.Text = etCon1.Text * 5793638.4
			Else If secondUnit = "Meter/Minute" Then
			etCon2.Text = etCon1.Text * 96560.64
			Else If secondUnit = "Kilometer/Minute" Then
			etCon2.Text = etCon1.Text * 96.56064
			Else If secondUnit = "Kilometer/Second" Then
			etCon2.Text = etCon1.Text * 1.609344
			Else If secondUnit = "Foot/Hour" Then
			etCon2.Text = etCon1.Text * 19008000
		Else If secondUnit = "Foot/Minute" Then
			etCon2.Text = etCon1.Text * 316800
		Else If secondUnit = "Foot/Second" Then
			etCon2.Text = etCon1.Text * 5280
		Else If secondUnit = "Mile/Minute" Then
			etCon2.Text = etCon1.Text * 60
		End If
	End If

End Sub

Private Sub Spinner1_ItemClick (Position As Int, Value As Object)
	
				
	Dim firstUnit As String = Spinner2.SelectedItem
	Dim secondUnit As String = Spinner1.SelectedItem
	
	If firstUnit = secondUnit Then
		etCon2.Text = etCon1.Text
		
	Else If firstUnit = "Meter/Second" Then
		If secondUnit = "Mile/Hour" Then
			etCon2.Text = etCon1.Text * 2.2369362921
		Else If secondUnit = "Kilometer/Hour" Then
			etCon2.Text = etCon1.Text * 1.609344
		Else If secondUnit = "Meter/Hour" Then
			etCon2.Text = etCon1.Text * 1609.344
		Else If secondUnit = "Meter/Minute" Then
			etCon2.Text = etCon1.Text * 26.8224
		Else If secondUnit = "Kilometer/Minute" Then
			etCon2.Text = etCon1.Text * 0.0268224
		Else If secondUnit = "Kilometer/Second" Then
			etCon2.Text = etCon1.Text * 0.00044704
		Else If secondUnit = "Foot/Hour" Then
			etCon2.Text = etCon1.Text * 5280
		Else If secondUnit = "Foot/Minute" Then
			etCon2.Text = etCon1.Text * 88
		Else If secondUnit = "Foot/Second" Then
			etCon2.Text = etCon1.Text * 1.467
		Else If secondUnit = "Mile/Minute" Then
			etCon2.Text = etCon1.Text * 0.0167
		Else If secondUnit = "Mile/Second" Then
			etCon2.Text = etCon1.Text * 0.000278
		End If
		
	Else If firstUnit = "Mile/Hour" Then
		If secondUnit = "Meter/Second" Then
			etCon2.Text = etCon1.Text * 0.44704
		Else If secondUnit = "Kilometer/Hour" Then
			etCon2.Text = etCon1.Text * 1.609344
		Else If secondUnit = "Meter/Hour" Then
			etCon2.Text = etCon1.Text * 1609.344
		Else If secondUnit = "Meter/Minute" Then
			etCon2.Text = etCon1.Text * 26.8224
		Else If secondUnit = "Kilometer/Minute" Then
			etCon2.Text = etCon1.Text * 0.0268224
		Else If secondUnit = "Kilometer/Second" Then
			etCon2.Text = etCon1.Text * 0.00044704
		Else If secondUnit = "Foot/Hour" Then
			etCon2.Text = etCon1.Text * 5280
		Else If secondUnit = "Foot/Minute" Then
			etCon2.Text = etCon1.Text * 88
		Else If secondUnit = "Foot/Second" Then
			etCon2.Text = etCon1.Text * 1.467
		Else If secondUnit = "Mile/Minute" Then
			etCon2.Text = etCon1.Text * 0.0167
		Else If secondUnit = "Mile/Second" Then
			etCon2.Text = etCon1.Text * 0.000278
		End If

		
	Else If firstUnit = "Kilometer/Hour" Then
		If secondUnit = "Meter/Second" Then
			etCon2.Text = etCon1.Text * 0.278
		Else If secondUnit = "Mile/Hour" Then
			etCon2.Text = etCon1.Text * 0.6213711922
		Else If secondUnit = "Meter/Hour" Then
			etCon2.Text = etCon1.Text * 1000
		Else If secondUnit = "Meter/Minute" Then
			etCon2.Text = etCon1.Text * 16.667
		Else If secondUnit = "Kilometer/Minute" Then
			etCon2.Text = etCon1.Text / 60
		Else If secondUnit = "Kilometer/Second" Then
			etCon2.Text = etCon1.Text / 3600
		Else If secondUnit = "Foot/Hour" Then
			etCon2.Text = etCon1.Text * 3280.839895
		Else If secondUnit = "Foot/Minute" Then
			etCon2.Text = etCon1.Text * 54.680664917
		Else If secondUnit = "Foot/Second" Then
			etCon2.Text = etCon1.Text * 0.9113444153
		Else If secondUnit = "Mile/Minute" Then
			etCon2.Text = etCon1.Text * 0.0103561865
		Else If secondUnit = "Mile/Second" Then
			etCon2.Text = etCon1.Text * 0.0001726031
		End If

		
	Else If firstUnit = "Mile/Hour" Then
		If secondUnit = "Meter/Second" Then
			etCon2.Text = etCon1.Text * 0.44704
		Else If secondUnit = "Kilometer/Hour" Then
			etCon2.Text = etCon1.Text * 1.609344
		Else If secondUnit = "Meter/Hour" Then
			etCon2.Text = etCon1.Text * 1609.344
		Else If secondUnit = "Meter/Minute" Then
			etCon2.Text = etCon1.Text * 26.8224
		Else If secondUnit = "Kilometer/Minute" Then
			etCon2.Text = etCon1.Text * 0.0268224
		Else If secondUnit = "Kilometer/Second" Then
			etCon2.Text = etCon1.Text * 0.00044704
		Else If secondUnit = "Foot/Hour" Then
			etCon2.Text = etCon1.Text * 5280
		Else If secondUnit = "Foot/Minute" Then
			etCon2.Text = etCon1.Text * 88
		Else If secondUnit = "Foot/Second" Then
			etCon2.Text = etCon1.Text * 1.467
		Else If secondUnit = "Mile/Minute" Then
			etCon2.Text = etCon1.Text / 60
		Else If secondUnit = "Mile/Second" Then
			etCon2.Text = etCon1.Text / 3600
		End If
				
	Else If firstUnit = "Meter/Hour" Then
		If secondUnit = "Meter/Second" Then
			etCon2.Text = etCon1.Text / 3600
		Else If secondUnit = "Kilometer/Hour" Then
			etCon2.Text = etCon1.Text / 1000
		Else If secondUnit = "Mile/Hour" Then
			etCon2.Text = etCon1.Text / 1609.34
		Else If secondUnit = "Meter/Minute" Then
			etCon2.Text = etCon1.Text / 60
		Else If secondUnit = "Kilometer/Minute" Then
			etCon2.Text = etCon1.Text * 0.0000166667
		Else If secondUnit = "Kilometer/Second" Then
			etCon2.Text = etCon1.Text / 3600000
		Else If secondUnit = "Foot/Hour" Then
			etCon2.Text = etCon1.Text * 3.280839895
		Else If secondUnit = "Foot/Minute" Then
			etCon2.Text = etCon1.Text * 0.0546806649
		Else If secondUnit = "Foot/Second" Then
			etCon2.Text = etCon1.Text * 0.0009113444
		Else If secondUnit = "Mile/Minute" Then
			etCon2.Text = etCon1.Text * 0.0000103562
		Else If secondUnit = "Mile/Second" Then
			etCon2.Text = etCon1.Text * 0.0000001726031089
		End If
					
	Else If firstUnit = "Meter/Minute" Then
		If secondUnit = "Meter/Second" Then
			etCon2.Text = etCon1.Text / 60
		Else If secondUnit = "Kilometer/Hour" Then
			etCon2.Text = etCon1.Text * 0.06
		Else If secondUnit = "Mile/Hour" Then
			etCon2.Text = etCon1.Text * 0.0372822715
		Else If secondUnit = "Meter/Hour" Then
			etCon2.Text = etCon1.Text * 60
		Else If secondUnit = "Kilometer/Minute" Then
			etCon2.Text = etCon1.Text / 1000
		Else If secondUnit = "Kilometer/Second" Then
			etCon2.Text = etCon1.Text / 60000
		Else If secondUnit = "Foot/Hour" Then
			etCon2.Text = etCon1.Text * 196.8503937
		Else If secondUnit = "Foot/Minute" Then
			etCon2.Text = etCon1.Text * 3.280839895
		Else If secondUnit = "Foot/Second" Then
			etCon2.Text = etCon1.Text * 0.0546806649
		Else If secondUnit = "Mile/Minute" Then
			etCon2.Text = etCon1.Text * 0.0006213712
		Else If secondUnit = "Mile/Second" Then
			etCon2.Text = etCon1.Text * 0.0000103562
		End If
							
	Else If firstUnit = "Kilometer/Minute" Then
		If secondUnit = "Meter/Second" Then
			etCon2.Text = etCon1.Text * 16.6667
		Else If secondUnit = "Kilometer/Hour" Then
			etCon2.Text = etCon1.Text * 60
		Else If secondUnit = "Mile/Hour" Then
			etCon2.Text = etCon1.Text * 37.282271534
		Else If secondUnit = "Meter/Hour" Then
			etCon2.Text = etCon1.Text * 60000
		Else If secondUnit = "Meter/Minute" Then
			etCon2.Text = etCon1.Text * 1000
		Else If secondUnit = "Kilometer/Second" Then
			etCon2.Text = etCon1.Text / 60
		Else If secondUnit = "Foot/Hour" Then
			etCon2.Text = etCon1.Text * 196850.3937
		Else If secondUnit = "Foot/Minute" Then
			etCon2.Text = etCon1.Text * 3280.839895
		Else If secondUnit = "Foot/Second" Then
			etCon2.Text = etCon1.Text * 54.680664917
		Else If secondUnit = "Mile/Minute" Then
			etCon2.Text = etCon1.Text * 0.6213711922
		Else If secondUnit = "Mile/Second" Then
			etCon2.Text = etCon1.Text * 0.0103561865
		End If
									
	Else If firstUnit = "Kilometer/Second" Then
		If secondUnit = "Meter/Second" Then
			etCon2.Text = etCon1.Text * 1000
		Else If secondUnit = "Kilometer/Hour" Then
			etCon2.Text = etCon1.Text * 3600
		Else If secondUnit = "Mile/Hour" Then
			etCon2.Text = etCon1.Text * 2236.9362921
		Else If secondUnit = "Meter/Hour" Then
			etCon2.Text = etCon1.Text * 3600000
		Else If secondUnit = "Meter/Minute" Then
			etCon2.Text = etCon1.Text * 60000
		Else If secondUnit = "Kilometer/Minute" Then
			etCon2.Text = etCon1.Text * 60
		Else If secondUnit = "Foot/Hour" Then
			etCon2.Text = etCon1.Text * 11811023.622
		Else If secondUnit = "Foot/Minute" Then
			etCon2.Text = etCon1.Text * 196850.3937
		Else If secondUnit = "Foot/Second" Then
			etCon2.Text = etCon1.Text * 3280.839895
		Else If secondUnit = "Mile/Minute" Then
			etCon2.Text = etCon1.Text * 37.282271534
		Else If secondUnit = "Mile/Second" Then
			etCon2.Text = etCon1.Text * 0.6213711922
		End If
											
	Else If firstUnit = "Foot/Hour" Then
		If secondUnit = "Meter/Second" Then
			etCon2.Text = etCon1.Text * 0.0000846667
		Else If secondUnit = "Kilometer/Hour" Then
			etCon2.Text = etCon1.Text * 0.0003048
		Else If secondUnit = "Mile/Hour" Then
			etCon2.Text = etCon1.Text * 0.0001893939
		Else If secondUnit = "Meter/Hour" Then
			etCon2.Text = etCon1.Text * 0.3048
		Else If secondUnit = "Meter/Minute" Then
			etCon2.Text = etCon1.Text * 0.00508
		Else If secondUnit = "Kilometer/Minute" Then
			etCon2.Text = etCon1.Text * 0.00000508
		Else If secondUnit = "Kilometer/Second" Then
			etCon2.Text = etCon1.Text * 0.00000008467
		Else If secondUnit = "Foot/Minute" Then
			etCon2.Text = etCon1.Text * 0.0166667
		Else If secondUnit = "Foot/Second" Then
			etCon2.Text = etCon1.Text * 0.000277778
		Else If secondUnit = "Mile/Minute" Then
			etCon2.Text = etCon1.Text * 0.0000031566
		Else If secondUnit = "Mile/Second" Then
			etCon2.Text = etCon1.Text * 0.0000000526094276
		End If
											
	Else If firstUnit = "Foot/Minute" Then
		If secondUnit = "Meter/Second" Then
			etCon2.Text = etCon1.Text * 0.00508
		Else If secondUnit = "Kilometer/Hour" Then
			etCon2.Text = etCon1.Text * 0.018288
		Else If secondUnit = "Mile/Hour" Then
			etCon2.Text = etCon1.Text * 0.0113636364
		Else If secondUnit = "Meter/Hour" Then
			etCon2.Text = etCon1.Text * 0.3048
		Else If secondUnit = "Meter/Minute" Then
			etCon2.Text = etCon1.Text * 0.00508
		Else If secondUnit = "Kilometer/Minute" Then
			etCon2.Text = etCon1.Text * 0.0003048
		Else If secondUnit = "Kilometer/Second" Then
			etCon2.Text = etCon1.Text * 0.00000508
		Else If secondUnit = "Foot/Hour" Then
			etCon2.Text = etCon1.Text * 60
		Else If secondUnit = "Foot/Second" Then
			etCon2.Text = etCon1.Text * 0.0166667
		Else If secondUnit = "Mile/Minute" Then
			etCon2.Text = etCon1.Text * 0.0001893939
		Else If secondUnit = "Mile/Second" Then
			etCon2.Text = etCon1.Text * 0.0000031566
		End If
		
	Else If firstUnit = "Foot/Second" Then
		If secondUnit = "Meter/Second" Then
			etCon2.Text = etCon1.Text * 0.3048
		Else If secondUnit = "Kilometer/Hour" Then
			etCon2.Text = etCon1.Text * 1.09728
		Else If secondUnit = "Mile/Hour" Then
			etCon2.Text = etCon1.Text * 0.6818181818
		Else If secondUnit = "Meter/Hour" Then
			etCon2.Text = etCon1.Text * 1097.28
		Else If secondUnit = "Meter/Minute" Then
			etCon2.Text = etCon1.Text * 18.288
		Else If secondUnit = "Kilometer/Minute" Then
			etCon2.Text = etCon1.Text * 0.018288
		Else If secondUnit = "Kilometer/Second" Then
			etCon2.Text = etCon1.Text * 0.0003048
		Else If secondUnit = "Foot/Hour" Then
			etCon2.Text = etCon1.Text * 3600
		Else If secondUnit = "Foot/Minute" Then
			etCon2.Text = etCon1.Text * 60
		Else If secondUnit = "Mile/Minute" Then
			etCon2.Text = etCon1.Text * 0.0113636364
		Else If secondUnit = "Mile/Second" Then
			etCon2.Text = etCon1.Text * 0.0001893939
		End If
	Else If firstUnit = "Mile/Minute" Then
		If secondUnit = "Meter/Second" Then
			etCon2.Text = etCon1.Text * 26.8224
		Else If secondUnit = "Kilometer/Hour" Then
			etCon2.Text = etCon1.Text * 96.56064
		Else If secondUnit = "Mile/Hour" Then
			etCon2.Text = etCon1.Text * 60
		Else If secondUnit = "Meter/Hour" Then
			etCon2.Text = etCon1.Text * 96560.64
		Else If secondUnit = "Meter/Minute" Then
			etCon2.Text = etCon1.Text * 1609.344
		Else If secondUnit = "Kilometer/Minute" Then
			etCon2.Text = etCon1.Text * 1.609344
		Else If secondUnit = "Kilometer/Second" Then
			etCon2.Text = etCon1.Text * 0.0268224
		Else If secondUnit = "Foot/Hour" Then
			etCon2.Text = etCon1.Text * 316800
		Else If secondUnit = "Foot/Minute" Then
			etCon2.Text = etCon1.Text * 5280
		Else If secondUnit = "Foot/Second" Then
			etCon2.Text = etCon1.Text * 88
		Else If secondUnit = "Mile/Second" Then
			etCon2.Text = etCon1.Text * 0.0166667
		End If
						
	Else If firstUnit = "Mile/Second" Then
		If secondUnit = "Meter/Second" Then
			etCon2.Text = etCon1.Text * 1609.344
		Else If secondUnit = "Kilometer/Hour" Then
			etCon2.Text = etCon1.Text * 5793.6384
		Else If secondUnit = "Mile/Hour" Then
			etCon2.Text = etCon1.Text * 3600
		Else If secondUnit = "Meter/Hour" Then
			etCon2.Text = etCon1.Text * 5793638.4
		Else If secondUnit = "Meter/Minute" Then
			etCon2.Text = etCon1.Text * 96560.64
		Else If secondUnit = "Kilometer/Minute" Then
			etCon2.Text = etCon1.Text * 96.56064
		Else If secondUnit = "Kilometer/Second" Then
			etCon2.Text = etCon1.Text * 1.609344
		Else If secondUnit = "Foot/Hour" Then
			etCon2.Text = etCon1.Text * 19008000
		Else If secondUnit = "Foot/Minute" Then
			etCon2.Text = etCon1.Text * 316800
		Else If secondUnit = "Foot/Second" Then
			etCon2.Text = etCon1.Text * 5280
		Else If secondUnit = "Mile/Minute" Then
			etCon2.Text = etCon1.Text * 60
		End If
	End If

	
End Sub

Private Sub btHome_Click
		
	StartActivity(Main)
	
End Sub