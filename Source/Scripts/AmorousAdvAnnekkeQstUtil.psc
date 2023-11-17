Scriptname AmorousAdvAnnekkeQstUtil extends Quest


;========[ Faction Functions ]=====================

Function MyNewLover(actor aLover)
	aLover.AddToFaction(AmorAdvLoverFaction)
	aLover.SetFactionRank(AmorAdvLoverFaction, 1)
EndFunction

;========[ Animation Functions ]=====================
Function AnimateAmorousAdvLoveScene1 (actor aLover)

    ;---| STORYBOARD DISPLAY
    ;---| ANNEKKE FINAL
    Debug.Trace("Amorous Adventures: AnimateMyLover: Annekke ")
    If(AmorousAdvUseBlackScreens.GetValue() == 1)
        Game.FadeOutGame(false, true, 5.0, 5.0)
        AmorousAdvStoryBoard1.Show()
    EndIf

;---| BEGIN ANIMATION CODE |------


    ;--| love scene with Annekke in Temple of Dibella


;---| END ANIMATION CODE |------

EndFunction


;--SEXLAB SPECIFIC
Message Property SexOptsFems  Auto

;--FACTIONS
Faction Property AmorAdvLoverFaction Auto

;--FADE TO BLACK STORYBOARDS
Message Property AmorousAdvStoryBoard1 Auto
GlobalVariable Property AmorousAdvUseBlackScreens Auto

;--ACTORS
Actor Property PlayerRef Auto





