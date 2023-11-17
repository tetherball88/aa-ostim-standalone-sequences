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
        Game.FadeOutGame(false, true, 5.0, 5.0)
        AmorousAdvStoryBoard1.Show()
    EndIf

;---| BEGIN ANIMATION CODE |------


    ;--| stealing a kiss from Jenassa - kiss only
    ;--| skip for OSex



;---| END ANIMATION CODE |------

EndFunction

Function AnimateAmorousAdvLoveScene2 (actor aLover)

    ;---| STORYBOARD DISPLAY
    Debug.Trace("AnimateMyLover: Jenassa White River ")
    If(AmorousAdvUseBlackScreens.GetValue() == 1)
        Game.FadeOutGame(false, true, 5.0, 5.0)
        AmorousAdvStoryBoard2.Show()
    EndIf

;---| BEGIN ANIMATION CODE |------


    ;--| player and Jenassa make love


;---| END ANIMATION CODE |------

EndFunction

Function AnimateAmorousAdvLoveScene3 (actor aLover)

    ;---| STORYBOARD DISPLAY
    Debug.Trace("AnimateMyLover: Jenassa Second Kiss ")
    If(AmorousAdvUseBlackScreens.GetValue() == 1)
        Game.FadeOutGame(false, true, 5.0, 5.0)
        AmorousAdvStoryBoard3.Show()
    EndIf


;---| BEGIN ANIMATION CODE |------


    ;--| Should be a Kiss Scene only
    ;--| Skip for OSex


;---| END ANIMATION CODE |------

EndFunction

Function AnimateAmorousAdvLoveScene4 (actor aLover)

    ;---| STORYBOARD DISPLAY
    Debug.Trace("AnimateMyLover: Jenassa Finale ")
    If(AmorousAdvUseBlackScreens.GetValue() == 1)
        Game.FadeOutGame(false, true, 5.0, 5.0)
        AmorousAdvStoryBoard4.Show()
    EndIf

;---| BEGIN ANIMATION CODE |------


    ;--| player and Jenassa make love


;---| END ANIMATION CODE |------

EndFunction

Function AnimateAmorousAdvLoveScene5 (actor aLover, actor bLover)

    ;---| STORYBOARD DISPLAY
    Debug.Trace("AnimateMyLover: Jenassa and Adelaisa")
    If(AmorousAdvUseBlackScreens.GetValue() == 1)
        Game.FadeOutGame(false, true, 5.0, 5.0)
       AmorousAdvStoryBoard5.Show()
    EndIf

;---| BEGIN ANIMATION CODE |------

    ;--| A Threesome! - OSex doesn't handle threesomes
    ;--| aLover = Jenassa
    ;--| bLover = Adelaisa
    ;--| Use Jenassa for OSex



;---| END ANIMATION CODE |------

EndFunction


;--SEXLAB SPECIFIC
Message Property SexOptsFems  Auto  

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

