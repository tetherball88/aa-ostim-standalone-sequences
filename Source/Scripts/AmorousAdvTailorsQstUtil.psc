Scriptname AmorousAdvTailorsQstUtil extends Quest  Conditional

;========[ Faction Functions ]=====================

Function MyNewLover(actor aLover)
	aLover.AddToFaction(AmorAdvLoverFaction)
	aLover.SetFactionRank(AmorAdvLoverFaction, 1)
EndFunction

;========[ Animation Functions ]=====================
Function AnimateAmorousAdvLoveScene1 (actor aLover)
;-- Endarie from Stage 28

    ;---| STORYBOARD DISPLAY
    Debug.Trace("Amorous Adventures: AnimateMyLover: Endarie ")
    If(AmorousAdvUseBlackScreens.GetValue() == 1)
        AmorousAdvStoryBoard1.Show()
    EndIf

;---| BEGIN ANIMATION CODE |------

    ;--| Sex scene with Endarie. a 69 in SexLab
    Util.StartOral69Scene(PlayerRef, aLover)

;---| END ANIMATION CODE |------

EndFunction

Function AnimateAmorousAdvLoveScene2 (actor aLover, actor bLover)
;-- Jordis and Lydia from stage 55

    ;---| STORYBOARD DISPLAY
    Debug.Trace("Amorous Adventures: AnimateMyLover: Lydia and Jordis ")
    If(AmorousAdvUseBlackScreens.GetValue() == 1)
        AmorousAdvStoryBoard2.Show()
    EndIf

;---| BEGIN ANIMATION CODE |------

    ;--| A Threesome! - OSex doesn't handle threesomes
    ;--| aLover = Jordis
    ;--| bLover = Lydia
    ;--| ... Skip for OSex
    Util.StartThreesomeScene(PlayerRef, aLover, bLover)

;---| END ANIMATION CODE |------

EndFunction

Function AnimateAmorousAdvLoveScene3 (actor aLover)
; -- Jordis from stage 60

    ;---| STORYBOARD DISPLAY
    Debug.Trace("Amorous Adventures: AnimateMyLover: Jordis ")
    If(AmorousAdvUseBlackScreens.GetValue() == 1)
        AmorousAdvStoryBoard3.Show()
    EndIf

;---| BEGIN ANIMATION CODE |------

    ;--| Player and Jordis make love
    Util.StartNomalScene(PlayerRef, aLover)

;---| END ANIMATION CODE |------

EndFunction

Function AnimateAmorousAdvLoveScene4 (actor aLover, actor bLover)
;-- Endarie and Jordis from Stage 65

    ;---| STORYBOARD DISPLAY
    Debug.Trace("Amorous Adventures: AnimateMyLover: Endarie and Jordis ")
    If(AmorousAdvUseBlackScreens.GetValue() == 1)
        AmorousAdvStoryBoard4.Show()
    EndIf

;---| BEGIN ANIMATION CODE |------

    ;--| A Threesome! - OSex doesn't handle threesomes
    ;--| aLover = Jordis
    ;--| bLover = Endarie
    ;--| Use Endarie for OSex
    Util.StartThreesomeScene(PlayerRef, aLover, bLover)

;---| END ANIMATION CODE |------

EndFunction

;--FACTIONS
Faction Property AmorAdvLoverFaction Auto

;--FADE TO BLACK STORYBOARDS
Message Property AmorousAdvStoryBoard1 Auto  ;-| AmorousAdvSexMsgEndarieAngry
Message Property AmorousAdvStoryBoard2 Auto  ;-| AmorousAdvSexMsgJordisThreesome
Message Property AmorousAdvStoryBoard3 Auto  ;-| AmorousAdvSexMsgJordisEnd
Message Property AmorousAdvStoryBoard4 Auto  ;-| AmorousAdvSexMsgEndarieThreesome
GlobalVariable Property AmorousAdvUseBlackScreens Auto

;--ACTORS
Actor Property PlayerRef Auto

AmorousAdvUtil Property Util Auto
