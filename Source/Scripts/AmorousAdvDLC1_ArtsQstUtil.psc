Scriptname AmorousAdvDLC1_ArtsQstUtil extends Quest

;========[ Faction Functions ]=====================

Function MyNewLover(actor aLover)
	aLover.AddToFaction(AmorAdvLoverFaction)
	aLover.SetFactionRank(AmorAdvLoverFaction, 1)
EndFunction

;========[ control how often Serana gets hungry ]=====================
Function FeedingInitialize()

	float DaysUntilNextAllowed = 1.20  ;days expressed in GameDaysPassed
	float NextAllowed = GameDaysPassed.GetValue() + DaysUntilNextAllowed
	;debug.trace("AmorousAdvSeranaHungerTimer set to " + NextAllowed + " GameDaysPassed " + GameDaysPassed.GetValue())
	AmorousAdvSeranaHungerTimer.SetValue(NextAllowed)

EndFunction

Function FeedingSerana()

	float DaysUntilNextAllowed = 2.00  ;two days expressed in GameDaysPassed

	int d8 = Utility.RandomInt(1,8)
	If (d8 == 1 )
		DaysUntilNextAllowed = 1.00
	ElseIf (d8 == 2 )
		DaysUntilNextAllowed = 1.00
	ElseIf (d8 == 3 )
		DaysUntilNextAllowed = 1.00
	ElseIf (d8 == 4 )
		DaysUntilNextAllowed = 1.00
	ElseIf (d8 == 5 )
		DaysUntilNextAllowed = 1.00
	ElseIf (d8 == 6 )
		DaysUntilNextAllowed = 1.00
	ElseIf (d8 == 7 )
		DaysUntilNextAllowed = 1.00
	ElseIf (d8 == 8 )
		DaysUntilNextAllowed = 1.00
	Else
		DaysUntilNextAllowed = 1.00
	EndIf

	float NextAllowed = GameDaysPassed.GetValue() + DaysUntilNextAllowed
	;debug.trace("AmorousAdvSeranaHungerTimer set to " + NextAllowed + " GameDaysPassed " + GameDaysPassed.GetValue())
	AmorousAdvSeranaHungerTimer.SetValue(NextAllowed)

EndFunction

;========[ Animation Functions ]=====================
Function AnimateAmorousAdvLoveScene1 (actor aLover)

    ;---| STORYBOARD DISPLAY
    Debug.Trace("AnimateMyLover: Kiss ")
    If(AmorousAdvUseBlackScreens.GetValue() == 1)
       AmorousAdvStoryBoard1.Show()
    EndIf

;---| BEGIN ANIMATION CODE |------

    ;--| Should be a kissing scene only
    Util.StartKissingScene(PlayerRef, aLover)

;---| END ANIMATION CODE |------

EndFunction

Function AnimateAmorousAdvLoveScene2 (actor aLover)

    ;---| STORYBOARD DISPLAY
    Debug.Trace("AnimateMyLover: Kiss ")
    If(AmorousAdvUseBlackScreens.GetValue() == 1)
        AmorousAdvStoryBoard2.Show()
    EndIf

;---| BEGIN ANIMATION CODE |------

    ;--| Should be a kissing scene only
    Util.StartKissingScene(PlayerRef, aLover)

;---| END ANIMATION CODE |------

EndFunction

Function AnimateAmorousAdvLoveScene3 (actor aLover)

    ;---| STORYBOARD DISPLAY
    Debug.Trace("AnimateMyLover: Serana Arts 1 ")
    If(AmorousAdvUseBlackScreens.GetValue() == 1)
       AmorousAdvStoryBoard3.Show()
    EndIf

;---| BEGIN ANIMATION CODE |------

    ;--| Serana masturbates solo.  Player watches.
    ;--| OStim/OpenSex doesn't handle an NPC solo masturbation scene
    ;--| So start a scene with both actors and have Serana masturbate
    ; Util.StartMasturbationScene(PlayerRef, aLover)

    ; OpenSex removed masturbation scenes for now
    ; Restore masturbation scenes when they are added back
    Util.StartNomalScene(PlayerRef, aLover)

;---| END ANIMATION CODE |------

EndFunction

Function AnimateAmorousAdvLoveScene4 (actor aLover)

    ;---| STORYBOARD DISPLAY
    Debug.Trace("AnimateMyLover: Serana Arts 2 ")
    If(AmorousAdvUseBlackScreens.GetValue() == 1)
        AmorousAdvStoryBoard4.Show()
    EndIf

;---| BEGIN ANIMATION CODE |------

    ;--| Serana performing Oral on player
    Util.StartOralScene(PlayerRef, aLover)

;---| END ANIMATION CODE |------

EndFunction

Function AnimateAmorousAdvLoveScene5 (actor aLover)

    ;---| STORYBOARD DISPLAY
    Debug.Trace("AnimateMyLover: Serana Arts 3 ")
    If(AmorousAdvUseBlackScreens.GetValue() == 1)
        AmorousAdvStoryBoard5.Show()
    EndIf

;---| BEGIN ANIMATION CODE |------

    ;--| Serana and player make love
    Util.StartNomalScene(PlayerRef, aLover)

;---| END ANIMATION CODE |------

EndFunction

Function AnimateAmorousAdvLoveScene6 (actor aLover)

    ;---| STORYBOARD DISPLAY
    Debug.Trace("AnimateMyLover: Serana Arts 4 ")
    If(AmorousAdvUseBlackScreens.GetValue() == 1)
        Game.FadeOutGame(false, true, 5.0, 10.0)
        AmorousAdvStoryBoard6.Show()
    EndIf

;---| BEGIN ANIMATION CODE |------

    ;--| Should be an anal only scene. Player gives Serana anal sex
    Util.StartAnalScene(PlayerRef, aLover)

;---| END ANIMATION CODE |------

EndFunction

;--TIME
GlobalVariable Property GameDaysPassed Auto
GlobalVariable Property AmorousAdvSeranaHungerTimer Auto

;--SEXLAB

;--FACTIONS
Faction Property AmorAdvLoverFaction Auto

;--FADE TO BLACK STORYBOARDS
Message Property AmorousAdvStoryBoard1 Auto ;--| AmorousAdvSexMsgSeranaDLC1_Arts1
Message Property AmorousAdvStoryBoard2 Auto ;--| AmorousAdvSexMsgSeranaDLC1_Arts2
Message Property AmorousAdvStoryBoard3 Auto ;--| AmorousAdvSexMsgSeranaDLC1_Arts3
Message Property AmorousAdvStoryBoard4 Auto ;--| AmorousAdvSexMsgSeranaDLC1_Arts4
Message Property AmorousAdvStoryBoard5 Auto ;--| AmorousAdvSexMsgSeranaDLC1_ArtsKiss1
Message Property AmorousAdvStoryBoard6 Auto ;--| AmorousAdvSexMsgSeranaDLC1_ArtsKiss2
GlobalVariable Property AmorousAdvUseBlackScreens Auto

;--ACTORS
Actor Property PlayerRef Auto

AmorousAdvUtil Property Util Auto
