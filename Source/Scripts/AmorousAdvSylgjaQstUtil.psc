Scriptname AmorousAdvSylgjaQstUtil extends Quest

;========[ Faction Functions ]=====================

Function MyNewLover(actor aLover)
	aLover.AddToFaction(AmorAdvLoverFaction)
	aLover.SetFactionRank(AmorAdvLoverFaction, 1)
EndFunction

;========[ Animation Functions ]=====================
Function AnimateAmorousAdvLoveScene1 (actor aLover, actor bLover)

    ;---| STORYBOARD DISPLAY
    Debug.Trace("AnimateMyLover: Sylgja ")
    If(AmorousAdvUseBlackScreens.GetValue() == 1)
        AmorousAdvStoryBoard1.Show()
    EndIf

;---| BEGIN ANIMATION CODE |------

    ;--| Threesome with player
    ;--| aLover = Annekke
    ;--| bLover = Sylgja
    ;--| OSex doesn't handle threesomes
    Util.StartUniqueSequence(PlayerRef, bLover, "amor_sylgja_annekke_sylgjas_house_threesome_doublebed", "doublebed", aLover)
;---| END ANIMATION CODE |------

EndFunction

;--FACTIONS
Faction Property AmorAdvLoverFaction Auto

;--FADE TO BLACK STORYBOARDS
Message Property AmorousAdvStoryBoard1 Auto  ;--| AmorousAdvSexMsgSylgjaEnd 
GlobalVariable Property AmorousAdvUseBlackScreens Auto

;--ACTORS
Actor Property PlayerRef Auto

AmorousAdvUtil Property Util Auto
