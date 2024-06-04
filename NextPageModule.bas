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

	Private btArea As Button
	Private btBack As Button
	Private btCurrency As Button
	Private btEnergy As Button
	Private btPower As Button
	Private btTime As Button
End Sub

Sub Activity_Create(FirstTime As Boolean)
	'Do not forget to load the layout file created with the visual designer. For example:
	Activity.LoadLayout("NextPageLayout")

End Sub

Sub Activity_Resume

End Sub

Sub Activity_Pause (UserClosed As Boolean)

End Sub


Private Sub btTime_Click
	
	StartActivity(TimeModule)
	
End Sub

Private Sub btPower_Click
	
	StartActivity(PowerModule)
	
End Sub

Private Sub btEnergy_Click
	
	StartActivity(EnergyModule)
	
End Sub

Private Sub btCurrency_Click
	
	StartActivity(CurrencyModule)
	
End Sub

Private Sub btBack_Click
	
	StartActivity(Main)
	
End Sub

Private Sub btArea_Click
	
	StartActivity(AreaModule)
	
End Sub