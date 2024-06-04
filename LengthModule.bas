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

	Private etCon1 As EditText
	Private etCon2 As EditText
	Private Spinner1 As Spinner
	Private Spinner2 As Spinner
	
	Private btHome As Button
	
End Sub

Sub Activity_Create(FirstTime As Boolean)
	Activity.LoadLayout("lengthLayout")

	Spinner1.AddAll(Array("Meters", "Feet", "Inches","Kilometers","Millimeters","Centimeters","Micrometers","Nanometers","Decimeters","Hectometers","Decameters","Miles","Yards","Nautical Miles"))
	Spinner2.AddAll(Array("Meters", "Feet", "Inches","Kilometers","Millimeters","Centimeters","Micrometers","Nanometers","Decimeters","Hectometers","Decameters","Miles","Yards","Nautical Miles"))

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
    
Else If firstUnit = "Meters" Then
    If secondUnit = "Feet" Then
		etCon2.Text = etCon1.Text * 3.280839895
    Else If secondUnit = "Inches" Then
        etCon2.Text = etCon1.Text * 39.37
    Else If secondUnit = "Kilometers" Then
        etCon2.Text = etCon1.Text / 1000
    Else If secondUnit = "Millimeters" Then
        etCon2.Text = etCon1.Text * 1000
    Else If secondUnit = "Centimeters" Then
        etCon2.Text = etCon1.Text * 100
    Else If secondUnit = "Micrometers" Then
        etCon2.Text = etCon1.Text * 1000000
    Else If secondUnit = "Nanometers" Then
        etCon2.Text = etCon1.Text * 1000000000
    Else If secondUnit = "Decimeters" Then
        etCon2.Text = etCon1.Text * 10
    Else If secondUnit = "Hectometers" Then
        etCon2.Text = etCon1.Text / 100
    Else If secondUnit = "Decameters" Then
        etCon2.Text = etCon1.Text / 10
    Else If secondUnit = "Miles" Then
        etCon2.Text = etCon1.Text * 0.000621371
    Else If secondUnit = "Yards" Then
        etCon2.Text = etCon1.Text * 1.094
    Else If secondUnit = "Nautical Miles" Then
        etCon2.Text = etCon1.Text * 0.0005399568
    End If
    
Else If firstUnit = "Feet" Then
    If secondUnit = "Meters" Then
        etCon2.Text = etCon1.Text / 3.281
    Else If secondUnit = "Inches" Then
        etCon2.Text = etCon1.Text * 12
    Else If secondUnit = "Kilometers" Then
        etCon2.Text = etCon1.Text / 3281
    Else If secondUnit = "Millimeters" Then
        etCon2.Text = etCon1.Text * 304.8
    Else If secondUnit = "Centimeters" Then
        etCon2.Text = etCon1.Text * 30.48
    Else If secondUnit = "Micrometers" Then
        etCon2.Text = etCon1.Text * 304800
    Else If secondUnit = "Nanometers" Then
        etCon2.Text = etCon1.Text * 0.00000003408
    Else If secondUnit = "Decimeters" Then
        etCon2.Text = etCon1.Text * 3.048
    Else If secondUnit = "Hectometers" Then
        etCon2.Text = etCon1.Text / 328.1
    Else If secondUnit = "Decameters" Then
        etCon2.Text = etCon1.Text / 328.1
    Else If secondUnit = "Miles" Then
        etCon2.Text = etCon1.Text * 0.000189394
    Else If secondUnit = "Yards" Then
        etCon2.Text = etCon1.Text / 3
    Else If secondUnit = "Nautical Miles" Then
        etCon2.Text = etCon1.Text * 0.0001645788
    End If
    
Else If firstUnit = "Inches" Then
    If secondUnit = "Meters" Then
        etCon2.Text = etCon1.Text / 39.37
    Else If secondUnit = "Feet" Then
        etCon2.Text = etCon1.Text / 12
    Else If secondUnit = "Kilometers" Then
        etCon2.Text = etCon1.Text / 39370.1
    Else If secondUnit = "Millimeters" Then
        etCon2.Text = etCon1.Text * 25.4
    Else If secondUnit = "Centimeters" Then
        etCon2.Text = etCon1.Text * 2.54
    Else If secondUnit = "Micrometers" Then
        etCon2.Text = etCon1.Text * 25400
    Else If secondUnit = "Nanometers" Then
        etCon2.Text = etCon1.Text * 25400000
    Else If secondUnit = "Decimeters" Then
        etCon2.Text = etCon1.Text * 0.254
    Else If secondUnit = "Hectometers" Then
        etCon2.Text = etCon1.Text / 393700
    Else If secondUnit = "Decameters" Then
        etCon2.Text = etCon1.Text / 39370.1
    Else If secondUnit = "Miles" Then
        etCon2.Text = etCon1.Text / 63360
    Else If secondUnit = "Yards" Then
        etCon2.Text = etCon1.Text / 36
    Else If secondUnit = "Nautical Miles" Then
        etCon2.Text = etCon1.Text / 72910
    End If

