Scriptname AmorousAdvSteelQstUtil extends Quest

;========[ Faction Functions ]=====================

Function MyNewLover(actor aLover)
	aLover.AddToFaction(AmorAdvLoverFaction)
	aLover.SetFactionRank(AmorAdvLoverFaction, 1)
EndFunction

;========[ Animation Functions ]=====================
Function AnimateAmorousAdvLoveScene1 (actor aLover)

    ;---| STORYBOARD DISPLAY
    Debug.Trace("AnimateMyLover: Kiss Lydia")
    If(AmorousAdvUseBlackScreens.GetValue() == 1)
        AmorousAdvStoryBoard1.Show()
    EndIf

;---| BEGIN ANIMATION CODE |------

    ;--| Should be Kissing with Lydia only.
    Util.StartKissingScene(PlayerRef, aLover)

;---| END ANIMATION CODE |------

EndFunction

Function AnimateAmorousAdvLoveScene2 (actor aLover)

    ;---| STORYBOARD DISPLAY
    Debug.Trace("AnimateMyLover: Lydia ")
    If(AmorousAdvUseBlackScreens.GetValue() == 1)
        AmorousAdvStoryBoard2.Show()
    EndIf

;---| BEGIN ANIMATION CODE |------

    ;--| player and Lydia make love
    Util.StartNomalScene(PlayerRef, aLover)

;---| END ANIMATION CODE |------

EndFunction

Function AnimateAmorousAdvLoveScene3 (actor aLover, actor bLover)

;---| BEGIN ANIMATION CODE |------
    Debug.Trace("Amorous Adventures: AnimateMyLover: Adrianne and Lydia ")
    ;--- No Fade
    ;--- No Message

    ;--| Adrianne and Lydia make love
    Util.StartThreesomeScene(PlayerRef, aLover, bLover)

;---| END ANIMATION CODE |------

EndFunction

;--FACTIONS
Faction Property AmorAdvLoverFaction Auto

;--FADE TO BLACK STORYBOARDS
Message Property AmorousAdvStoryBoard1 Auto  ;--| AmorousAdvSexMsgLydiaKiss1
Message Property AmorousAdvStoryBoard2 Auto  ;--| AmorousAdvSexMsgLydiaUnclothed
GlobalVariable Property AmorousAdvUseBlackScreens Auto

;--ACTORS
Actor Property PlayerRef Auto

AmorousAdvUtil Property Util Auto
