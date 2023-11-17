Scriptname AmorousAdvLoverDialogueElisifQstUtil extends Quest  

Function updateAmorousAdvLoverTimer()

	float DaysUntilNextAllowed = 5.00  ;three and half days expressed in GameDaysPassed
	;float DaysUntilNextAllowed = 0.04 
	float NextAllowed = GameDaysPassed.GetValue() + DaysUntilNextAllowed
	;debug.trace("AmorousAdvSeranaHungerTimer set to " + NextAllowed + " GameDaysPassed " + GameDaysPassed.GetValue())
	AmorousAdvLoverTimer.SetValue(NextAllowed)

EndFunction

GlobalVariable Property GameDaysPassed Auto
GlobalVariable Property AmorousAdvLoverTimer Auto  ;--|  AmorousAdvElisifHungerTimer