Else If firstUnit = "Kilometers" Then
    If secondUnit = "Meters" Then
        etCon2.Text = etCon1.Text * 1000
    Else If secondUnit = "Feet" Then
        etCon2.Text = etCon1.Text * 3280.84
    Else If secondUnit = "Millimeters" Then
        etCon2.Text = etCon1.Text * 1000000
    Else If secondUnit = "Inches" Then
        etCon2.Text = etCon1.Text * 39370.1
    Else If secondUnit = "Centimeters" Then
        etCon2.Text = etCon1.Text * 100000
    Else If secondUnit = "Micrometers" Then
        etCon2.Text = etCon1.Text * 1000000000
    Else If secondUnit = "Nanometers" Then
        etCon2.Text = etCon1.Text * 1000000000000
    Else If secondUnit = "Decimeters" Then
        etCon2.Text = etCon1.Text * 10000
    Else If secondUnit = "Hectometers" Then
        etCon2.Text = etCon1.Text * 10
    Else If secondUnit = "Decameters" Then
        etCon2.Text = etCon1.Text * 100
    Else If secondUnit = "Miles" Then
        etCon2.Text = etCon1.Text / 1.609
    Else If secondUnit = "Yards" Then
        etCon2.Text = etCon1.Text * 1093.61
    Else If secondUnit = "Nautical Miles" Then
        etCon2.Text = etCon1.Text / 1.852
    End If

Else If firstUnit = "Millimeters" Then
    If secondUnit = "Meters" Then
        etCon2.Text = etCon1.Text / 1000
    Else If secondUnit = "Feet" Then
        etCon2.Text = etCon1.Text / 304.8
    Else If secondUnit = "Kilometers" Then
        etCon2.Text = etCon1.Text / 1000000
    Else If secondUnit = "Inches" Then
        etCon2.Text = etCon1.Text / 25.4
    Else If secondUnit = "Centimeters" Then
        etCon2.Text = etCon1.Text / 10
    Else If secondUnit = "Micrometers" Then
        etCon2.Text = etCon1.Text * 1000
    Else If secondUnit = "Nanometers" Then
        etCon2.Text = etCon1.Text * 1000000
    Else If secondUnit = "Decimeters" Then
        etCon2.Text = etCon1.Text / 100
    Else If secondUnit = "Hectometers" Then
        etCon2.Text = etCon1.Text / 100000
    Else If secondUnit = "Decameters" Then
        etCon2.Text = etCon1.Text / 10000
    Else If secondUnit = "Miles" Then
        etCon2.Text = etCon1.Text * 1609000
    Else If secondUnit = "Yards" Then
        etCon2.Text = etCon1.Text / 914.4
    Else If secondUnit = "Nautical Miles" Then
        etCon2.Text = etCon1.Text * 1852000
    End If

Else If firstUnit = "Centimeters" Then
    If secondUnit = "Meters" Then
        etCon2.Text = etCon1.Text / 100
    Else If secondUnit = "Feet" Then
        etCon2.Text = etCon1.Text / 30.48
    Else If secondUnit = "Kilometers" Then
        etCon2.Text = etCon1.Text / 100000
    Else If secondUnit = "Inches" Then
        etCon2.Text = etCon1.Text / 2.54
    Else If secondUnit = "Millimeters" Then
        etCon2.Text = etCon1.Text * 10
    Else If secondUnit = "Micrometers" Then
        etCon2.Text = etCon1.Text * 10000
    Else If secondUnit = "Nanometers" Then
        etCon2.Text = etCon1.Text * 10000000
    Else If secondUnit = "Decimeters" Then
        etCon2.Text = etCon1.Text / 10
    Else If secondUnit = "Hectometers" Then
        etCon2.Text = etCon1.Text / 10000
    Else If secondUnit = "Decameters" Then
        etCon2.Text = etCon1.Text / 1000
    Else If secondUnit = "Miles" Then
        etCon2.Text = etCon1.Text / 160900
    Else If secondUnit = "Yards" Then
        etCon2.Text = etCon1.Text / 91.44
    Else If secondUnit = "Nautical Miles" Then
        etCon2.Text = etCon1.Text / 185200
    End If

Else If firstUnit = "Micrometers" Then
    If secondUnit = "Meters" Then
        etCon2.Text = etCon1.Text / 1000000
    Else If secondUnit = "Feet" Then
        etCon2.Text = etCon1.Text / 304800
    Else If secondUnit = "Kilometers" Then
        etCon2.Text = etCon1.Text / 1000000000
    Else If secondUnit = "Inches" Then
        etCon2.Text = etCon1.Text / 25400
    Else If secondUnit = "Centimeters" Then
        etCon2.Text = etCon1.Text / 10000
    Else If secondUnit = "Millimeters" Then
        etCon2.Text = etCon1.Text / 1000
    Else If secondUnit = "Nanometers" Then
        etCon2.Text = etCon1.Text * 1000
    Else If secondUnit = "Decimeters" Then
        etCon2.Text = etCon1.Text / 100000
    Else If secondUnit = "Hectometers" Then
        etCon2.Text = etCon1.Text / 100000000
    Else If secondUnit = "Decameters" Then
        etCon2.Text = etCon1.Text / 10000000
    Else If secondUnit = "Miles" Then
        etCon2.Text = etCon1.Text / 1609000000
    Else If secondUnit = "Yards" Then
        etCon2.Text = etCon1.Text / 914400
    Else If secondUnit = "Nautical Miles" Then
        etCon2.Text = etCon1.Text / 1852000000
    End If

