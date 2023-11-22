Scriptname AmorousAdvNjadaQstUtil extends Quest

;========[ Faction Functions ]=====================

Function MyNewLover(actor aLover)
	aLover.AddToFaction(AmorAdvLoverFaction)
	aLover.SetFactionRank(AmorAdvLoverFaction, 1)
EndFunction

;========[ Special Functions ]=====================
; call this to initiate brawl quest through story manager
Function Brawl(Actor pTarget, Actor pTargetFriend = None)
	debug.trace("Amorous Adventures Njada Brawl: " + pTarget + ", friend=" + pTargetFriend)
	BrawlKeyword.SendStoryEvent(None, pTarget, pTargetFriend)
endFunction

;========[ Animation Functions ]=====================
Function AnimateAmorousAdvLoveScene1 (actor aLover)

    ;---| STORYBOARD DISPLAY
    Debug.Trace("Amorous Adventures: AnimateMyLover: Njada ")

    If(AmorousAdvUseBlackScreens.GetValue() == 1)
        AmorousAdvStoryBoard1.Show()
    EndIf

;---| BEGIN ANIMATION CODE |------

    ;--| player and Njada make love
    Util.StartNomalScene(PlayerRef, aLover)

;---| END ANIMATION CODE |------

EndFunction

;--FACTIONS
Faction Property AmorAdvLoverFaction Auto

;--FADE TO BLACK STORYBOARDS
Message Property AmorousAdvStoryBoard1 Auto ;--| AmorousAdvSexMsgNjadaEnd
GlobalVariable Property AmorousAdvUseBlackScreens Auto

;--ACTORS
Actor Property PlayerRef Auto

;--BRAWL
Keyword Property BrawlKeyword  Auto  

AmorousAdvUtil Property Util Auto
