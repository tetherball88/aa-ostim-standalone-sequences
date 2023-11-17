Scriptname AmorousAdvPersuadesQstUtil extends Quest



;========[ Faction Functions ]=====================
Function MyNewLover(actor aLover)
	aLover.AddToFaction(AmorAdvLoverFaction)
	aLover.SetFactionRank(AmorAdvLoverFaction, 1)
EndFunction

;========[ Animation Functions ]=====================
Function AnimateAmorousAdvLoveScene1 (actor aLover)

    ;---| STORYBOARD DISPLAY
    Debug.Trace("AnimateMyLover: Persuades ")
    If(AmorousAdvUseBlackScreens.GetValue() == 1)
        AmorousAdvStoryBoard1.Show()
    EndIf


;---| BEGIN ANIMATION CODE |------


    ;--| Sex scene with whoever the NPC is


;---| END ANIMATION CODE |------

EndFunction


;--SEXLAB SPECIFIC
Message Property SexOptsFems  Auto  

;--FACTIONS
Faction Property AmorAdvLoverFaction Auto

;--FADE TO BLACK STORYBOARDS
Message Property AmorousAdvStoryBoard1 Auto  ;--| AmorAdvLoveHappensMSG
GlobalVariable Property AmorousAdvUseBlackScreens Auto

;--ACTORS
Actor Property PlayerRef Auto