Else If firstUnit = "Nanometers" Then
    If secondUnit = "Meters" Then
        etCon2.Text = etCon1.Text / 1000000000
    Else If secondUnit = "Feet" Then
        etCon2.Text = etCon1.Text * 0.000000003280839895
    Else If secondUnit = "Kilometers" Then
        etCon2.Text = etCon1.Text * 0.00000000001
    Else If secondUnit = "Inches" Then
        etCon2.Text = etCon1.Text * 0.00000003937007874
    Else If secondUnit = "Centimeters" Then
        etCon2.Text = etCon1.Text * 0.0000001
    Else If secondUnit = "Micrometers" Then
        etCon2.Text = etCon1.Text * 0.001
    Else If secondUnit = "Millimeters" Then
        etCon2.Text = etCon1.Text * 0.000001
    Else If secondUnit = "Decimeters" Then
        etCon2.Text = etCon1.Text / 100000000
    Else If secondUnit = "Hectometers" Then
        etCon2.Text = etCon1.Text / 100000000000
    Else If secondUnit = "Decameters" Then
        etCon2.Text = etCon1.Text / 10000000000
    Else If secondUnit = "Miles" Then
        etCon2.Text = etCon1.Text * 0.0000000000006213711922
    Else If secondUnit = "Yards" Then
        etCon2.Text = etCon1.Text * 0.000000001093613298
    Else If secondUnit = "Nautical Miles" Then
        etCon2.Text = etCon1.Text * 0.0000000000005399568034
    End If

Else If firstUnit = "Decimeters" Then
    If secondUnit = "Meters" Then
        etCon2.Text = etCon1.Text * 0.1
    Else If secondUnit = "Feet" Then
        etCon2.Text = etCon1.Text * 0.3280839895
    Else If secondUnit = "Kilometers" Then
        etCon2.Text = etCon1.Text * 0.0001
    Else If secondUnit = "Inches" Then
        etCon2.Text = etCon1.Text * 3.937007874
    Else If secondUnit = "Centimeters" Then
        etCon2.Text = etCon1.Text * 10
    Else If secondUnit = "Micrometers" Then
        etCon2.Text = etCon1.Text * 100000
    Else If secondUnit = "Nanometers" Then
        etCon2.Text = etCon1.Text * 100000000
    Else If secondUnit = "Millimeters" Then
        etCon2.Text = etCon1.Text * 100
    Else If secondUnit = "Hectometers" Then
        etCon2.Text = etCon1.Text * 0.001
    Else If secondUnit = "Decameters" Then
        etCon2.Text = etCon1.Text * 0.1
    Else If secondUnit = "Miles" Then
        etCon2.Text = etCon1.Text * 0.0000621371
    Else If secondUnit = "Yards" Then
        etCon2.Text = etCon1.Text * 0.1093613298
    Else If secondUnit = "Nautical Miles" Then
        etCon2.Text = etCon1.Text * 0.0000539957
    End If

Else If firstUnit = "Hectometers" Then
    If secondUnit = "Meters" Then
        etCon2.Text = etCon1.Text * 100
    Else If secondUnit = "Feet" Then
        etCon2.Text = etCon1.Text * 328.0389895
    Else If secondUnit = "Kilometers" Then
        etCon2.Text = etCon1.Text * 0.1
    Else If secondUnit = "Inches" Then
        etCon2.Text = etCon1.Text * 3937.007874
    Else If secondUnit = "Centimeters" Then
        etCon2.Text = etCon1.Text * 10000
    Else If secondUnit = "Micrometers" Then
        etCon2.Text = etCon1.Text * 100000000
    Else If secondUnit = "Nanometers" Then
        etCon2.Text = etCon1.Text * 100000000000
    Else If secondUnit = "Decimeters" Then
        etCon2.Text = etCon1.Text * 1000
    Else If secondUnit = "Millimeters" Then
        etCon2.Text = etCon1.Text * 100000
    Else If secondUnit = "Decameters" Then
        etCon2.Text = etCon1.Text * 10
    Else If secondUnit = "Miles" Then
        etCon2.Text = etCon1.Text * 0.0621371192
    Else If secondUnit = "Yards" Then
        etCon2.Text = etCon1.Text * 109.36132983
    Else If secondUnit = "Nautical Miles" Then
        etCon2.Text = etCon1.Text * 0.0539956803
    End If

