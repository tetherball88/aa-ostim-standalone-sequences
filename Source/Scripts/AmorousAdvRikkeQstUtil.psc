Scriptname AmorousAdvRikkeQstUtil extends Quest  

;========[ Faction Functions ]=====================

Function MyNewLover(actor aLover)
	aLover.AddToFaction(AmorAdvLoverFaction)
	aLover.SetFactionRank(AmorAdvLoverFaction, 1)
EndFunction

;========[ Animation Functions ]=====================
Function AnimateAmorousAdvLoveScene1 (actor aLover)

    ;---| STORYBOARD DISPLAY
    ;---| RIKKE KISS
    Debug.Trace("AnimateMyLover: Rikke Kiss ")
    If(AmorousAdvUseBlackScreens.GetValue() == 1)
        AmorousAdvStoryBoard1.Show()
    EndIf 

;---| BEGIN ANIMATION CODE |------

    ;--| Player kisses Rikke.  This is a Kissing Scene Only
    Util.StartKissingScene(PlayerRef, aLover)

	
	
;---| END ANIMATION CODE |------

EndFunction

Function AnimateAmorousAdvLoveScene2 (actor aLover)

    ;---| STORYBOARD DISPLAY
    ;---| RIKKE Second Love Scene 
    Debug.Trace("Amorous Adventures: AnimateMyLover: Rikke ")

    If(AmorousAdvUseBlackScreens.GetValue() == 1)
        AmorousAdvStoryBoard2.Show()
    EndIf

;---| BEGIN ANIMATION CODE |------

    ;--| Player and Rikke make love
    Util.StartNomalScene(PlayerRef, aLover)

	
;---| END ANIMATION CODE |------

EndFunction

;--FACTIONS
Faction Property AmorAdvLoverFaction Auto

;--FADE TO BLACK STORYBOARDS
Message Property AmorousAdvStoryBoard1 Auto  ;--| AmorousAdvSexMsgRikkeKiss
Message Property AmorousAdvStoryBoard2 Auto  ;--| AmorousAdvSexMsgRikkeEnd
GlobalVariable Property AmorousAdvUseBlackScreens Auto

;--ACTORS
Actor Property PlayerRef Auto

AmorousAdvUtil Property Util Auto
