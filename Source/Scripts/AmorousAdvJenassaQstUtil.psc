Scriptname AmorousAdvJenassaQstUtil extends Quest  Conditional

;========[ Faction Functions ]=====================
Function MyNewLover(actor aLover)
	aLover.AddToFaction(AmorAdvLoverFaction)
	aLover.SetFactionRank(AmorAdvLoverFaction, 1)
EndFunction

;========[ Animation Functions ]=====================
Function AnimateAmorousAdvLoveScene1 (actor aLover)

    ;---| STORYBOARD DISPLAY
    Debug.Trace("AnimateMyLover: Jenassa First Kiss ")
    If(AmorousAdvUseBlackScreens.GetValue() == 1)
        AmorousAdvStoryBoard1.Show()
    EndIf

;---| BEGIN ANIMATION CODE |------

    ;--| stealing a kiss from Jenassa - kiss only
    ;--| skip for OSex
    Util.StartKissingScene(PlayerRef, aLover)

;---| END ANIMATION CODE |------

EndFunction

Function AnimateAmorousAdvLoveScene2 (actor aLover)

    ;---| STORYBOARD DISPLAY
    Debug.Trace("AnimateMyLover: Jenassa White River ")
    If(AmorousAdvUseBlackScreens.GetValue() == 1)
        AmorousAdvStoryBoard2.Show()
    EndIf

;---| BEGIN ANIMATION CODE |------

    ;--| player and Jenassa make love
    Util.StartUniqueSequence(PlayerRef, aLover, "amor_jenassa_white_river_watch_regular_table", "tableleanmarker")

;---| END ANIMATION CODE |------

EndFunction

Function AnimateAmorousAdvLoveScene3 (actor aLover)

    ;---| STORYBOARD DISPLAY
    Debug.Trace("AnimateMyLover: Jenassa Second Kiss ")
    If(AmorousAdvUseBlackScreens.GetValue() == 1)
        AmorousAdvStoryBoard3.Show()
    EndIf

;---| BEGIN ANIMATION CODE |------

    ;--| Should be a Kiss Scene only
    ;--| Skip for OSex
    Util.StartKissingScene(PlayerRef, aLover)

;---| END ANIMATION CODE |------

EndFunction

Function AnimateAmorousAdvLoveScene4 (actor aLover)

    ;---| STORYBOARD DISPLAY
    Debug.Trace("AnimateMyLover: Jenassa Finale ")
    If(AmorousAdvUseBlackScreens.GetValue() == 1)
        AmorousAdvStoryBoard4.Show()
    EndIf

;---| BEGIN ANIMATION CODE |------

    ;--| player and Jenassa make love
    Util.StartUniqueSequence(PlayerRef, aLover, "amor_jenassa_east_empire_company_regular_bed", "bed")
;---| END ANIMATION CODE |------

EndFunction

Function AnimateAmorousAdvLoveScene5 (actor aLover, actor bLover)

    ;---| STORYBOARD DISPLAY
    Debug.Trace("AnimateMyLover: Jenassa and Adelaisa")
    If(AmorousAdvUseBlackScreens.GetValue() == 1)
       AmorousAdvStoryBoard5.Show()
    EndIf

;---| BEGIN ANIMATION CODE |------

    ;--| A Threesome! - OSex doesn't handle threesomes
    ;--| aLover = Jenassa
    ;--| bLover = Adelaisa
    ;--| Use Jenassa for OSex
    Util.StartUniqueSequence(PlayerRef, aLover, "amor_jenassa_adelaisa_east_empire_company_threesome_bed", "bed", bLover)

;---| END ANIMATION CODE |------

EndFunction

;--FACTIONS
Faction Property AmorAdvLoverFaction Auto

;--FADE TO BLACK STORYBOARDS
Message Property AmorousAdvStoryBoard1 Auto  ;--| AmorousAdvSexMsgJenassaKiss1
Message Property AmorousAdvStoryBoard2 Auto  ;--| AmorousAdvSexMsgJenassaWRW
Message Property AmorousAdvStoryBoard3 Auto  ;--| AmorousAdvSexMsgJenassaKiss2
Message Property AmorousAdvStoryBoard4 Auto  ;--| AmorousAdvSexMsgJenassaSolo
Message Property AmorousAdvStoryBoard5 Auto  ;--| AmorousAdvSexMsgJenassaThreesome
GlobalVariable Property AmorousAdvUseBlackScreens Auto

;--ACTORS
Actor Property PlayerRef Auto

AmorousAdvUtil Property Util Auto
