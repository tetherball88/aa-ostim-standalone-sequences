Scriptname AmorousAdvLoverDialogueLydiaQstUtil extends Quest  


Function LoverCommented()
	;---control how often comments about are heard
	float DaysUntilNextAllowed = 0.04  ;about 1 "game hour" expressed in GameDaysPassed

	int d8 = Utility.RandomInt(1,8)
	If (d8 == 1 )	
		DaysUntilNextAllowed = 0.12
	ElseIf (d8 == 2 )
		DaysUntilNextAllowed = 0.12
	ElseIf (d8 == 3 )
		DaysUntilNextAllowed = 0.12
	ElseIf (d8 == 4 )
		DaysUntilNextAllowed = 0.12
	ElseIf (d8 == 5 )
		DaysUntilNextAllowed = 0.16
	ElseIf (d8 == 6 )
		DaysUntilNextAllowed = 0.16
	ElseIf (d8 == 7 )
		DaysUntilNextAllowed = 0.16
	ElseIf (d8 == 8 )
		DaysUntilNextAllowed = 0.16
	Else
		DaysUntilNextAllowed = 0.08
	EndIf

	float NextAllowed = GameDaysPassed.GetValue() + DaysUntilNextAllowed
	;debug.trace("AmorousAdvMyLoversDialogueTimer Commented() rolled: [" + d8 + "] set next comment to: " + NextAllowed)
	;debug.trace("---- AmorousAdvLoversCommentNextFET to " + NextAllowed + " GameDaysPassed " + GameDaysPassed.GetValue())
	AmorousAdvLoversCommentNextFET.SetValue(NextAllowed)

EndFunction  

Function updateAmorousAdvLoverTimer()

	float DaysUntilNextAllowed = 5.00  ;three and half days expressed in GameDaysPassed
	;float DaysUntilNextAllowed = 0.04 
	float NextAllowed = GameDaysPassed.GetValue() + DaysUntilNextAllowed
	;debug.trace("AmorousAdvSeranaHungerTimer set to " + NextAllowed + " GameDaysPassed " + GameDaysPassed.GetValue())
	AmorousAdvLoverTimer.SetValue(NextAllowed)

EndFunction  

GlobalVariable Property GameDaysPassed Auto
GlobalVariable Property AmorousAdvLoversCommentNextFET auto
GlobalVariable Property AmorousAdvLoverTimer Auto  ;--|  AmorousAdvLydiaHungerTimer
