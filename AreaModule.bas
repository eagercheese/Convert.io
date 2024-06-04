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
	Activity.LoadLayout("AreaLayout")
	
	Spinner1.AddAll(Array("Square Meter", "Square Kilometer", "Square Centimeter", "Square Millimeter", "Square Micrometer", "Hectare", "Square Mile", "Square Yard", "Square Foot", "Square Inch", "Acre"))
	Spinner2.AddAll(Array("Square Meter", "Square Kilometer", "Square Centimeter", "Square Millimeter", "Square Micrometer", "Hectare", "Square Mile", "Square Yard", "Square Foot", "Square Inch", "Acre"))

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
	
	Else If firstUnit = "Square Meter" Then
		If secondUnit = "Square Kilometer" Then
			etCon2.Text = etCon1.Text * 0.000001
		Else If secondUnit = "Square Centimeter" Then
			etCon2.Text = etCon1.Text * 10000
		Else If secondUnit = "Square Millimeter" Then
			etCon2.Text = etCon1.Text * 1000000
		Else If secondUnit = "Square Micrometer" Then
			etCon2.Text = etCon1.Text * 1000000000000
		Else If secondUnit = "Hectare" Then
			etCon2.Text = etCon1.Text * 0.0001
		Else If secondUnit = "Square Mile" Then
			etCon2.Text = etCon1.Text * 0.0000003861021585
		Else If secondUnit = "Square Yard" Then
			etCon2.Text = etCon1.Text * 1.1959900463
		Else If secondUnit = "Square Foot" Then
			etCon2.Text = etCon1.Text * 10.763910471
		Else If secondUnit = "Square Inch" Then
			etCon2.Text = etCon1.Text * 1550.0031
		Else If secondUnit = "Acre" Then
			etCon2.Text = etCon1.Text * 0.0002471054
		End If
	
	Else If firstUnit = "Square Kilometer" Then
		If secondUnit = "Square Meter" Then
			etCon2.Text = etCon1.Text * 1000000
		Else If secondUnit = "Square Centimeter" Then
			etCon2.Text = etCon1.Text * 10000000000
		Else If secondUnit = "Square Millimeter" Then
			etCon2.Text = etCon1.Text * 1000000000000
		Else If secondUnit = "Square Micrometer" Then
			etCon2.Text = etCon1.Text * 1000000000000000000
		Else If secondUnit = "Hectare" Then
			etCon2.Text = etCon1.Text * 100
		Else If secondUnit = "Square Mile" Then
			etCon2.Text = etCon1.Text * 0.3861021585
		Else If secondUnit = "Square Yard" Then
			etCon2.Text = etCon1.Text * 1195990.0463
		Else If secondUnit = "Square Foot" Then
			etCon2.Text = etCon1.Text * 10763910.417
		Else If secondUnit = "Square Inch" Then
			etCon2.Text = etCon1.Text * 1550003100
		Else If secondUnit = "Acre" Then
			etCon2.Text = etCon1.Text * 247.10538147
		End If
		
	Else If firstUnit = "Square Centimeter" Then
		If secondUnit = "Square Meter" Then
			etCon2.Text = etCon1.Text * 0.0001
		Else If secondUnit = "Square Kilometer" Then
			etCon2.Text = etCon1.Text * 0.0000000001
		Else If secondUnit = "Square Millimeter" Then
			etCon2.Text = etCon1.Text * 100
		Else If secondUnit = "Square Micrometer" Then
			etCon2.Text = etCon1.Text * 100000000
		Else If secondUnit = "Hectare" Then
			etCon2.Text = etCon1.Text * 0.00000001
		Else If secondUnit = "Square Mile" Then
			etCon2.Text = etCon1.Text * 0.00000000003861021585
		Else If secondUnit = "Square Yard" Then
			etCon2.Text = etCon1.Text * 0.000119599
		Else If secondUnit = "Square Foot" Then
			etCon2.Text = etCon1.Text * 0.001076391
		Else If secondUnit = "Square Inch" Then
			etCon2.Text = etCon1.Text * 0.15500031
		Else If secondUnit = "Acre" Then
			etCon2.Text = etCon1.Text * 0.00000002471053814
		End If
			
	Else If firstUnit = "Square Millimeter" Then
		If secondUnit = "Square Meter" Then
			etCon2.Text = etCon1.Text * 0.000001
		Else If secondUnit = "Square Kilometer" Then
			etCon2.Text = etCon1.Text * 0.000000000001
		Else If secondUnit = "Square Centimeter" Then
			etCon2.Text = etCon1.Text * 0.01
		Else If secondUnit = "Square Micrometer" Then
			etCon2.Text = etCon1.Text * 1000000
		Else If secondUnit = "Hectare" Then
			etCon2.Text = etCon1.Text * 0.0000000001
		Else If secondUnit = "Square Mile" Then
			etCon2.Text = etCon1.Text * 0.0000000000003861021585
		Else If secondUnit = "Square Yard" Then
			etCon2.Text = etCon1.Text * 0.000001196
		Else If secondUnit = "Square Foot" Then
			etCon2.Text = etCon1.Text * 0.0000107639
		Else If secondUnit = "Square Inch" Then
			etCon2.Text = etCon1.Text * 0.0015500031
		Else If secondUnit = "Acre" Then
			etCon2.Text = etCon1.Text * 0.0000000002471053814
		End If
				
	Else If firstUnit = "Square Micrometer" Then
		If secondUnit = "Square Meter" Then
			etCon2.Text = etCon1.Text * 0.000000000001
		Else If secondUnit = "Square Kilometer" Then
			etCon2.Text = etCon1.Text * 0.000000000000000001
		Else If secondUnit = "Square Centimeter" Then
			etCon2.Text = etCon1.Text * 0.00000001
		Else If secondUnit = "Square Millimeter" Then
			etCon2.Text = etCon1.Text * 0.000001
		Else If secondUnit = "Hectare" Then
			etCon2.Text = etCon1.Text * 0.0000000000000001
		Else If secondUnit = "Square Mile" Then
			etCon2.Text = etCon1.Text * 0.0000000000000000003861021585
		Else If secondUnit = "Square Yard" Then
			etCon2.Text = etCon1.Text * 0.000000000001195990046
		Else If secondUnit = "Square Foot" Then
			etCon2.Text = etCon1.Text * 0.00000000001076391041
		Else If secondUnit = "Square Inch" Then
			etCon2.Text = etCon1.Text * 0.0000000015500031
		Else If secondUnit = "Acre" Then
			etCon2.Text = etCon1.Text * 0.0000000000000002471053814
		End If
					
	Else If firstUnit = "Hectare" Then
		If secondUnit = "Square Meter" Then
			etCon2.Text = etCon1.Text * 10000
		Else If secondUnit = "Square Kilometer" Then
			etCon2.Text = etCon1.Text * 0.01
		Else If secondUnit = "Square Centimeter" Then
			etCon2.Text = etCon1.Text * 100000000
		Else If secondUnit = "Square Millimeter" Then
			etCon2.Text = etCon1.Text * 10000000000
		Else If secondUnit = "Square Micrometer" Then
			etCon2.Text = etCon1.Text * 10000000000000000
		Else If secondUnit = "Square Mile" Then
			etCon2.Text = etCon1.Text * 0.0038610216
		Else If secondUnit = "Square Yard" Then
			etCon2.Text = etCon1.Text * 11959.900463
		Else If secondUnit = "Square Foot" Then
			etCon2.Text = etCon1.Text * 107639.10417
		Else If secondUnit = "Square Inch" Then
			etCon2.Text = etCon1.Text * 15500031
		Else If secondUnit = "Acre" Then
			etCon2.Text = etCon1.Text * 2.4710538147
		End If
						
	Else If firstUnit = "Square Mile" Then
		If secondUnit = "Square Meter" Then
			etCon2.Text = etCon1.Text * 2589988.1103
		Else If secondUnit = "Square Kilometer" Then
			etCon2.Text = etCon1.Text * 2.5899881103
		Else If secondUnit = "Square Centimeter" Then
			etCon2.Text = etCon1.Text * 25899881103
		Else If secondUnit = "Square Millimeter" Then
			etCon2.Text = etCon1.Text * 2589988110336
		Else If secondUnit = "Square Micrometer" Then
			etCon2.Text = etCon1.Text * 2589988110335972400
		Else If secondUnit = "Hectare" Then
			etCon2.Text = etCon1.Text * 258.99881103
		Else If secondUnit = "Square Yard" Then
			etCon2.Text = etCon1.Text * 3097600
		Else If secondUnit = "Square Foot" Then
			etCon2.Text = etCon1.Text * 27878400
		Else If secondUnit = "Square Inch" Then
			etCon2.Text = etCon1.Text * 4014489600
		Else If secondUnit = "Acre" Then
			etCon2.Text = etCon1.Text * 640
		End If
							
	Else If firstUnit = "Square Yard" Then
		If secondUnit = "Square Meter" Then
			etCon2.Text = etCon1.Text * 0.83612736
		Else If secondUnit = "Square Kilometer" Then
			etCon2.Text = etCon1.Text * 0.0000008361273599
		Else If secondUnit = "Square Centimeter" Then
			etCon2.Text = etCon1.Text * 8361.2736
		Else If secondUnit = "Square Millimeter" Then
			etCon2.Text = etCon1.Text * 836127.36
		Else If secondUnit = "Square Micrometer" Then
			etCon2.Text = etCon1.Text * 836127360000
		Else If secondUnit = "Hectare" Then
			etCon2.Text = etCon1.Text * 0.0000836127
		Else If secondUnit = "Square Mile" Then
			etCon2.Text = etCon1.Text * 0.0000003228305785
		Else If secondUnit = "Square Foot" Then
			etCon2.Text = etCon1.Text * 9
		Else If secondUnit = "Square Inch" Then
			etCon2.Text = etCon1.Text * 1296
		Else If secondUnit = "Acre" Then
			etCon2.Text = etCon1.Text * 0.0002066116
		End If
								
	Else If firstUnit = "Square Foot" Then
		If secondUnit = "Square Meter" Then
			etCon2.Text = etCon1.Text * 0.09290304
		Else If secondUnit = "Square Kilometer" Then
			etCon2.Text = etCon1.Text * 0.00000009290303999
		Else If secondUnit = "Square Centimeter" Then
			etCon2.Text = etCon1.Text * 929.0304
		Else If secondUnit = "Square Millimeter" Then
			etCon2.Text = etCon1.Text * 92903.04
		Else If secondUnit = "Square Micrometer" Then
			etCon2.Text = etCon1.Text * 92903040000
		Else If secondUnit = "Hectare" Then
			etCon2.Text = etCon1.Text * 0.000009290304
		Else If secondUnit = "Square Mile" Then
			etCon2.Text = etCon1.Text * 0.00000003587006427
		Else If secondUnit = "Square Yard" Then
			etCon2.Text = etCon1.Text * 0.1111111111
		Else If secondUnit = "Square Inch" Then
			etCon2.Text = etCon1.Text * 144
		Else If secondUnit = "Acre" Then
			etCon2.Text = etCon1.Text * 0.0000229568
		End If
									
	Else If firstUnit = "Square Inch" Then
		If secondUnit = "Square Meter" Then
			etCon2.Text = etCon1.Text * 0.00064516
		Else If secondUnit = "Square Kilometer" Then
			etCon2.Text = etCon1.Text * 0.00000000064516
		Else If secondUnit = "Square Centimeter" Then
			etCon2.Text = etCon1.Text * 6.4516
		Else If secondUnit = "Square Millimeter" Then
			etCon2.Text = etCon1.Text * 645.16
		Else If secondUnit = "Square Micrometer" Then
			etCon2.Text = etCon1.Text * 645160000
		Else If secondUnit = "Hectare" Then
			etCon2.Text = etCon1.Text * 0.000000064516
		Else If secondUnit = "Square Mile" Then
			etCon2.Text = etCon1.Text * 0.0000000002490976686
		Else If secondUnit = "Square Yard" Then
			etCon2.Text = etCon1.Text * 0.0007716049
		Else If secondUnit = "Square Foot" Then
			etCon2.Text = etCon1.Text * 0.0069444444
		Else If secondUnit = "Acre" Then
			etCon2.Text = etCon1.Text * 0.0000001594225079
		End If
										
	Else If firstUnit = "Acre" Then
		If secondUnit = "Square Meter" Then
			etCon2.Text = etCon1.Text * 4046.8564224
		Else If secondUnit = "Square Kilometer" Then
			etCon2.Text = etCon1.Text * 0.0040468564
		Else If secondUnit = "Square Centimeter" Then
			etCon2.Text = etCon1.Text * 40468564.224
		Else If secondUnit = "Square Millimeter" Then
			etCon2.Text = etCon1.Text * 4046856422.4
		Else If secondUnit = "Square Micrometer" Then
			etCon2.Text = etCon1.Text * 4046856422399924
		Else If secondUnit = "Hectare" Then
			etCon2.Text = etCon1.Text * 0.4046856422
		Else If secondUnit = "Square Mile" Then
			etCon2.Text = etCon1.Text * 0.0015625
		Else If secondUnit = "Square Yard" Then
			etCon2.Text = etCon1.Text * 4840
		Else If secondUnit = "Square Foot" Then
			etCon2.Text = etCon1.Text * 43560
		Else If secondUnit = "Square Inch" Then
			etCon2.Text = etCon1.Text * 6272640
		End If
	End If

