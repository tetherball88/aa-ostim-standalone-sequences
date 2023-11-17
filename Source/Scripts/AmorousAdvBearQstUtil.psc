Scriptname AmorousAdvBearQstUtil extends Quest  

;========[ Faction Functions ]=====================

Function MyNewLover(actor aLover)
	aLover.AddToFaction(AmorAdvLoverFaction)
	aLover.SetFactionRank(AmorAdvLoverFaction, 1)
EndFunction

;========[ Animation Functions ]=====================

Function AnimateAmorousAdvLoveScene1 (actor aLover)

    ;---| STORYBOARD DISPLAY
    ;---| TEMBA First Love Scene 
    Debug.Trace("Amorous Adventures: AnimateMyLover: Temba ")
    If(AmorousAdvUseBlackScreens.GetValue() == 1)
        Game.FadeOutGame(false, true, 5.0, 5.0)
        AmorousAdvStoryBoard1.Show()
    EndIf

;---| BEGIN ANIMATION CODE |------



    ;--| Banging Temba behind Ivarstead Inn



;---| END ANIMATION CODE |------

EndFunction

Function AnimateAmorousAdvLoveScene2 (actor aLover)

    ;---| STORYBOARD DISPLAY
    ;---| RIA
    Debug.Trace("AnimateMyLover: Ria Kiss ")
    If(AmorousAdvUseBlackScreens.GetValue() == 1)
        Game.FadeOutGame(false, true, 5.0, 5.0)
        AmorousAdvStoryBoard2.Show()
    EndIf

;---| BEGIN ANIMATION CODE |------


        ;--| A romantic kiss only


;---| END ANIMATION CODE |------

EndFunction

Function AnimateAmorousAdvLoveScene3 (actor aLover, actor bLover)

    ;---| STORYBOARD DISPLAY
    ;---| RIA AND LYNLY KISSING
    Debug.Trace("AnimateMyLover: Ria Lynly Kiss ")
    If(AmorousAdvUseBlackScreens.GetValue() == 1)
        Game.FadeOutGame(false, true, 5.0, 5.0)
        AmorousAdvStoryBoard3.Show()
    EndIf

;---| BEGIN ANIMATION CODE |------



     ;---| Lynly and Ria kiss each other, only a kiss ... player watches
     ;---| OSex doesn't handle a scene with two NPC's kissing



;---| END ANIMATION CODE |------

EndFunction

Function AnimateAmorousAdvLoveScene4 (actor aLover, actor bLover)

    ;---| STORYBOARD DISPLAY
	Debug.Trace("AnimateMyLover: Ria and Lynly")
    If(AmorousAdvUseBlackScreens.GetValue() == 1)
        Game.FadeOutGame(false, true, 5.0, 5.0)
        AmorousAdvStoryBoard4.Show()
    EndIf

;---| BEGIN ANIMATION CODE |------

    ;--| Threesome with player
    ;--| aLover = Lynly
    ;--| bLover = Ria
    ;--| OSex has no threesome functionality, use Lynly



;---| END ANIMATION CODE |------

EndFunction

Function AnimateAmorousAdvLoveScene5 (actor aLover)

    ;---| STORYBOARD DISPLAY
    ;---| TEMBA First Love Scene 
    Debug.Trace("Amorous Adventures: AnimateMyLover: Ria ")
    If(AmorousAdvUseBlackScreens.GetValue() == 1)
        Game.FadeOutGame(false, true, 5.0, 5.0)
        AmorousAdvStoryBoard5.Show()
    EndIf

;---| BEGIN ANIMATION CODE |------


    ;--| Final scene - make love with Ria


;---| END ANIMATION CODE |------

EndFunction


;--SEXLAB SPECIFIC
Message Property SexOptsFems  Auto

;--FACTIONS
Faction Property AmorAdvLoverFaction Auto

;--FADE TO BLACK STORYBOARDS
Message Property AmorousAdvStoryBoard1 Auto ;--| AmorousAdvSexMsgTembaLover1
Message Property AmorousAdvStoryBoard2 Auto ;--| AmorousAdvSexMsgRiaKiss1
Message Property AmorousAdvStoryBoard3 Auto ;--| AmorousAdvSexMsgRiaLynlyKiss
Message Property AmorousAdvStoryBoard4 Auto ;--| AmorousAdvSexMsgRiaLynlyLovers
Message Property AmorousAdvStoryBoard5 Auto ;--| AmorousAdvSexMsgRiaLover1
GlobalVariable Property AmorousAdvUseBlackScreens Auto

;--ACTORS
Actor Property PlayerRef Auto