Else If firstUnit = "Decameters" Then
    If secondUnit = "Meters" Then
        etCon2.Text = etCon1.Text * 10
    Else If secondUnit = "Feet" Then
        etCon2.Text = etCon1.Text *32.80839895
    Else If secondUnit = "Kilometers" Then
        etCon2.Text = etCon1.Text * 0.01
    Else If secondUnit = "Inches" Then
        etCon2.Text = etCon1.Text * 393.700784
    Else If secondUnit = "Centimeters" Then
        etCon2.Text = etCon1.Text * 1000
    Else If secondUnit = "Micrometers" Then
        etCon2.Text = etCon1.Text * 10000000
    Else If secondUnit = "Nanometers" Then
        etCon2.Text = etCon1.Text * 10000000000
    Else If secondUnit = "Decimeters" Then
        etCon2.Text = etCon1.Text * 100
    Else If secondUnit = "Millimeters" Then
        etCon2.Text = etCon1.Text * 10000
    Else If secondUnit = "Hectometers" Then
        etCon2.Text = etCon1.Text * 0.1
    Else If secondUnit = "Miles" Then
        etCon2.Text = etCon1.Text * 0.0062137119
    Else If secondUnit = "Yards" Then
        etCon2.Text = etCon1.Text * 10.936132983
    Else If secondUnit = "Nautical Miles" Then
        etCon2.Text = etCon1.Text * 0.005399568
    End If

Else If firstUnit = "Miles" Then
    If secondUnit = "Meters" Then
        etCon2.Text = etCon1.Text * 1609.344
    Else If secondUnit = "Feet" Then
        etCon2.Text = etCon1.Text * 5280
    Else If secondUnit = "Kilometers" Then
        etCon2.Text = etCon1.Text * 1.609344
    Else If secondUnit = "Inches" Then
        etCon2.Text = etCon1.Text * 63360
    Else If secondUnit = "Centimeters" Then
        etCon2.Text = etCon1.Text * 1609344
    Else If secondUnit = "Micrometers" Then
        etCon2.Text = etCon1.Text * 1609344000
    Else If secondUnit = "Nanometers" Then
        etCon2.Text = etCon1.Text * 1609344000000
    Else If secondUnit = "Decimeters" Then
        etCon2.Text = etCon1.Text * 16093.44
    Else If secondUnit = "Millimeters" Then
        etCon2.Text = etCon1.Text * 1609344
    Else If secondUnit = "Decameters" Then
        etCon2.Text = etCon1.Text * 160.9344
    Else If secondUnit = "Hectometers" Then
        etCon2.Text = etCon1.Text * 16.09344
    Else If secondUnit = "Yards" Then
        etCon2.Text = etCon1.Text * 1760
    Else If secondUnit = "Nautical Miles" Then
        etCon2.Text = etCon1.Text * 0.868976
    End If

Else If firstUnit = "Yards" Then
    If secondUnit = "Meters" Then
        etCon2.Text = etCon1.Text * 0.9144
    Else If secondUnit = "Feet" Then
        etCon2.Text = etCon1.Text * 3
    Else If secondUnit = "Kilometers" Then
        etCon2.Text = etCon1.Text * 0.0009144
    Else If secondUnit = "Inches" Then
        etCon2.Text = etCon1.Text * 36
    Else If secondUnit = "Centimeters" Then
        etCon2.Text = etCon1.Text * 91.44
    Else If secondUnit = "Micrometers" Then
        etCon2.Text = etCon1.Text * 914400
    Else If secondUnit = "Nanometers" Then
        etCon2.Text = etCon1.Text * 914400000
    Else If secondUnit = "Decimeters" Then
        etCon2.Text = etCon1.Text * 9.144
    Else If secondUnit = "Millimeters" Then
        etCon2.Text = etCon1.Text * 914.4
    Else If secondUnit = "Decameters" Then
        etCon2.Text = etCon1.Text * 0.09144
    Else If secondUnit = "Hectometers" Then
        etCon2.Text = etCon1.Text * 0.009144
    Else If secondUnit = "Miles" Then
        etCon2.Text = etCon1.Text / 1760
    Else If secondUnit = "Nautical Miles" Then
        etCon2.Text = etCon1.Text * 0.000493737
    End If


Else If firstUnit = "Nautical Miles" Then
    If secondUnit = "Meters" Then
        etCon2.Text = etCon1.Text * 1852
    Else If secondUnit = "Feet" Then
        etCon2.Text = etCon1.Text * 6076.12
    Else If secondUnit = "Kilometers" Then
        etCon2.Text = etCon1.Text * 1.852
    Else If secondUnit = "Inches" Then
        etCon2.Text = etCon1.Text * 72913.4
    Else If secondUnit = "Centimeters" Then
        etCon2.Text = etCon1.Text * 185200
    Else If secondUnit = "Micrometers" Then
        etCon2.Text = etCon1.Text * 1852000000
    Else If secondUnit = "Nanometers" Then
        etCon2.Text = etCon1.Text * 1852000000000
    Else If secondUnit = "Decimeters" Then
        etCon2.Text = etCon1.Text * 18520
    Else If secondUnit = "Millimeters" Then
        etCon2.Text = etCon1.Text * 1852000
    Else If secondUnit = "Decameters" Then
        etCon2.Text = etCon1.Text * 185.2
		Else If secondUnit = "Hectometers" Then
			etCon2.Text = etCon1.Text * 18.52
		Else If secondUnit = "Yards" Then
			etCon2.Text = etCon1.Text * 2025.37
		Else If secondUnit = "Miles" Then
			etCon2.Text = etCon1.Text * 1.15078
		End If

	End If


