Scriptname AmorousAdvDLC1_HungerQstUtil extends Quest

;---control how often Serana gets hungry
Function FeedingSerana()

	float DaysUntilNextAllowed = 2.00  ;two days expressed in GameDaysPassed

	int d8 = Utility.RandomInt(1,8)
	If (d8 == 1 )	
		DaysUntilNextAllowed = 2.00
	ElseIf (d8 == 2 )
		DaysUntilNextAllowed = 1.48
	ElseIf (d8 == 3 )
		DaysUntilNextAllowed = 1.00
	ElseIf (d8 == 4 )
		DaysUntilNextAllowed = 2.00
	ElseIf (d8 == 5 )
		DaysUntilNextAllowed = 1.48
	ElseIf (d8 == 6 )
		DaysUntilNextAllowed = 1.28
	ElseIf (d8 == 7 )
		DaysUntilNextAllowed = 1.28
	ElseIf (d8 == 8 )
		DaysUntilNextAllowed = 1.00
	Else
		DaysUntilNextAllowed = 2.08
	EndIf

	float NextAllowed = GameDaysPassed.GetValue() + DaysUntilNextAllowed
	;debug.trace("AmorousAdvSeranaHungerTimer set to " + NextAllowed + " GameDaysPassed " + GameDaysPassed.GetValue())
	AmorousAdvSeranaHungerTimer.SetValue(NextAllowed)

EndFunction  

;========[ Animation Functions ]=====================
Function AnimateAmorousAdvLoveScene1 (actor aLover)

    ;---| STORYBOARD DISPLAY
    Debug.Trace("Amorous Adventures: AnimateMyLover: Hungry Serana ")
    If(AmorousAdvUseBlackScreens.GetValue() == 1)
        AmorousAdvStoryBoard1.Show()
    EndIf

;---| BEGIN ANIMATION CODE |------

    ;--| Player and Serana make love
	Util.StartNomalScene(PlayerRef, aLover)

;---| END ANIMATION CODE |------

EndFunction

;--TIME
GlobalVariable Property GameDaysPassed Auto
GlobalVariable Property AmorousAdvSeranaHungerTimer Auto

;--SEXLAB

;--FADE TO BLACK STORYBOARDS
Message Property AmorousAdvStoryBoard1 Auto ;--| AmorousAdvSexMsgSeranaDLC1_Hunger
GlobalVariable Property AmorousAdvUseBlackScreens Auto

;--ACTORS
Actor Property PlayerRef Auto

AmorousAdvUtil Property Util Auto
