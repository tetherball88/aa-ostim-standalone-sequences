Scriptname AmorousAdvElisifQstUtil extends Quest


;========[ Faction Functions ]=====================

Function MyNewLover(actor aLover)
	aLover.AddToFaction(AmorAdvLoverFaction)
	aLover.SetFactionRank(AmorAdvLoverFaction, 1)
EndFunction

;========[ Animation Functions ]=====================
Function AnimateAmorousAdvLoveScene1 (actor aLover)

    ;---| STORYBOARD DISPLAY
    Debug.Trace("AnimateMyLover: Cowgirl ")
    If(AmorousAdvUseBlackScreens.GetValue() == 1)
        Game.FadeOutGame(false, true, 5.0, 5.0)
        AmorousAdvStoryBoard1.Show()
    EndIf

;---| BEGIN ANIMATION CODE |------


    ;--| This is a special scene. 
    ;--|  In SexLab player is naked while Elisif wears a wedding dress
    ;--| Elisif in dress rides player cowgirl


;---| END ANIMATION CODE |------

EndFunction

Function AnimateAmorousAdvLoveScene2 (actor aLover)

    ;---| STORYBOARD DISPLAY
    Debug.Trace("Amorous Adventures: AnimateMyLover: Elisif ")
    If(AmorousAdvUseBlackScreens.GetValue() == 1)
        Game.FadeOutGame(false, true, 5.0, 5.0)
        AmorousAdvStoryBoard2.Show()
    EndIf

;---| BEGIN ANIMATION CODE |------


    ;--| elisif and player make love


;---| END ANIMATION CODE |------

EndFunction

;--SEXLAB SPECIFIC
Message Property SexOptsFems  Auto  

;--FACTIONS
Faction Property AmorAdvLoverFaction Auto

;--FADE TO BLACK STORYBOARDS
Message Property AmorousAdvStoryBoard1 Auto  ;--| AmorousAdvSexMsgElisifCursed
Message Property AmorousAdvStoryBoard2 Auto  ;--| AmorousAdvSexMsgElisifEnd
GlobalVariable Property AmorousAdvUseBlackScreens Auto

;--ACTORS
Actor Property PlayerRef Auto