End Sub

Private Sub Spinner1_ItemClick (Position As Int, Value As Object)
	
					
	Dim firstUnit As String = Spinner2.SelectedItem
	Dim secondUnit As String = Spinner1.SelectedItem
	
	If firstUnit = secondUnit Then
		etCon2.Text = etCon1.Text
	
	Else If firstUnit = "Square Meter" Then
		If secondUnit = "Square Kilometer" Then
			etCon2.Text = etCon1.Text * 0.000001
		Else If secondUnit = "Square Centimeter" Then
			etCon2.Text = etCon1.Text * 10000
		Else If secondUnit = "Square Millimeter" Then
			etCon2.Text = etCon1.Text * 1000000
		Else If secondUnit = "Square Micrometer" Then
			etCon2.Text = etCon1.Text * 1000000000000
		Else If secondUnit = "Hectare" Then
			etCon2.Text = etCon1.Text * 0.0001
		Else If secondUnit = "Square Mile" Then
			etCon2.Text = etCon1.Text * 0.0000003861021585
		Else If secondUnit = "Square Yard" Then
			etCon2.Text = etCon1.Text * 1.1959900463
		Else If secondUnit = "Square Foot" Then
			etCon2.Text = etCon1.Text * 10.763910471
		Else If secondUnit = "Square Inch" Then
			etCon2.Text = etCon1.Text * 1550.0031
		Else If secondUnit = "Acre" Then
			etCon2.Text = etCon1.Text * 0.0002471054
		End If
	
	Else If firstUnit = "Square Kilometer" Then
		If secondUnit = "Square Meter" Then
			etCon2.Text = etCon1.Text * 1000000
		Else If secondUnit = "Square Centimeter" Then
			etCon2.Text = etCon1.Text * 10000000000
		Else If secondUnit = "Square Millimeter" Then
			etCon2.Text = etCon1.Text * 1000000000000
		Else If secondUnit = "Square Micrometer" Then
			etCon2.Text = etCon1.Text * 1000000000000000000
		Else If secondUnit = "Hectare" Then
			etCon2.Text = etCon1.Text * 100
		Else If secondUnit = "Square Mile" Then
			etCon2.Text = etCon1.Text * 0.3861021585
		Else If secondUnit = "Square Yard" Then
			etCon2.Text = etCon1.Text * 1195990.0463
		Else If secondUnit = "Square Foot" Then
			etCon2.Text = etCon1.Text * 10763910.417
		Else If secondUnit = "Square Inch" Then
			etCon2.Text = etCon1.Text * 1550003100
		Else If secondUnit = "Acre" Then
			etCon2.Text = etCon1.Text * 247.10538147
		End If
		
	Else If firstUnit = "Square Centimeter" Then
		If secondUnit = "Square Meter" Then
			etCon2.Text = etCon1.Text * 0.0001
		Else If secondUnit = "Square Kilometer" Then
			etCon2.Text = etCon1.Text * 0.0000000001
		Else If secondUnit = "Square Millimeter" Then
			etCon2.Text = etCon1.Text * 100
		Else If secondUnit = "Square Micrometer" Then
			etCon2.Text = etCon1.Text * 100000000
		Else If secondUnit = "Hectare" Then
			etCon2.Text = etCon1.Text * 0.00000001
		Else If secondUnit = "Square Mile" Then
			etCon2.Text = etCon1.Text * 0.00000000003861021585
		Else If secondUnit = "Square Yard" Then
			etCon2.Text = etCon1.Text * 0.000119599
		Else If secondUnit = "Square Foot" Then
			etCon2.Text = etCon1.Text * 0.001076391
		Else If secondUnit = "Square Inch" Then
			etCon2.Text = etCon1.Text * 0.15500031
		Else If secondUnit = "Acre" Then
			etCon2.Text = etCon1.Text * 0.00000002471053814
		End If
			
	Else If firstUnit = "Square Millimeter" Then
		If secondUnit = "Square Meter" Then
			etCon2.Text = etCon1.Text * 0.000001
		Else If secondUnit = "Square Kilometer" Then
			etCon2.Text = etCon1.Text * 0.000000000001
		Else If secondUnit = "Square Centimeter" Then
			etCon2.Text = etCon1.Text * 0.01
		Else If secondUnit = "Square Micrometer" Then
			etCon2.Text = etCon1.Text * 1000000
		Else If secondUnit = "Hectare" Then
			etCon2.Text = etCon1.Text * 0.0000000001
		Else If secondUnit = "Square Mile" Then
			etCon2.Text = etCon1.Text * 0.0000000000003861021585
		Else If secondUnit = "Square Yard" Then
			etCon2.Text = etCon1.Text * 0.000001196
		Else If secondUnit = "Square Foot" Then
			etCon2.Text = etCon1.Text * 0.0000107639
		Else If secondUnit = "Square Inch" Then
			etCon2.Text = etCon1.Text * 0.0015500031
		Else If secondUnit = "Acre" Then
			etCon2.Text = etCon1.Text * 0.0000000002471053814
		End If
				
	Else If firstUnit = "Square Micrometer" Then
		If secondUnit = "Square Meter" Then
			etCon2.Text = etCon1.Text * 0.000000000001
		Else If secondUnit = "Square Kilometer" Then
			etCon2.Text = etCon1.Text * 0.000000000000000001
		Else If secondUnit = "Square Centimeter" Then
			etCon2.Text = etCon1.Text * 0.00000001
		Else If secondUnit = "Square Millimeter" Then
			etCon2.Text = etCon1.Text * 0.000001
		Else If secondUnit = "Hectare" Then
			etCon2.Text = etCon1.Text * 0.0000000000000001
		Else If secondUnit = "Square Mile" Then
			etCon2.Text = etCon1.Text * 0.0000000000000000003861021585
		Else If secondUnit = "Square Yard" Then
			etCon2.Text = etCon1.Text * 0.000000000001195990046
		Else If secondUnit = "Square Foot" Then
			etCon2.Text = etCon1.Text * 0.00000000001076391041
		Else If secondUnit = "Square Inch" Then
			etCon2.Text = etCon1.Text * 0.0000000015500031
		Else If secondUnit = "Acre" Then
			etCon2.Text = etCon1.Text * 0.0000000000000002471053814
		End If
					
	Else If firstUnit = "Hectare" Then
		If secondUnit = "Square Meter" Then
			etCon2.Text = etCon1.Text * 10000
		Else If secondUnit = "Square Kilometer" Then
			etCon2.Text = etCon1.Text * 0.01
		Else If secondUnit = "Square Centimeter" Then
			etCon2.Text = etCon1.Text * 100000000
		Else If secondUnit = "Square Millimeter" Then
			etCon2.Text = etCon1.Text * 10000000000
		Else If secondUnit = "Square Micrometer" Then
			etCon2.Text = etCon1.Text * 10000000000000000
		Else If secondUnit = "Square Mile" Then
			etCon2.Text = etCon1.Text * 0.0038610216
		Else If secondUnit = "Square Yard" Then
			etCon2.Text = etCon1.Text * 11959.900463
		Else If secondUnit = "Square Foot" Then
			etCon2.Text = etCon1.Text * 107639.10417
		Else If secondUnit = "Square Inch" Then
			etCon2.Text = etCon1.Text * 15500031
		Else If secondUnit = "Acre" Then
			etCon2.Text = etCon1.Text * 2.4710538147
		End If
						
	Else If firstUnit = "Square Mile" Then
		If secondUnit = "Square Meter" Then
			etCon2.Text = etCon1.Text * 2589988.1103
		Else If secondUnit = "Square Kilometer" Then
			etCon2.Text = etCon1.Text * 2.5899881103
		Else If secondUnit = "Square Centimeter" Then
			etCon2.Text = etCon1.Text * 25899881103
		Else If secondUnit = "Square Millimeter" Then
			etCon2.Text = etCon1.Text * 2589988110336
		Else If secondUnit = "Square Micrometer" Then
			etCon2.Text = etCon1.Text * 2589988110335972400
		Else If secondUnit = "Hectare" Then
			etCon2.Text = etCon1.Text * 258.99881103
		Else If secondUnit = "Square Yard" Then
			etCon2.Text = etCon1.Text * 3097600
		Else If secondUnit = "Square Foot" Then
			etCon2.Text = etCon1.Text * 27878400
		Else If secondUnit = "Square Inch" Then
			etCon2.Text = etCon1.Text * 4014489600
		Else If secondUnit = "Acre" Then
			etCon2.Text = etCon1.Text * 640
		End If
							
	Else If firstUnit = "Square Yard" Then
		If secondUnit = "Square Meter" Then
			etCon2.Text = etCon1.Text * 0.83612736
		Else If secondUnit = "Square Kilometer" Then
			etCon2.Text = etCon1.Text * 0.0000008361273599
		Else If secondUnit = "Square Centimeter" Then
			etCon2.Text = etCon1.Text * 8361.2736
		Else If secondUnit = "Square Millimeter" Then
			etCon2.Text = etCon1.Text * 836127.36
		Else If secondUnit = "Square Micrometer" Then
			etCon2.Text = etCon1.Text * 836127360000
		Else If secondUnit = "Hectare" Then
			etCon2.Text = etCon1.Text * 0.0000836127
		Else If secondUnit = "Square Mile" Then
			etCon2.Text = etCon1.Text * 0.0000003228305785
		Else If secondUnit = "Square Foot" Then
			etCon2.Text = etCon1.Text * 9
		Else If secondUnit = "Square Inch" Then
			etCon2.Text = etCon1.Text * 1296
		Else If secondUnit = "Acre" Then
			etCon2.Text = etCon1.Text * 0.0002066116
		End If
								
	Else If firstUnit = "Square Foot" Then
		If secondUnit = "Square Meter" Then
			etCon2.Text = etCon1.Text * 0.09290304
		Else If secondUnit = "Square Kilometer" Then
			etCon2.Text = etCon1.Text * 0.00000009290303999
		Else If secondUnit = "Square Centimeter" Then
			etCon2.Text = etCon1.Text * 929.0304
		Else If secondUnit = "Square Millimeter" Then
			etCon2.Text = etCon1.Text * 92903.04
		Else If secondUnit = "Square Micrometer" Then
			etCon2.Text = etCon1.Text * 92903040000
		Else If secondUnit = "Hectare" Then
			etCon2.Text = etCon1.Text * 0.000009290304
		Else If secondUnit = "Square Mile" Then
			etCon2.Text = etCon1.Text * 0.00000003587006427
		Else If secondUnit = "Square Yard" Then
			etCon2.Text = etCon1.Text * 0.1111111111
		Else If secondUnit = "Square Inch" Then
			etCon2.Text = etCon1.Text * 144
		Else If secondUnit = "Acre" Then
			etCon2.Text = etCon1.Text * 0.0000229568
		End If
									
	Else If firstUnit = "Square Inch" Then
		If secondUnit = "Square Meter" Then
			etCon2.Text = etCon1.Text * 0.00064516
		Else If secondUnit = "Square Kilometer" Then
			etCon2.Text = etCon1.Text * 0.00000000064516
		Else If secondUnit = "Square Centimeter" Then
			etCon2.Text = etCon1.Text * 6.4516
		Else If secondUnit = "Square Millimeter" Then
			etCon2.Text = etCon1.Text * 645.16
		Else If secondUnit = "Square Micrometer" Then
			etCon2.Text = etCon1.Text * 645160000
		Else If secondUnit = "Hectare" Then
			etCon2.Text = etCon1.Text * 0.000000064516
		Else If secondUnit = "Square Mile" Then
			etCon2.Text = etCon1.Text * 0.0000000002490976686
		Else If secondUnit = "Square Yard" Then
			etCon2.Text = etCon1.Text * 0.0007716049
		Else If secondUnit = "Square Foot" Then
			etCon2.Text = etCon1.Text * 0.0069444444
		Else If secondUnit = "Acre" Then
			etCon2.Text = etCon1.Text * 0.0000001594225079
		End If
										
	Else If firstUnit = "Acre" Then
		If secondUnit = "Square Meter" Then
			etCon2.Text = etCon1.Text * 4046.8564224
		Else If secondUnit = "Square Kilometer" Then
			etCon2.Text = etCon1.Text * 0.0040468564
		Else If secondUnit = "Square Centimeter" Then
			etCon2.Text = etCon1.Text * 40468564.224
		Else If secondUnit = "Square Millimeter" Then
			etCon2.Text = etCon1.Text * 4046856422.4
		Else If secondUnit = "Square Micrometer" Then
			etCon2.Text = etCon1.Text * 4046856422399924
		Else If secondUnit = "Hectare" Then
			etCon2.Text = etCon1.Text * 0.4046856422
		Else If secondUnit = "Square Mile" Then
			etCon2.Text = etCon1.Text * 0.0015625
		Else If secondUnit = "Square Yard" Then
			etCon2.Text = etCon1.Text * 4840
		Else If secondUnit = "Square Foot" Then
			etCon2.Text = etCon1.Text * 43560
		Else If secondUnit = "Square Inch" Then
			etCon2.Text = etCon1.Text * 6272640
		End If
	End If

	
End Sub

Private Sub btHome_Click
		
	StartActivity(Main)
	
End Sub