End Sub

Private Sub Spinner1_ItemClick (Position As Int, Value As Object)

	Dim firstUnit As String = Spinner2.SelectedItem
	Dim secondUnit As String = Spinner1.SelectedItem

	If firstUnit = secondUnit Then
		etCon2.Text = etCon1.Text
    
	Else If firstUnit = "Meters" Then
		If secondUnit = "Feet" Then
			etCon2.Text = etCon1.Text * 3.280839895
		Else If secondUnit = "Inches" Then
			etCon2.Text = etCon1.Text * 39.37
		Else If secondUnit = "Kilometers" Then
			etCon2.Text = etCon1.Text / 1000
		Else If secondUnit = "Millimeters" Then
			etCon2.Text = etCon1.Text * 1000
		Else If secondUnit = "Centimeters" Then
			etCon2.Text = etCon1.Text * 100
		Else If secondUnit = "Micrometers" Then
			etCon2.Text = etCon1.Text * 1000000
		Else If secondUnit = "Nanometers" Then
			etCon2.Text = etCon1.Text * 1000000000
		Else If secondUnit = "Decimeters" Then
			etCon2.Text = etCon1.Text * 10
		Else If secondUnit = "Hectometers" Then
			etCon2.Text = etCon1.Text / 100
		Else If secondUnit = "Decameters" Then
			etCon2.Text = etCon1.Text / 10
		Else If secondUnit = "Miles" Then
			etCon2.Text = etCon1.Text * 0.000621371
		Else If secondUnit = "Yards" Then
			etCon2.Text = etCon1.Text * 1.094
		Else If secondUnit = "Nautical Miles" Then
			etCon2.Text = etCon1.Text * 0.0005399568
		End If
    
	Else If firstUnit = "Feet" Then
		If secondUnit = "Meters" Then
			etCon2.Text = etCon1.Text / 3.281
		Else If secondUnit = "Inches" Then
			etCon2.Text = etCon1.Text * 12
		Else If secondUnit = "Kilometers" Then
			etCon2.Text = etCon1.Text / 3281
		Else If secondUnit = "Millimeters" Then
			etCon2.Text = etCon1.Text * 304.8
		Else If secondUnit = "Centimeters" Then
			etCon2.Text = etCon1.Text * 30.48
		Else If secondUnit = "Micrometers" Then
			etCon2.Text = etCon1.Text * 304800
		Else If secondUnit = "Nanometers" Then
			etCon2.Text = etCon1.Text * 0.00000003408
		Else If secondUnit = "Decimeters" Then
			etCon2.Text = etCon1.Text * 3.048
		Else If secondUnit = "Hectometers" Then
			etCon2.Text = etCon1.Text / 328.1
		Else If secondUnit = "Decameters" Then
			etCon2.Text = etCon1.Text / 328.1
		Else If secondUnit = "Miles" Then
			etCon2.Text = etCon1.Text * 0.000189394
		Else If secondUnit = "Yards" Then
			etCon2.Text = etCon1.Text / 3
		Else If secondUnit = "Nautical Miles" Then
			etCon2.Text = etCon1.Text * 0.0001645788
		End If
    
	Else If firstUnit = "Inches" Then
		If secondUnit = "Meters" Then
			etCon2.Text = etCon1.Text / 39.37
		Else If secondUnit = "Feet" Then
			etCon2.Text = etCon1.Text / 12
		Else If secondUnit = "Kilometers" Then
			etCon2.Text = etCon1.Text / 39370.1
		Else If secondUnit = "Millimeters" Then
			etCon2.Text = etCon1.Text * 25.4
		Else If secondUnit = "Centimeters" Then
			etCon2.Text = etCon1.Text * 2.54
		Else If secondUnit = "Micrometers" Then
			etCon2.Text = etCon1.Text * 25400
		Else If secondUnit = "Nanometers" Then
			etCon2.Text = etCon1.Text * 25400000
		Else If secondUnit = "Decimeters" Then
			etCon2.Text = etCon1.Text * 0.254
		Else If secondUnit = "Hectometers" Then
			etCon2.Text = etCon1.Text / 393700
		Else If secondUnit = "Decameters" Then
			etCon2.Text = etCon1.Text / 39370.1
		Else If secondUnit = "Miles" Then
			etCon2.Text = etCon1.Text / 63360
		Else If secondUnit = "Yards" Then
			etCon2.Text = etCon1.Text / 36
		Else If secondUnit = "Nautical Miles" Then
			etCon2.Text = etCon1.Text / 72910
		End If

	Else If firstUnit = "Kilometers" Then
		If secondUnit = "Meters" Then
			etCon2.Text = etCon1.Text * 1000
		Else If secondUnit = "Feet" Then
			etCon2.Text = etCon1.Text * 3280.84
		Else If secondUnit = "Millimeters" Then
			etCon2.Text = etCon1.Text * 1000000
		Else If secondUnit = "Inches" Then
			etCon2.Text = etCon1.Text * 39370.1
		Else If secondUnit = "Centimeters" Then
			etCon2.Text = etCon1.Text * 100000
		Else If secondUnit = "Micrometers" Then
			etCon2.Text = etCon1.Text * 1000000000
		Else If secondUnit = "Nanometers" Then
			etCon2.Text = etCon1.Text * 1000000000000
		Else If secondUnit = "Decimeters" Then
			etCon2.Text = etCon1.Text * 10000
		Else If secondUnit = "Hectometers" Then
			etCon2.Text = etCon1.Text * 10
		Else If secondUnit = "Decameters" Then
			etCon2.Text = etCon1.Text * 100
		Else If secondUnit = "Miles" Then
			etCon2.Text = etCon1.Text / 1.609
		Else If secondUnit = "Yards" Then
			etCon2.Text = etCon1.Text * 1093.61
		Else If secondUnit = "Nautical Miles" Then
			etCon2.Text = etCon1.Text / 1.852
		End If

	Else If firstUnit = "Millimeters" Then
		If secondUnit = "Meters" Then
			etCon2.Text = etCon1.Text / 1000
		Else If secondUnit = "Feet" Then
			etCon2.Text = etCon1.Text / 304.8
		Else If secondUnit = "Kilometers" Then
			etCon2.Text = etCon1.Text / 1000000
		Else If secondUnit = "Inches" Then
			etCon2.Text = etCon1.Text / 25.4
		Else If secondUnit = "Centimeters" Then
			etCon2.Text = etCon1.Text / 10
		Else If secondUnit = "Micrometers" Then
			etCon2.Text = etCon1.Text * 1000
		Else If secondUnit = "Nanometers" Then
			etCon2.Text = etCon1.Text * 1000000
		Else If secondUnit = "Decimeters" Then
			etCon2.Text = etCon1.Text / 100
		Else If secondUnit = "Hectometers" Then
			etCon2.Text = etCon1.Text / 100000
		Else If secondUnit = "Decameters" Then
			etCon2.Text = etCon1.Text / 10000
		Else If secondUnit = "Miles" Then
			etCon2.Text = etCon1.Text * 1609000
		Else If secondUnit = "Yards" Then
			etCon2.Text = etCon1.Text / 914.4
		Else If secondUnit = "Nautical Miles" Then
			etCon2.Text = etCon1.Text * 1852000
		End If

	Else If firstUnit = "Centimeters" Then
		If secondUnit = "Meters" Then
			etCon2.Text = etCon1.Text / 100
		Else If secondUnit = "Feet" Then
			etCon2.Text = etCon1.Text / 30.48
		Else If secondUnit = "Kilometers" Then
			etCon2.Text = etCon1.Text / 100000
		Else If secondUnit = "Inches" Then
			etCon2.Text = etCon1.Text / 2.54
		Else If secondUnit = "Millimeters" Then
			etCon2.Text = etCon1.Text * 10
		Else If secondUnit = "Micrometers" Then
			etCon2.Text = etCon1.Text * 10000
		Else If secondUnit = "Nanometers" Then
			etCon2.Text = etCon1.Text * 10000000
		Else If secondUnit = "Decimeters" Then
			etCon2.Text = etCon1.Text / 10
		Else If secondUnit = "Hectometers" Then
			etCon2.Text = etCon1.Text / 10000
		Else If secondUnit = "Decameters" Then
			etCon2.Text = etCon1.Text / 1000
		Else If secondUnit = "Miles" Then
			etCon2.Text = etCon1.Text / 160900
		Else If secondUnit = "Yards" Then
			etCon2.Text = etCon1.Text / 91.44
		Else If secondUnit = "Nautical Miles" Then
			etCon2.Text = etCon1.Text / 185200
		End If

	Else If firstUnit = "Micrometers" Then
		If secondUnit = "Meters" Then
			etCon2.Text = etCon1.Text / 1000000
		Else If secondUnit = "Feet" Then
			etCon2.Text = etCon1.Text / 304800
		Else If secondUnit = "Kilometers" Then
			etCon2.Text = etCon1.Text / 1000000000
		Else If secondUnit = "Inches" Then
			etCon2.Text = etCon1.Text / 25400
		Else If secondUnit = "Centimeters" Then
			etCon2.Text = etCon1.Text / 10000
		Else If secondUnit = "Millimeters" Then
			etCon2.Text = etCon1.Text / 1000
		Else If secondUnit = "Nanometers" Then
			etCon2.Text = etCon1.Text * 1000
		Else If secondUnit = "Decimeters" Then
			etCon2.Text = etCon1.Text / 100000
		Else If secondUnit = "Hectometers" Then
			etCon2.Text = etCon1.Text / 100000000
		Else If secondUnit = "Decameters" Then
			etCon2.Text = etCon1.Text / 10000000
		Else If secondUnit = "Miles" Then
			etCon2.Text = etCon1.Text / 1609000000
		Else If secondUnit = "Yards" Then
			etCon2.Text = etCon1.Text / 914400
		Else If secondUnit = "Nautical Miles" Then
			etCon2.Text = etCon1.Text / 1852000000
		End If

	Else If firstUnit = "Nanometers" Then
		If secondUnit = "Meters" Then
			etCon2.Text = etCon1.Text / 1000000000
		Else If secondUnit = "Feet" Then
			etCon2.Text = etCon1.Text * 0.000000003280839895
		Else If secondUnit = "Kilometers" Then
			etCon2.Text = etCon1.Text * 0.00000000001
		Else If secondUnit = "Inches" Then
			etCon2.Text = etCon1.Text * 0.00000003937007874
		Else If secondUnit = "Centimeters" Then
			etCon2.Text = etCon1.Text * 0.0000001
		Else If secondUnit = "Micrometers" Then
			etCon2.Text = etCon1.Text * 0.001
		Else If secondUnit = "Millimeters" Then
			etCon2.Text = etCon1.Text * 0.000001
		Else If secondUnit = "Decimeters" Then
			etCon2.Text = etCon1.Text / 100000000
		Else If secondUnit = "Hectometers" Then
			etCon2.Text = etCon1.Text / 100000000000
		Else If secondUnit = "Decameters" Then
			etCon2.Text = etCon1.Text / 10000000000
		Else If secondUnit = "Miles" Then
			etCon2.Text = etCon1.Text * 0.0000000000006213711922
		Else If secondUnit = "Yards" Then
			etCon2.Text = etCon1.Text * 0.000000001093613298
		Else If secondUnit = "Nautical Miles" Then
			etCon2.Text = etCon1.Text * 0.0000000000005399568034
		End If

	Else If firstUnit = "Decimeters" Then
		If secondUnit = "Meters" Then
			etCon2.Text = etCon1.Text * 0.1
		Else If secondUnit = "Feet" Then
			etCon2.Text = etCon1.Text * 0.3280839895
		Else If secondUnit = "Kilometers" Then
			etCon2.Text = etCon1.Text * 0.0001
		Else If secondUnit = "Inches" Then
			etCon2.Text = etCon1.Text * 3.937007874
		Else If secondUnit = "Centimeters" Then
			etCon2.Text = etCon1.Text * 10
		Else If secondUnit = "Micrometers" Then
			etCon2.Text = etCon1.Text * 100000
		Else If secondUnit = "Nanometers" Then
			etCon2.Text = etCon1.Text * 100000000
		Else If secondUnit = "Millimeters" Then
			etCon2.Text = etCon1.Text * 100
		Else If secondUnit = "Hectometers" Then
			etCon2.Text = etCon1.Text * 0.001
		Else If secondUnit = "Decameters" Then
			etCon2.Text = etCon1.Text * 0.1
		Else If secondUnit = "Miles" Then
			etCon2.Text = etCon1.Text * 0.0000621371
		Else If secondUnit = "Yards" Then
			etCon2.Text = etCon1.Text * 0.1093613298
		Else If secondUnit = "Nautical Miles" Then
			etCon2.Text = etCon1.Text * 0.0000539957
		End If

	Else If firstUnit = "Hectometers" Then
		If secondUnit = "Meters" Then
			etCon2.Text = etCon1.Text * 100
		Else If secondUnit = "Feet" Then
			etCon2.Text = etCon1.Text * 328.0389895
		Else If secondUnit = "Kilometers" Then
			etCon2.Text = etCon1.Text * 0.1
		Else If secondUnit = "Inches" Then
			etCon2.Text = etCon1.Text * 3937.007874
		Else If secondUnit = "Centimeters" Then
			etCon2.Text = etCon1.Text * 10000
		Else If secondUnit = "Micrometers" Then
			etCon2.Text = etCon1.Text * 100000000
		Else If secondUnit = "Nanometers" Then
			etCon2.Text = etCon1.Text * 100000000000
		Else If secondUnit = "Decimeters" Then
			etCon2.Text = etCon1.Text * 1000
		Else If secondUnit = "Millimeters" Then
			etCon2.Text = etCon1.Text * 100000
		Else If secondUnit = "Decameters" Then
			etCon2.Text = etCon1.Text * 10
		Else If secondUnit = "Miles" Then
			etCon2.Text = etCon1.Text * 0.0621371192
		Else If secondUnit = "Yards" Then
			etCon2.Text = etCon1.Text * 109.36132983
		Else If secondUnit = "Nautical Miles" Then
			etCon2.Text = etCon1.Text * 0.0539956803
		End If

	Else If firstUnit = "Decameters" Then
		If secondUnit = "Meters" Then
			etCon2.Text = etCon1.Text * 10
		Else If secondUnit = "Feet" Then
			etCon2.Text = etCon1.Text *32.80839895
		Else If secondUnit = "Kilometers" Then
			etCon2.Text = etCon1.Text * 0.01
		Else If secondUnit = "Inches" Then
			etCon2.Text = etCon1.Text * 393.700784
		Else If secondUnit = "Centimeters" Then
			etCon2.Text = etCon1.Text * 1000
		Else If secondUnit = "Micrometers" Then
			etCon2.Text = etCon1.Text * 10000000
		Else If secondUnit = "Nanometers" Then
			etCon2.Text = etCon1.Text * 10000000000
		Else If secondUnit = "Decimeters" Then
			etCon2.Text = etCon1.Text * 100
		Else If secondUnit = "Millimeters" Then
			etCon2.Text = etCon1.Text * 10000
		Else If secondUnit = "Hectometers" Then
			etCon2.Text = etCon1.Text * 0.1
		Else If secondUnit = "Miles" Then
			etCon2.Text = etCon1.Text * 0.0062137119
		Else If secondUnit = "Yards" Then
			etCon2.Text = etCon1.Text * 10.936132983
		Else If secondUnit = "Nautical Miles" Then
			etCon2.Text = etCon1.Text * 0.005399568
		End If

	Else If firstUnit = "Miles" Then
		If secondUnit = "Meters" Then
			etCon2.Text = etCon1.Text * 1609.344
		Else If secondUnit = "Feet" Then
			etCon2.Text = etCon1.Text * 5280
		Else If secondUnit = "Kilometers" Then
			etCon2.Text = etCon1.Text * 1.609344
		Else If secondUnit = "Inches" Then
			etCon2.Text = etCon1.Text * 63360
		Else If secondUnit = "Centimeters" Then
			etCon2.Text = etCon1.Text * 1609344
		Else If secondUnit = "Micrometers" Then
			etCon2.Text = etCon1.Text * 1609344000
		Else If secondUnit = "Nanometers" Then
			etCon2.Text = etCon1.Text * 1609344000000
		Else If secondUnit = "Decimeters" Then
			etCon2.Text = etCon1.Text * 16093.44
		Else If secondUnit = "Millimeters" Then
			etCon2.Text = etCon1.Text * 1609344
		Else If secondUnit = "Decameters" Then
			etCon2.Text = etCon1.Text * 160.9344
		Else If secondUnit = "Hectometers" Then
			etCon2.Text = etCon1.Text * 16.09344
		Else If secondUnit = "Yards" Then
			etCon2.Text = etCon1.Text * 1760
		Else If secondUnit = "Nautical Miles" Then
			etCon2.Text = etCon1.Text * 0.868976
		End If

	Else If firstUnit = "Yards" Then
		If secondUnit = "Meters" Then
			etCon2.Text = etCon1.Text * 0.9144
		Else If secondUnit = "Feet" Then
			etCon2.Text = etCon1.Text * 3
		Else If secondUnit = "Kilometers" Then
			etCon2.Text = etCon1.Text * 0.0009144
		Else If secondUnit = "Inches" Then
			etCon2.Text = etCon1.Text * 36
		Else If secondUnit = "Centimeters" Then
			etCon2.Text = etCon1.Text * 91.44
		Else If secondUnit = "Micrometers" Then
			etCon2.Text = etCon1.Text * 914400
		Else If secondUnit = "Nanometers" Then
			etCon2.Text = etCon1.Text * 914400000
		Else If secondUnit = "Decimeters" Then
			etCon2.Text = etCon1.Text * 9.144
		Else If secondUnit = "Millimeters" Then
			etCon2.Text = etCon1.Text * 914.4
		Else If secondUnit = "Decameters" Then
			etCon2.Text = etCon1.Text * 0.09144
		Else If secondUnit = "Hectometers" Then
			etCon2.Text = etCon1.Text * 0.009144
		Else If secondUnit = "Miles" Then
			etCon2.Text = etCon1.Text / 1760
		Else If secondUnit = "Nautical Miles" Then
			etCon2.Text = etCon1.Text * 0.000493737
		End If


	Else If firstUnit = "Nautical Miles" Then
		If secondUnit = "Meters" Then
			etCon2.Text = etCon1.Text * 1852
		Else If secondUnit = "Feet" Then
			etCon2.Text = etCon1.Text * 6076.12
		Else If secondUnit = "Kilometers" Then
			etCon2.Text = etCon1.Text * 1.852
		Else If secondUnit = "Inches" Then
			etCon2.Text = etCon1.Text * 72913.4
		Else If secondUnit = "Centimeters" Then
			etCon2.Text = etCon1.Text * 185200
		Else If secondUnit = "Micrometers" Then
			etCon2.Text = etCon1.Text * 1852000000
		Else If secondUnit = "Nanometers" Then
			etCon2.Text = etCon1.Text * 1852000000000
		Else If secondUnit = "Decimeters" Then
			etCon2.Text = etCon1.Text * 18520
		Else If secondUnit = "Millimeters" Then
			etCon2.Text = etCon1.Text * 1852000
		Else If secondUnit = "Decameters" Then
			etCon2.Text = etCon1.Text * 185.2
		Else If secondUnit = "Hectometers" Then
			etCon2.Text = etCon1.Text * 18.52
		Else If secondUnit = "Yards" Then
			etCon2.Text = etCon1.Text * 2025.37
		Else If secondUnit = "Miles" Then
			etCon2.Text = etCon1.Text * 1.15078
		End If

	End If
	
End Sub

Private Sub btHome_Click
	
	StartActivity(Main)
	
End Sub

