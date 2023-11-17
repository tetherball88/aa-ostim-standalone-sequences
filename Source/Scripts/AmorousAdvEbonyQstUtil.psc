Scriptname AmorousAdvEbonyQstUtil extends Quest  

;========[ Faction Functions ]=====================

Function MyNewLover(actor aLover)
	aLover.AddToFaction(AmorAdvLoverFaction)
	aLover.SetFactionRank(AmorAdvLoverFaction, 1)
EndFunction

;========[ Animation Functions ]=====================

Function AnimateAmorousAdvLoveScene1 (actor aLover)

    ;---| STORYBOARD DISPLAY
    ;---| BORGAKH First Love Scene - shrine of Malacath
    Debug.Trace("Amorous Adventures: AnimateMyLover: Borgakh ")
    If(AmorousAdvUseBlackScreens.GetValue() == 1)
        Game.FadeOutGame(false, true, 5.0, 5.0)
        AmorousAdvStoryBoard1.Show()
    EndIf


;---| BEGIN ANIMATION CODE |------


    ;--| Player and Borgakh love scene


;---| END ANIMATION CODE |------

EndFunction


Function AnimateAmorousAdvLoveScene2 (actor aLover)

    ;---| STORYBOARD DISPLAY
    ;---| BORGAKH END KISS
    Debug.Trace("AnimateMyLover: Borgakh Kiss ")

    If(AmorousAdvUseBlackScreens.GetValue() == 1)
        Game.FadeOutGame(false, true, 5.0, 5.0)
        AmorousAdvStoryBoard2.Show()
    EndIf

;---| BEGIN ANIMATION CODE |------


    ;--| This should be a kissing scene only



;---| END ANIMATION CODE |------

EndFunction



;--SEXLAB SPECIFIC
Message Property SexOptsFems  Auto

;--FACTIONS
Faction Property AmorAdvLoverFaction Auto

;--FADE TO BLACK STORYBOARDS
Message Property AmorousAdvStoryBoard1 Auto ;--| AmorousAdvSexMsgBorgakhLover1
Message Property AmorousAdvStoryBoard2 Auto ;--| AmorousAdvSexMsgBorgakhKiss1
GlobalVariable Property AmorousAdvUseBlackScreens Auto

;--ACTORS
Actor Property PlayerRef Auto



